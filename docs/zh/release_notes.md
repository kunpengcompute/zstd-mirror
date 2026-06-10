# 版本说明书

## 版本配套说明

### 产品版本信息

<a name="table62675726"></a>
<table><tbody><tr id="row41561572"><th class="firstcol" valign="top" width="42.17%" id="mcps1.1.3.1.1"><p id="p11044137"><a name="p11044137"></a><a name="p11044137"></a>产品名称</p>
</th>
<td class="cellrowborder" valign="top" width="57.830000000000005%" headers="mcps1.1.3.1.1 "><p id="p1597721693713"><a name="p1597721693713"></a><a name="p1597721693713"></a>Kunpeng BoostKit</p>
</td>
</tr>
<tr id="row24726251"><th class="firstcol" valign="top" width="42.17%" id="mcps1.1.3.2.1"><p id="p56669300"><a name="p56669300"></a><a name="p56669300"></a>产品版本</p>
</th>
<td class="cellrowborder" valign="top" width="57.830000000000005%" headers="mcps1.1.3.2.1 "><p id="p11923034"><a name="p11923034"></a><a name="p11923034"></a><span id="text189831542174711"><a name="text189831542174711"></a><a name="text189831542174711"></a>26.1.RC1</span></p>
</td>
</tr>
<tr id="row1930811171892"><th class="firstcol" valign="top" width="42.17%" id="mcps1.1.3.3.1"><p id="p2030912172097"><a name="p2030912172097"></a><a name="p2030912172097"></a>软件名称</p>
</th>
<td class="cellrowborder" valign="top" width="57.830000000000005%" headers="mcps1.1.3.3.1 "><p id="p1730912179911"><a name="p1730912179911"></a><a name="p1730912179911"></a>Zstd（鲲鹏Zstd优化版）</p>
</td>
</tr>
<tr id="row1930811171892"><th class="firstcol" valign="top" width="42.17%" id="mcps1.1.3.3.1"><p id="p2030912172097"><a name="p2030912172097"></a><a name="p2030912172097"></a>软件版本</p>
</th>
<td class="cellrowborder" valign="top" width="57.830000000000005%" headers="mcps1.1.3.3.1 "><p id="p1730912179911"><a name="p1730912179911"></a><a name="p1730912179911"></a>V1.0.0</p>
</td>
</tr>
<tr id="row1930811171892"><th class="firstcol" valign="top" width="42.17%" id="mcps1.1.3.3.1"><p id="p2030912172097"><a name="p2030912172097"></a><a name="p2030912172097"></a>源码分支</p>
</th>
<td class="cellrowborder" valign="top" width="57.830000000000005%" headers="mcps1.1.3.3.1 "><p id="p1730912179911"><a name="p1730912179911"></a><a name="p1730912179911"></a>dev_1.5.7_FOR_KP</p>
</td>
</tr>
</tbody>
</table>

### 与操作系统、编译器和CPU配套说明

| 操作系统 | CPU类型 | 编译器 |
| -- | -- | -- |
| openEuler 22.03 LTS SP3 | 鲲鹏920处理器<br>鲲鹏920新型号处理器<br>鲲鹏950处理器 | Clang 16.0.6版本及以上<br>GCC 9.0版本及以上 |

## 版本更新说明

### V1.0.0

**新增特性**

| 特性描述 | 更新说明 |
| -- | -- |
| 新增块压缩路径优化 | 针对Zstd块压缩常用路径进行优化，提升内存块压缩性能。 |
| 新增块解压路径优化 | 针对Zstd块解压常用路径进行优化，提升完整帧解压性能。 |
| 新增流压缩路径优化 | 针对Zstd流式压缩场景进行优化，适配文件、网络和管道等连续输入场景。 |
| 新增流解压路径优化 | 针对Zstd流式解压场景进行优化，提升分片输入和分片输出处理效率。 |

## 版本配套文档

### V1.0.0版本配套文档

