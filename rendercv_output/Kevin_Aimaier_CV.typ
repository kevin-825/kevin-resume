// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Kevin Aimaier",
  title: "Kevin Aimaier - CV",
  footer: context { [#emph[Kevin Aimaier -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[最后更新于 5月 2026] ],
  locale-catalog-language: "zh",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 0.7in,
  page-bottom-margin: 0.7in,
  page-left-margin: 0.7in,
  page-right-margin: 0.7in,
  page-show-footer: true,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 79, 144),
  colors-headline: rgb(0, 79, 144),
  colors-connections: rgb(0, 79, 144),
  colors-section-titles: rgb(0, 79, 144),
  colors-links: rgb(0, 79, 144),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Source Sans 3",
  typography-font-family-name: "Source Sans 3",
  typography-font-family-headline: "Source Sans 3",
  typography-font-family-connections: "Source Sans 3",
  typography-font-family-section-titles: "Source Sans 3",
  typography-font-size-body: 10pt,
  typography-font-size-name: 30pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.4em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: true,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: false,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_partial_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: true,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0.15cm,
  entries-highlights-space-above: 0cm,
  entries-highlights-space-between-items: 0cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 5,
    day: 15,
  ),
)


= Kevin Aimaier

#connections(
  [#connection-with-icon("location-dot")[武汉]],
  [#link("mailto:kflyn825@outlook.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[kflyn825\@outlook.com]]],
  [#link("tel:+86-185-0000-0000", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[185 0000 0000]]],
  [#link("https://github.com/kevin-825", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[kevin-825]]],
)


== Education

#education-entry(
  [
    #strong[西北工业大学 (985\/211、双一流)], 电子信息工程 (EE) · 工学学士

    - 主要学习模拟\/数字电路原理设计，微机原理与架构(MCU\/DSP)，信号处理（连续\/离散信号处理、统计信号处理及估计理论）

  ],
  [
    西安, 中国

    9月 2013 – 7月 2017

  ],
  degree-column: [
    
  ],
)

#education-entry(
  [
    #strong[厦门外国语学校 (Xiamen Foreign Language School)], 高中毕业

  ],
  [
    厦门, 中国

    9月 2010 – 7月 2013

  ],
  degree-column: [
    
  ],
)

== Skills

#strong[编程语言:] C (8 年底层与驱动实战), Python, Bash Shell, Matlab\/Simulink, JIM tcl, JSON\/YAML, powershell.

#strong[处理器架构:] 深入掌握 RISC-V, ARMv7\/v8-M, AArch64 以及 Xtensa DSP 指令集架构；精通多种中断控制模型 (CLINT\/PLIC\/AIA, NVIC\/GIC)、特权\/异常模型 (Machine\/User mode, EL0-EL3) 及内存保护单元 (PMP\/MPU, MMU 与 Cache 一致性).

#strong[芯片底层开发:] 具备多家芯片原厂 SoC 开发经验，熟悉内部总线 (AHB\/APB, Matrix\/Arbiter)；熟悉 FPGA 硅前\/硅后 Bring-up 验证；熟练开发 BootROM\/Bootloader 及底层 HAL 驱动 (涵盖 I2C, SPI, UART, WDT, DMA, NOR\/NAND, DDR 控制器等).

#strong[操作系统内核:] 具备丰富的 RTOS (FreeRTOS, LiteOS) 及 Linux 内核实战经验；深入理解内核任务调度 (CFS\/FIFO\/RR)、内存寻址与管理、同步原语及 VFS\/sysfs 子系统；熟练掌握 Linux 字符设备驱动、设备树 (Device Tree)、构建系统 (Buildroot, Kconfig) 及系统初始化流程 (U-boot, initrd, systemd).

#strong[调试与工具链:] 精通 GNU 工具链 (GCC, GDB, nm, objdump) 及 CMake\/Makefile 构建；具备丰富的底层 Debug 经验 (Trace, 内存踩踏\/泄漏, Coredump, 宕机现场分析)；熟练应用 QEMU 模拟器、Docker 容器化开发以及 CI\/CD (GitLab, Jenkins) 自动化流程.

#strong[综合与进阶:] 熟练运用 Generative AI (Gemini Pro, Copilot) 进行辅助编程与复杂问题排查；具备极强的全英文原版技术文献解析与自主学习能力 (持续跟进 MIT OCW, Linux Foundation 等前沿硬核课程).

== Experience

#regular-entry(
  [
    #strong[合肥君正科技股份有限公司], 嵌入式软件工程师

    - 参与自研异构 AI MCU SoC（RISC-V 大小核架构 + TNPU）硅前验证。在极度缺乏 FPGA 验证资源（8-10人共用2台，周末无休）且无 JTAG 调试环境的情况下，力排众议推进 JTAG 模块集成，并配合 SoC 部门耗时一月修复 GDB 断链问题，使 JTAG 稳定可用。

    - 负责 RISC-V PLIC 控制器中断嵌套驱动研发。利用 QEMU 模拟器及 FPGA 运行验证，成功排查出 SoC 部门提供的子系统中断号偏移的硬件级 Bug。

    - 研发 Cache 驱动及汇编级 Spinlock。重新适配 FreeRTOS，修复任务初始化导致的栈踩踏 Bug 及临界区中断关闭恢复 Bug，协助解决自旋锁死锁。

    - 搭建基于 Docker 的静态 OpenOCD 环境及 GDB init 脚本。利用 GDB 反汇编及内存现场分析，成功定位困扰算法部门一个月的紧急 Bug（TNPU 越界写坏大核中断向量表）。适配浮点向量寄存器中断上下文保存。

    - #strong[离职原因：] 加班严重，研发环境缺乏基本 Debug 手段。

  ],
  [
    合肥\/上海

    5月 2024 – 1月 2025

    

    9 个月

  ],
)

