# 安装指南

本文档提供基于鲲鹏优化的Zstd的代码获取、编译和安装步骤。编译时请从`dev_1.5.7_FOR_KP`分支拉取代码。

## 环境要求

| 软件 | 版本要求 | 说明 |
| -- | -- | -- |
| 操作系统 | openEuler 22.03 LTS SP3 | Linux发行版 |
| CPU | 鲲鹏920处、920新型号及950 | 推荐在鲲鹏平台编译和运行 |
| 编译器 | Clang 16.0.6+<br>GCC 9.0+ | 支持C语言编译 |
| Make | 4.0或更高版本 | 推荐构建工具 |


## 获取代码

运行以下命令获取代码。

```bash
git clone -b dev_1.5.7_FOR_KP https://gitcode.com/boostkit/zstd.git
cd zstd
```

## 编译安装

### 使用Makefile编译

Zstd官方推荐使用顶层`Makefile`进行编译。

1. 编译Zstd命令行工具和`libzstd`库。

   ```bash
   make -j$(nproc)
   ```

2. 安装到自定义目录。

   ```bash
   export ZSTD_INSTALL_DIR=/path/to/install/zstd
   make install PREFIX=${ZSTD_INSTALL_DIR}
   ```

3. 配置运行环境。

   ```bash
   export PATH=${ZSTD_INSTALL_DIR}/bin:$PATH
   export LD_LIBRARY_PATH=${ZSTD_INSTALL_DIR}/lib:$LD_LIBRARY_PATH
   ```

4. 验证安装结果。

   ```bash
   zstd --version
   ls -la ${ZSTD_INSTALL_DIR}
   ```

### 使用CMake编译

Zstd也提供CMake构建配置，路径位于`build/cmake`。

1. 配置构建目录。

   ```bash
   cmake -S build/cmake \
         -B build-cmake \
         -DCMAKE_BUILD_TYPE=Release
   ```

2. 编译。

   ```bash
   cmake --build build-cmake --parallel $(nproc)
   ```

3. 安装到自定义目录。

   ```bash
   export ZSTD_INSTALL_DIR=/path/to/install/zstd
   cmake --install build-cmake --prefix ${ZSTD_INSTALL_DIR}
   ```

## 运行测试

1. 使用Makefile运行测试。

   ```bash
   make check
   ```

2. 使用已编译的命令行工具进行基础验证。

   ```bash
   echo "hello zstd" > sample.txt
   ./zstd sample.txt -o sample.txt.zst
   ./zstd -d sample.txt.zst -o sample.out
   diff sample.txt sample.out
   ```

## 编译产物

编译和安装完成后，主要产物如下。

```text
/path/to/install/zstd/
├── bin/
│   └── zstd                     # Zstd命令行工具
├── include/
│   └── zstd.h                   # Zstd公开C API头文件
└── lib/
    ├── libzstd.a                # 静态库
    ├── libzstd.so               # 动态库
    └── pkgconfig/               # pkg-config配置
```
