# 快速入门

执行本文档操作前确保已安装了针对鲲鹏优化的Zstd，详细安装步骤请参见《[安装指南](./installation_guide.md)》。

## 命令行压缩解压

1. 创建示例文件。

   ```bash
   echo "hello zstd on kunpeng" > sample.txt
   ```

2. 压缩文件为`.zst`格式。

   ```bash
   zstd sample.txt -o sample.txt.zst
   ```

3. 解压`.zst`文件。

   ```bash
   zstd -d sample.txt.zst -o sample.out
   ```

4. 校验解压结果。

   ```bash
   diff sample.txt sample.out
   ```

   如果`diff`命令无输出，表示压缩和解压结果一致。

## C接口块压缩解压示例

本节提供示例演示如何使用Zstd公开C接口完成一次性内存块压缩和解压。

1. 将以下示例保存为`quick_start.c`。

   ```c
   #include <stdio.h>
   #include <stdlib.h>
   #include <string.h>
   #include <zstd.h>
   
   int main(void)
   {
       const char* src = "hello zstd on kunpeng";
       size_t srcSize = strlen(src) + 1;
       int compressionLevel = 3;
   
       size_t bound = ZSTD_compressBound(srcSize);
       void* compressed = malloc(bound);
       if (compressed == NULL) {
           fprintf(stderr, "failed to allocate compressed buffer\n");
           return 1;
       }

       size_t compressedSize = ZSTD_compress(compressed, bound, src, srcSize, compressionLevel);
       if (ZSTD_isError(compressedSize)) {
           fprintf(stderr, "compress failed: %s\n", ZSTD_getErrorName(compressedSize));
           free(compressed);
           return 1;
       }

       unsigned long long contentSize = ZSTD_getFrameContentSize(compressed, compressedSize);
       if (contentSize == ZSTD_CONTENTSIZE_ERROR || contentSize == ZSTD_CONTENTSIZE_UNKNOWN) {
           fprintf(stderr, "failed to get frame content size\n");
           free(compressed);
           return 1;
       }

       void* decompressed = malloc((size_t)contentSize);
       if (decompressed == NULL) {
           fprintf(stderr, "failed to allocate decompressed buffer\n");
           free(compressed);
           return 1;
       }

       size_t decompressedSize = ZSTD_decompress(decompressed, (size_t)contentSize, compressed, compressedSize);
       if (ZSTD_isError(decompressedSize)) {
           fprintf(stderr, "decompress failed: %s\n", ZSTD_getErrorName(decompressedSize));
           free(decompressed);
           free(compressed);
           return 1;
       }

       printf("compressed size: %zu\n", compressedSize);
       printf("decompressed text: %s\n", (const char*)decompressed);

       free(decompressed);
       free(compressed);
       return 0;
   }
   ```

2. 使用如下命令编译和运行。

   ```bash
   cc quick_start.c -lzstd -o quick_start
   ./quick_start
   ```

3. 如果安装在自定义目录，可指定头文件和库路径。

   ```bash
   export ZSTD_INSTALL_DIR=/path/to/install/zstd
   cc quick_start.c \
      -I${ZSTD_INSTALL_DIR}/include \
      -L${ZSTD_INSTALL_DIR}/lib \
      -Wl,-rpath,${ZSTD_INSTALL_DIR}/lib \
      -lzstd \
      -o quick_start
   ./quick_start
   ```

## 流式压缩解压

当输入数据无法一次性放入内存，或需要从文件、网络、管道持续读取数据时，可使用Zstd流式接口。

* 流式压缩

  流式压缩常用步骤如下：

  1. 使用`ZSTD_createCCtx`创建压缩上下文。
  2. 准备`ZSTD_inBuffer`和`ZSTD_outBuffer`。
  3. 循环调用`ZSTD_compressStream2`，使用`ZSTD_e_continue`持续输入数据。
  4. 输入结束后继续调用`ZSTD_compressStream2`，使用`ZSTD_e_end`完成帧收尾，直到返回值为0。
  5. 使用`ZSTD_freeCCtx`释放上下文。

* 流式解压

  流式解压常用步骤如下：

  1. 使用`ZSTD_createDStream`创建解压流上下文。
  2. 准备`ZSTD_inBuffer`和`ZSTD_outBuffer`。
  3. 循环调用`ZSTD_decompressStream`消费压缩输入并输出解压数据。
  4. 当`ZSTD_decompressStream`返回0时，表示当前帧解压完成。
  5. 使用`ZSTD_freeDStream`释放上下文。
