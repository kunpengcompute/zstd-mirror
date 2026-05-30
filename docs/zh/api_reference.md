# API参考

## 函数说明

Zstd常见公开接口如[**表 1** Zstd核心接口列表](#zstd核心接口列表)所示。基于鲲鹏优化的Zstd不改变用户侧API，应用可继续使用Zstd原生公开C API。

**表 1** Zstd核心接口列表<a id="zstd核心接口列表"></a>

| 名称 | 说明 |
| -- | -- |
| `ZSTD_compress` | 将输入内存块压缩为单个Zstd帧。 |
| `ZSTD_decompress` | 将完整Zstd帧解压到输出缓冲区。 |
| `ZSTD_compressBound` | 计算单次压缩所需输出缓冲区上界。 |
| `ZSTD_getFrameContentSize` | 获取Zstd帧中记录的原始内容大小。 |
| `ZSTD_createCCtx` | 创建可复用压缩上下文。 |
| `ZSTD_freeCCtx` | 释放压缩上下文。 |
| `ZSTD_compressCCtx` | 使用显式压缩上下文执行块压缩。 |
| `ZSTD_createDCtx` | 创建可复用解压上下文。 |
| `ZSTD_freeDCtx` | 释放解压上下文。 |
| `ZSTD_decompressDCtx` | 使用显式解压上下文执行块解压。 |
| `ZSTD_compressStream2` | 使用流式接口执行压缩。 |
| `ZSTD_decompressStream` | 使用流式接口执行解压。 |
| `ZSTD_isError` | 判断接口返回值是否表示错误。 |
| `ZSTD_getErrorName` | 获取错误返回值对应的可读字符串。 |

## 块压缩解压

### ZSTD_compress

**函数功能**

将`src`中的连续内存数据压缩为单个Zstd帧，并写入调用方提供的`dst`缓冲区。

**函数定义**

```c
size_t ZSTD_compress(void* dst, size_t dstCapacity,
                     const void* src, size_t srcSize,
                     int compressionLevel);
```

**参数说明**

| 参数名 | 描述 | 取值范围 | 输入/输出 |
| -- | -- | -- | -- |
| `dst` | 输出缓冲区地址 | 有效指针 | 输出 |
| `dstCapacity` | 输出缓冲区容量 | 建议不小于`ZSTD_compressBound(srcSize)` | 输入 |
| `src` | 输入数据地址 | 有效指针 | 输入 |
| `srcSize` | 输入数据大小 | 非负整数 | 输入 |
| `compressionLevel` | 压缩等级 | 可通过`ZSTD_minCLevel`和`ZSTD_maxCLevel`查询范围 | 输入 |

**返回值**

返回写入`dst`的压缩数据大小；如果失败，返回错误码，可通过`ZSTD_isError`判断。

### ZSTD_decompress

**函数功能**

将完整Zstd帧解压到调用方提供的输出缓冲区。

**函数定义**

```c
size_t ZSTD_decompress(void* dst, size_t dstCapacity,
                       const void* src, size_t compressedSize);
```

**参数说明**

| 参数名 | 描述 | 取值范围 | 输入/输出 |
| -- | -- | -- | -- |
| `dst` | 解压输出缓冲区地址 | 有效指针 | 输出 |
| `dstCapacity` | 解压输出缓冲区容量 | 不小于原始数据大小 | 输入 |
| `src` | 压缩数据地址 | 有效指针 | 输入 |
| `compressedSize` | 压缩数据大小 | 必须是完整Zstd帧大小 | 输入 |

**返回值**

返回写入`dst`的解压数据大小；如果失败，返回错误码，可通过`ZSTD_isError`判断。

### ZSTD_compressBound

**函数功能**

计算`srcSize`大小的数据在单次压缩场景下可能需要的最大输出缓冲区大小。

**函数定义**

```c
size_t ZSTD_compressBound(size_t srcSize);
```

**参数说明**

| 参数名 | 描述 | 取值范围 | 输入/输出 |
| -- | -- | -- | -- |
| `srcSize` | 输入数据大小 | 非负整数 | 输入 |

**返回值**

返回压缩输出缓冲区大小上界；如果输入过大，返回值可能是错误码，可通过`ZSTD_isError`判断。

### ZSTD_getFrameContentSize

**函数功能**

从Zstd帧头读取原始内容大小，用于辅助分配解压输出缓冲区。

**函数定义**

```c
unsigned long long ZSTD_getFrameContentSize(const void* src, size_t srcSize);
```

**参数说明**

| 参数名 | 描述 | 取值范围 | 输入/输出 |
| -- | -- | -- | -- |
| `src` | Zstd帧起始地址 | 有效指针 | 输入 |
| `srcSize` | 可读取的压缩数据大小 | 至少包含帧头 | 输入 |

**返回值**

返回原始内容大小；返回`ZSTD_CONTENTSIZE_UNKNOWN`表示帧中未记录原始大小；返回`ZSTD_CONTENTSIZE_ERROR`表示输入不是有效Zstd帧或数据不足。

## 上下文复用

### ZSTD_createCCtx

**函数功能**

创建压缩上下文。高频压缩场景建议复用上下文，减少重复分配开销。

**函数定义**

```c
ZSTD_CCtx* ZSTD_createCCtx(void);
```

**参数说明**

无。

**返回值**

返回压缩上下文指针；失败时返回`NULL`。

### ZSTD_freeCCtx

**函数功能**

释放压缩上下文。

**函数定义**

```c
size_t ZSTD_freeCCtx(ZSTD_CCtx* cctx);
```

**参数说明**

| 参数名 | 描述 | 取值范围 | 输入/输出 |
| -- | -- | -- | -- |
| `cctx` | 压缩上下文指针 | 可为`NULL` | 输入 |

**返回值**

返回0或错误码，可通过`ZSTD_isError`判断。

### ZSTD_compressCCtx

**函数功能**

使用显式压缩上下文执行块压缩。

**函数定义**

```c
size_t ZSTD_compressCCtx(ZSTD_CCtx* cctx,
                         void* dst, size_t dstCapacity,
                         const void* src, size_t srcSize,
                         int compressionLevel);
```

**参数说明**

| 参数名 | 描述 | 取值范围 | 输入/输出 |
| -- | -- | -- | -- |
| `cctx` | 压缩上下文指针 | 有效指针 | 输入/输出 |
| `dst` | 输出缓冲区地址 | 有效指针 | 输出 |
| `dstCapacity` | 输出缓冲区容量 | 建议不小于`ZSTD_compressBound(srcSize)` | 输入 |
| `src` | 输入数据地址 | 有效指针 | 输入 |
| `srcSize` | 输入数据大小 | 非负整数 | 输入 |
| `compressionLevel` | 压缩等级 | 可通过`ZSTD_minCLevel`和`ZSTD_maxCLevel`查询范围 | 输入 |

**返回值**

返回写入`dst`的压缩数据大小；如果失败，返回错误码，可通过`ZSTD_isError`判断。

### ZSTD_createDCtx

**函数功能**

创建解压上下文。高频解压场景建议复用上下文，减少重复分配开销。

**函数定义**

```c
ZSTD_DCtx* ZSTD_createDCtx(void);
```

**参数说明**

无。

**返回值**

返回解压上下文指针；失败时返回`NULL`。

### ZSTD_freeDCtx

**函数功能**

释放解压上下文。

**函数定义**

```c
size_t ZSTD_freeDCtx(ZSTD_DCtx* dctx);
```

**参数说明**

| 参数名 | 描述 | 取值范围 | 输入/输出 |
| -- | -- | -- | -- |
| `dctx` | 解压上下文指针 | 可为`NULL` | 输入 |

**返回值**

返回0或错误码，可通过`ZSTD_isError`判断。

### ZSTD_decompressDCtx

**函数功能**

使用显式解压上下文执行块解压。

**函数定义**

```c
size_t ZSTD_decompressDCtx(ZSTD_DCtx* dctx,
                           void* dst, size_t dstCapacity,
                           const void* src, size_t srcSize);
```

**参数说明**

| 参数名 | 描述 | 取值范围 | 输入/输出 |
| -- | -- | -- | -- |
| `dctx` | 解压上下文指针 | 有效指针 | 输入/输出 |
| `dst` | 解压输出缓冲区地址 | 有效指针 | 输出 |
| `dstCapacity` | 解压输出缓冲区容量 | 不小于原始数据大小 | 输入 |
| `src` | 压缩数据地址 | 有效指针 | 输入 |
| `srcSize` | 压缩数据大小 | 必须是完整Zstd帧大小 | 输入 |

**返回值**

返回写入`dst`的解压数据大小；如果失败，返回错误码，可通过`ZSTD_isError`判断。

## 流压缩解压

### ZSTD_compressStream2

**函数功能**

使用流式接口压缩输入数据，支持持续输入、刷新和结束当前帧。

**函数定义**

```c
size_t ZSTD_compressStream2(ZSTD_CCtx* cctx,
                            ZSTD_outBuffer* output,
                            ZSTD_inBuffer* input,
                            ZSTD_EndDirective endOp);
```

**参数说明**

| 参数名 | 描述 | 取值范围 | 输入/输出 |
| -- | -- | -- | -- |
| `cctx` | 压缩上下文指针 | 有效指针 | 输入/输出 |
| `output` | 输出缓冲区描述符 | 有效指针，函数会更新`pos` | 输入/输出 |
| `input` | 输入缓冲区描述符 | 有效指针，函数会更新`pos` | 输入/输出 |
| `endOp` | 流操作类型 | `ZSTD_e_continue`、`ZSTD_e_flush`、`ZSTD_e_end` | 输入 |

**返回值**

返回内部仍需刷出的最小剩余字节数；返回0表示当前刷新或结束动作完成；如果失败，返回错误码，可通过`ZSTD_isError`判断。

### ZSTD_decompressStream

**函数功能**

使用流式接口解压输入数据，适用于分片读取压缩数据并持续输出解压结果。

**函数定义**

```c
size_t ZSTD_decompressStream(ZSTD_DStream* zds,
                             ZSTD_outBuffer* output,
                             ZSTD_inBuffer* input);
```

**参数说明**

| 参数名 | 描述 | 取值范围 | 输入/输出 |
| -- | -- | -- | -- |
| `zds` | 解压流上下文指针 | 有效指针 | 输入/输出 |
| `output` | 输出缓冲区描述符 | 有效指针，函数会更新`pos` | 输入/输出 |
| `input` | 输入缓冲区描述符 | 有效指针，函数会更新`pos` | 输入/输出 |

**返回值**

返回0表示当前帧完全解压并刷新完成；返回大于0的值表示仍需继续输入或刷新；如果失败，返回错误码，可通过`ZSTD_isError`判断。

## 错误处理

### ZSTD_isError

**函数功能**

判断Zstd接口返回的`size_t`结果是否表示错误。

**函数定义**

```c
unsigned ZSTD_isError(size_t result);
```

**参数说明**

| 参数名 | 描述 | 取值范围 | 输入/输出 |
| -- | -- | -- | -- |
| `result` | Zstd接口返回值 | `size_t` | 输入 |

**返回值**

返回1表示错误；返回0表示非错误。

### ZSTD_getErrorName

**函数功能**

将Zstd接口返回的错误码转换为可读字符串，便于日志记录和问题定位。

**函数定义**

```c
const char* ZSTD_getErrorName(size_t result);
```

**参数说明**

| 参数名 | 描述 | 取值范围 | 输入/输出 |
| -- | -- | -- | -- |
| `result` | Zstd接口返回值 | `size_t` | 输入 |

**返回值**

返回错误描述字符串。