<a name="table41916133"></a>
<table><thead align="left"><tr id="row28804032"><th class="cellrowborder" valign="top" width="35.52%" id="mcps1.1.4.1.1"><p id="p4697041"><a name="p4697041"></a><a name="p4697041"></a>文档名称</p>
</th>
<th class="cellrowborder" valign="top" width="47.52%" id="mcps1.1.4.1.2"><p id="p44916036"><a name="p44916036"></a><a name="p44916036"></a>内容简介</p>
</th>
<th class="cellrowborder" valign="top" width="16.96%" id="mcps1.1.4.1.3"><p id="p14320308"><a name="p14320308"></a><a name="p14320308"></a>交付形式</p>
</th>
</tr>
</thead>
<tbody><tr id="row19094280"><td class="cellrowborder" valign="top" width="35.52%" headers="mcps1.1.4.1.1 "><p id="p1341193722116"><a name="p1341193722116"></a><a name="p1341193722116"></a>《版本说明书》</p>
</td>
<td class="cellrowborder" valign="top" width="47.52%" headers="mcps1.1.4.1.2 "><p id="p2042183752117"><a name="p2042183752117"></a><a name="p2042183752117"></a>本文档提供基于开源Zstd优化的鲲鹏Zstd的每个版本发布信息。</p>
</td>
<td class="cellrowborder" valign="top" width="16.96%" headers="mcps1.1.4.1.3 "><p id="p83760545399"><a name="p83760545399"></a><a name="p83760545399"></a>开源仓</p>
</td>
</tr>
<tr id="row19739145124012"><td class="cellrowborder" valign="top" width="35.52%" headers="mcps1.1.4.1.1 "><p id="p1045512617409"><a name="p1045512617409"></a><a name="p1045512617409"></a>《快速入门》</p>
</td>
<td class="cellrowborder" valign="top" width="47.52%" headers="mcps1.1.4.1.2 "><p id="p15918183742018"><a name="p15918183742018"></a><a name="p15918183742018"></a>提供基于开源Zstd优化的鲲鹏Zstd的快速上手示例与编译运行说明。</p>
</td>
<td class="cellrowborder" valign="top" width="16.96%" headers="mcps1.1.4.1.3 "><p id="p1074017515408"><a name="p1074017515408"></a><a name="p1074017515408"></a>开源仓</p>
</td>
</tr>
<tr id="row1941037152117"><td class="cellrowborder" valign="top" width="35.52%" headers="mcps1.1.4.1.1 "><p id="p5143115122016"><a name="p5143115122016"></a><a name="p5143115122016"></a>《安装指南》</p>
</td>
<td class="cellrowborder" valign="top" width="47.52%" headers="mcps1.1.4.1.2 "><p id="p1914345202019"><a name="p1914345202019"></a><a name="p1914345202019"></a>本文档提供基于开源Zstd优化的鲲鹏Zstd的环境配置与编译安装的详细指导。</p>
</td>
<td class="cellrowborder" valign="top" width="16.96%" headers="mcps1.1.4.1.3 "><p id="p18376105483918"><a name="p18376105483918"></a><a name="p18376105483918"></a>开源仓</p>
</td>
</tr>
<tr id="row883510919404"><td class="cellrowborder" valign="top" width="35.52%" headers="mcps1.1.4.1.1 "><p id="p16281135814010"><a name="p16281135814010"></a><a name="p16281135814010"></a>《API参考》</p>
</td>
<td class="cellrowborder" valign="top" width="47.52%" headers="mcps1.1.4.1.2 "><p id="p991893772013"><a name="p991893772013"></a><a name="p991893772013"></a>提供Zstd常见公开接口说明与函数定义。</p>
</td>
<td class="cellrowborder" valign="top" width="16.96%" headers="mcps1.1.4.1.3 "><p id="p7835129124011"><a name="p7835129124011"></a><a name="p7835129124011"></a>开源仓</p>
</td>
</tr>
</tbody>
</table>

### 获取文档的方法

您可以通过访问[开源仓](https://gitcode.com/boostkit/zstd)浏览和获取相关文档。
