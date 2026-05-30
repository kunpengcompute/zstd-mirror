# Zstd介绍

## 最新消息

- [2026.06.30]：发布基于Zstd 1.5.7的鲲鹏优化，覆盖块压缩解压和流压缩解压优化路径。

## 项目简介

### 简介

Zstandard（简称Zstd）是一种快速无损压缩算法，面向实时压缩场景，在保持较高压缩、解压速度的同时提供较好的压缩比。Zstd提供C语言库和命令行工具，可用于文件压缩、内存块压缩、网络流式传输、日志归档等场景。

本仓库是面向鲲鹏平台的Zstd优化仓，基于上游Zstd 1.5.7进行性能优化，重点覆盖块压缩、块解压、流压缩、流解压等常用路径。优化不改变用户侧API，应用仍使用Zstd原生公开C API完成开发和集成。

### 核心模块

Zstd核心能力可分为以下模块：

- **块压缩模块**：对内存中的连续数据进行一次性压缩，适用于已知输入大小的数据块。
- **块解压模块**：对完整Zstd帧进行一次性解压，适用于已知或可约束输出大小的数据。
- **上下文复用模块**：通过复用压缩或解压上下文降低重复分配开销，适用于高频调用场景。
- **流压缩模块**：支持分片输入和分片输出，适用于文件、网络、管道等流式数据。
- **流解压模块**：按输入流持续解码Zstd帧，并将解压结果写入调用方输出缓冲区。
- **错误处理与工具接口**：提供返回值错误判断、错误文本转换、压缩上界估算等辅助能力。

### 对外核心接口函数

以下为Zstd常见公开接口，覆盖块压缩解压、上下文复用、流压缩解压和错误处理能力。

| 模块分类 | 接口函数/方法 | 功能描述 |
| -- | -- | -- |
| 块压缩 | `ZSTD_compress` | 将输入内存块压缩为单个Zstd帧。 |
| 块压缩 | `ZSTD_compressBound` | 计算单次压缩在最坏情况下需要的输出缓冲区大小。 |
| 块解压 | `ZSTD_decompress` | 将完整Zstd帧解压到调用方提供的输出缓冲区。 |
| 块解压 | `ZSTD_getFrameContentSize` | 从Zstd帧头中读取原始内容大小信息。 |
| 上下文复用 | `ZSTD_createCCtx` / `ZSTD_freeCCtx` | 创建和释放压缩上下文。 |
| 上下文复用 | `ZSTD_compressCCtx` | 使用显式压缩上下文执行块压缩。 |
| 上下文复用 | `ZSTD_createDCtx` / `ZSTD_freeDCtx` | 创建和释放解压上下文。 |
| 上下文复用 | `ZSTD_decompressDCtx` | 使用显式解压上下文执行块解压。 |
| 流压缩 | `ZSTD_compressStream2` | 使用流式接口持续压缩输入数据。 |
| 流解压 | `ZSTD_decompressStream` | 使用流式接口持续解压输入数据。 |
| 错误处理 | `ZSTD_isError` | 判断Zstd接口返回值是否表示错误。 |
| 错误处理 | `ZSTD_getErrorName` | 将错误返回值转换为可读字符串。 |

## 目录结构

项目目录层级介绍如下：

```text
# 文档目录
README.md                         # 项目说明
LICENSE                           # 代码BSD许可证
COPYING                           # GPLv2备用许可证说明
docs/
├── LICENSE                       # 文档许可证
└── zh/
    ├── api_reference.md          # API参考
    ├── installation_guide.md     # 安装指南
    ├── menu_zstd.md              # 文档菜单
    ├── quick_start.md            # 快速入门
    └── release_notes.md          # 版本说明书

# 代码目录（从dev_1.5.7_FOR_KP分支获取代码后）
zstd/
├── lib/                          # libzstd库源码与公开头文件
│   ├── zstd.h                    # Zstd公开C API头文件
│   ├── compress/                 # 压缩实现
│   ├── decompress/               # 解压实现
│   ├── common/                   # 公共数据结构和工具函数
│   └── dictBuilder/              # 字典训练和构建能力
├── programs/                     # zstd命令行工具源码
├── examples/                     # API使用示例
├── tests/                        # 测试用例
├── build/                        # CMake、Meson等构建配置
├── contrib/                      # 扩展工具和集成示例
└── Makefile                      # 顶层Makefile
```