#regular-entry(
  [
    #strong[博士视听系统(上海)有限公司 (Bose)], 嵌入式软件工程师

    - 负责可穿戴设备、蓝牙耳机等消费电子产品的上层组件开发与适配。

    - #strong[离职原因：] 公司核心团队在美国，需频繁倒时差（晚上10-11点）开会，岗位匹配度低，自愿离职。

  ],
  [
    上海

    5月 2024 – 6月 2024

    

    2 个月

  ],
)

#regular-entry(
  [
    #strong[上海物骐微电子有限公司], 嵌入式软件工程师

    - 核心参与华为 Julu2 项目，在 WQ7036 SoC (RISC-V + Xtensa HiFi5 DSP) 多核异构平台上，完成 OpenHarmony LiteOS 与 FreeRTOS 的系统级移植及底层外设驱动研发，助力三条产品线成功量产。

    - 利用 WDT、NMI、PMP 等硬件机制设计并实现高可靠性异常检测\/Coredump 系统，精准捕获栈溢出、零地址访问及线程死锁等错误。

    - 负责 SoC 硅前 FPGA 验证及 Bring-up，开发 BootROM、Bootloader 及底层核心外设驱动 (包含 Cache, DMA, SFC Flash, DDR, I2C, SPI 等)。

    - 攻坚复杂系统级难题，解决 DSP 子系统非预期重启、缺乏重启寄存器上下文时的宕机分析，以及 UART 在高负载下的异常挂死问题。

    - #strong[离职原因：] 合同 3 年期满未续签，主要原因为加班严重。

  ],
  [
    上海

    1月 2021 – 1月 2024

    

    3 年 1 个月

  ],
)

#regular-entry(
  [
    #strong[湖北恒隆企业集团上海汽车电子研发有限公司], 嵌入式软件工程师

    - 基于 NXP S32K14x 平台开发 EPS 系统存储服务模块驱动，遵循 AUTOSAR 4.x 架构与 ISO 26262 功能安全标准。

    - 运用 C 语言为 AUTOSAR OS 研发模拟 EEPROM 驱动 (基于 NAND Flash)，实现高寿命磨损均衡算法以确保 20 年数据保持。

    - 基于 UDS 和 CAN 协议完成存储服务模块单元测试，利用 Python 开发自动化配置文件生成工具链。

    - #strong[离职原因：] 后期同事流失严重，加班急剧变多。

  ],
  [
    上海

    4月 2019 – 7月 2020

    

    1 年 4 个月

  ],
)

#regular-entry(
  [
    #strong[易兆微电子 (杭州) 有限公司], 嵌入式软件工程师

    - 为 ARM Cortex-M0 MCU 开发底层外设驱动 (SPI, I2C, PWM, ADC)，完成陀螺仪 (MPU-6050) 及电池监控模块驱动开发。

    - 利用 Ellisys 蓝牙协议分析仪进行抓包，诊断并解决蓝牙设备的连接丢失问题。

    - 引入数学统计方法 (极大似然估计与贝叶斯公式) 处理蓝牙 RSSI 数据序列，开发防丢设备的高精度距离估算算法。

    - #strong[离职原因：] 发展前景有限，能学到的底层技能有限。

  ],
  [
    杭州\/上海

    3月 2018 – 4月 2019

    

    1 年 2 个月

  ],
)

#regular-entry(
  [
    #strong[中国铁建重工集团有限公司新疆分公司], 现场技术支持

    - 参与产品学习，协助工程任务，并在现场提供技术支持。

    - #strong[离职原因：] 专业不匹配及对工作内容缺乏兴趣，工作 5 个月后自愿离职。

  ],
  [
    乌鲁木齐

    7月 2017 – 12月 2017

    

    6 个月

  ],
)