## 版本说明

基于鲲鹏优化的Zstd每个发布版本特性变更详细信息，请参见《[版本说明书](docs/zh/release_notes.md)》。

## 环境部署

基于鲲鹏优化的Zstd编译环境、依赖获取与安装步骤参见《[安装指南](docs/zh/installation_guide.md)》。

## 快速入门

安装Zstd后如何快速上手使用Zstd命令行和C API请参见《[快速入门](docs/zh/quick_start.md)》。

## 文档

| 资源名称 | 资源简介 |
| -- | -- |
| [版本说明书](docs/zh/release_notes.md) | 提供基于鲲鹏优化的Zstd版本基础信息和特性更新说明。 |
| [快速入门](docs/zh/quick_start.md) | 提供基于鲲鹏优化的Zstd命令行与C API快速上手示例。 |
| [API参考](docs/zh/api_reference.md) | 提供Zstd常见公开接口说明与函数定义。 |
| [安装指南](docs/zh/installation_guide.md) | 提供基于鲲鹏优化代码Zstd的代码获取、编译和安装指导。 |

## 免责声明

**致Zstd使用者**

- 本软件仅供调试和开发之用，使用者需自行承担使用风险，并理解以下内容：
    - 此代码仓计划参与Zstd软件开源，仅对Zstd部分路径在鲲鹏处理器上进行性能优化，编码风格遵照原生开源软件，继承原生开源软件安全设计，不破坏原生开源软件设计及编码风格和方式。软件的任何漏洞与安全问题，均由相应的上游社区根据其漏洞和安全响应机制解决。请密切关注上游社区发布的通知和版本更新。鲲鹏计算社区对软件的漏洞及安全问题不承担任何责任。
    - 数据处理及删除：用户在使用本软件过程中产生的数据属于用户责任范畴。建议用户在使用完毕后及时删除相关数据，以防信息泄露。
    - 数据保密与传播：使用者了解并同意不得将通过本软件产生的数据随意外发或传播。对于由此产生的信息泄露、数据泄露或其他不良后果，本软件及其开发者概不负责。
    - 用户输入安全性：用户需自行保证输入命令的安全性，并承担因输入不当而导致的任何安全风险或损失。对于输入命令不当所导致的问题，本软件及其开发者概不负责。

- 免责声明范围：本免责声明适用于所有使用本软件的个人或实体。使用本软件即表示您同意并接受本声明的内容，并愿意承担因使用该功能而产生的风险和责任，如有异议请停止使用本软件。
- 在使用本软件之前，请**谨慎阅读并理解以上免责声明的内容**。对于使用本软件所产生的任何问题或疑问，请及时联系开发者。

**致数据所有者**

如果您不希望您的数据集等信息在Zstd优化仓库中被提及，或希望更新相关描述，请在GitCode提交issue，我们将根据您的要求删除或更新相关描述。感谢您的理解与支持。

## License

- Zstd采用BSD/GPLv2双许可证，具体请参见[LICENSE文件](LICENSE)和[COPYING文件](COPYING)。

- Zstd项目的文档适用CC-BY 4.0许可证，具体请参见[LICENSE文件](docs/LICENSE)。

## 贡献声明

欢迎大家为社区做贡献，如果使用过程中有任何问题/建议，或者需要反馈特性需求和bug报告，可以提交[Issues](https://gitcode.com/boostkit/community/blob/master/docs/contributor/issue-submit.md)联系我们，具体贡献方法可参考[这里](https://gitcode.com/boostkit/community/blob/master/docs/contributor/contributing.md)。同时也欢迎大家在[讨论专区](https://gitcode.com/boostkit/community/discussions)展开讨论交流。感谢您的支持。

## 致谢

基于鲲鹏优化的Zstd由华为公司的下列部门联合贡献：

- 鲲鹏计算Boostkit开发部

感谢来自社区的每一个PR，欢迎贡献Zstandard！
