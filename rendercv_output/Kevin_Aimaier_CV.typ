// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "艾麦尔·外力 (Kevin Aimaier)",
  title: "Kevin Aimaier - CV",
  footer: context { [#emph[艾麦尔·外力 (Kevin Aimaier) -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[最后更新于 5月 2026] ],
  locale-catalog-language: "zh",
  text-direction: ltr,
  page-size: "a4",
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
  typography-line-spacing: 0.75em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Noto Sans CJK SC",
  typography-font-family-name: "Noto Sans CJK SC",
  typography-font-family-headline: "Noto Sans CJK SC",
  typography-font-family-connections: "Noto Sans CJK SC",
  typography-font-family-section-titles: "Noto Sans CJK SC",
  typography-font-size-body: 10pt,
  typography-font-size-name: 20pt,
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
  header-alignment: left,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "  |  ",
  header-connections-space-between-connections: 0.2cm,
  section-titles-type: "with_full_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.4em,
  sections-space-between-regular-entries: 1.5em,
  entries-date-and-location-width: 0cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: true,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0.15cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "◦" ,
  entries-highlights-space-left: 0.15cm,
  entries-highlights-space-above: 0.15cm,
  entries-highlights-space-between-items: 0.15cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 5,
    day: 19,
  ),
)


= 艾麦尔·外力 (Kevin Aimaier)

#connections(
  [#connection-with-icon("location-dot")[新疆 \/ 成都]],
  [#link("mailto:kflyn825@outlook.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[kflyn825\@outlook.com]]],
  [#link("tel:+86-185-0162-1780", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[185 0162 1780]]],
  [#link("https://yultuzs.com/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("link")[yultuzs.com]]],
  [#link("https://github.com/kevin-825", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[kevin-825]]],
)


== 个人简介 Summary

具有 8 年核心 BSP 与底层固件开发经验的资深嵌入式软件工程师，深谙 RISC-V 与 ARM 多核异构 SoC 体系。具备从硅前 FPGA 软硬协同验证 (Pre-silicon)、硅后点亮 (Bring-up),QEMU软硬协同仿真验证，到千万级终端量产的全生命周期实战经验。拥有深厚的操作系统内核功底 (Linux\/RTOS)，及极度强悍的系统级跨域排错能力，擅长深度运用 GDB\/JTAG\/QEMU 攻坚跨核死锁、内存踩踏及coredump异常宕机postmortem debugging。精通开发环境的 Docker 容器化构建，并善于运用 Generative AI 赋能底层架构调试与效能提升。现寻求芯片设计验证、AI 加速器及边缘计算领域的挑战性岗位，致力于通过硬核底软基建为前沿 SoC 的成功流片与商业交付构筑坚实壁垒。

== 求职意向 Job Intentions

#strong[目标岗位:] 嵌入式软件架构工程师、芯片底层驱动工程师 (BSP)、系统软件开发工程师

#strong[期望领域:] 芯片设计与验证、AI 加速器底层基建、物联网设备 (AIoT)、边缘计算

== 个人优势 &专业技能 Core Competencies

#strong[编程语言与开发规范:] 具备 8 年高复杂度底层 C 语言实战经验,熟悉常用C库如Newlib\/libgloss\/uClibc\/Musl\/Glibc；熟练运用 Python、Bash Shell、PowerShell、Tcl 构建自动化工具；熟悉 JSON\/YAML 数据流序列化及 RISC-V\/ARMv8-M\/A汇编语言。

#strong[体系结构与底层机制:] 深入掌握多核异构处理器架构 (RISC-V, ARMv7\/v8-M, AArch64, Xtensa HiFi5 DSP)；精通高级中断控制路由 (PLIC\/AIA, NVIC\/GIC)、特权\/异常隔离模型 (Machine\/User, EL0-EL3) 及内存保护与映射单元 (PMP\/MPU, MMU 与 Cache 一致性)。

#strong[SoC 架构与硅后 Bring-up:] 具备多家芯片原厂全流程研发经验；深刻理解复杂 SoC 互联拓扑 (AHB\/AXI\/APB 总线, Bus Matrix, 时钟\/电源树)；精通 BootROM\/Bootloader 底层基座确立，深度掌控高速与基础外设控制器 (SFC, SMC, DMA, WDT, SPI\/I2C\/UART) 工作机理。

#strong[OS 内核与驱动框架:] 具备深厚的 Linux 与 RTOS (FreeRTOS, OpenHarmony) 内核实战功底；精通内核任务调度算法、内存寻址分配、高并发同步原语及 VFS 子系统；熟练掌握 Linux 设备树 (DTS)、字符设备驱动模型、交叉构建 (Buildroot\/Kconfig) 及系统引导拉起全流程。

#strong[系统级维测与工程化基建:] 精通 GNU 工具链 (GCC, GDB, nm, objdump) 及 Makefile 构建；具备极其敏锐的极限 Bug 攻坚与现场还原能力 (跨域死锁追踪, 内存踩踏\/泄漏分析, 宕机 Coredump 解析)；熟练应用 QEMU 系统级模拟器、Docker 开发环境容器化及 CI\/CD (GitLab, Jenkins) 自动化流水线。

#strong[极客素养与综合能力:] 具备无障碍解析全英文硬核技术文献 (DataSheet, Architecture Manual) 与跨国协同交流能力；擅长运用 Generative AI 赋能架构设计与复杂排错；保持极强的技术自驱力，深度涉猎并实践 MIT OCW、Linux Foundation 等顶尖开源架构课程。

== 教育经历 Education

#education-entry(
  [
    2013.09 - 2017.07 #h(1em) #strong[西北工业大学 (985\/211、双一流)] #h(1em) 电子信息工程 (EE) #h(1em) 本科，工学学士 #h(1em) 西安

    - 主要学习模拟\/数字电路原理设计，微机原理与架构(MCU\/DSP)，信号处理（连续\/离散信号处理、统计信号处理及估计理论）

  ],
  [
  ],
)

#education-entry(
  [
    2010.09 - 2013.07 #h(1em) #strong[厦门外国语学校 (厦门市重点高中)] #h(1em) 高中毕业 #h(1em) #h(1em) 厦门

  ],
  [
  ],
)

== 工作经历 Experience

#regular-entry(
  [
    #strong[未入职]  2025.05 - 至今

    嵌入式软件工程师 | 武汉

    #summary[“添加这一条是为了说明2025.05至今为何没有入职，请停止问我“2025.05到现在在干嘛？为何没有入职？考虑这个（外包）岗位过度一下？” 等诸如此类问题了”]

    - #strong[请停止问我这一年为何没有工作] 首先没有人规定一定要一直工作，是否选择入职或者离职，全凭我个人喜好。认为候选人就应该一直工作的，没必要问我这些浪费时间，就直接去找一直工作的人好了。国内就业环境什么样自己没概念吗？单反让员工少加班、制定加班上限，合理加班，谁愿意离职？谁跟钱过不去？

    - #strong[不考虑外包] 我不是没公司可去，请不要侮辱我。是我自己选择这一年不工作，即便没有任何公司要我，我也不考虑违反劳动法的外包，劳务派遣等形式的工作。

    - #strong[这一年我在做什么？] 在做自己的个人项目，还学习了linux foundation的很多课程，包括linux kernel internals and development (LFD420)，developing embedded linux device drivers (LFD435)，embedded linux development (LFD450)等课程，这部分可以参考“个人\/开源项目 ”和“专业进修”。

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[合肥君正科技有限公司]  2025.01 - 2025.05

    嵌入式软件工程师 | 合肥和武汉分公司

    #summary[“#emph[项目1：]参与自研异构 AI MCU SoC在FPGA上硅前验证，该芯片是RISC-V 大小核架构 + TNPU，带MMU和64KB Cache（64Byte 8-way i\/d cache line），大核性能对标arm coretex-A15及以上，面向安防\/学习机\/扫地机器人\/边缘AI 等应用场景。”]

    - #strong[提议集成JTAG并软硬联调]：在极度缺乏 FPGA 验证资源（8-10人共用2台，周末无休）且无 JTAG 调试环境的情况下，提议并推进 JTAG 模块集成，并配合 SoC 部门耗时一月有余修复 GDB JTAG断链不稳定问题以及JTAG子板问题，成功拉起首套稳定可用的GDB OpenOCD JTAG软硬联调环境，结束了只靠串口打印的“盲人摸象”式无效和FPGA拉线看波形的低效debug窘境，使得debug体验效率有质的提升。

    - #strong[PLIC中断嵌套实现]：无JTAG debug手段的情况下，利用QEMU模拟器模拟riscv CPU和PLIC硬件，完成 CPU 与 PLIC 的软硬件协同仿真，在这个模拟环境下运行FreeRTOS Demo并完成PLIC嵌套中断功能开发，完成开发后 FPGA 上运行验证，成功排查出 SoC 部门提供的子系统中断号偏移的Bug，使能58号中断结果60号中断触发58不触发。

    - #strong[Cache\/Spinlock底层适配优化]：研发cache驱动以支持cache flush\/invalidate操作（按地址刷和按cache set index刷）。编写spinlock底层riscv汇编代码实现spinlock功能用以多核间自旋互斥操作。

    - #strong[检查修复FreeRTOS底层适配]：修复第一个任务初始化导致的栈踩踏 Bug 及临界区中断关闭恢复 Bug，协助解决自旋锁死锁。

    - #strong[静态编译windows版OpenOCD并生成容器化环境DockerImage]： 因Windows机器上开虚拟机Linux运行OpenOCD性能损失大难以满足Ghz处理器高速jtag GDB debug需求，大量运用AI 编码辅助工具（Github Copilot和Gemini Pro）编写Dockefile生成open OCD Windows版本编译环境Image，用于后续编译更新的OpenOCD源码以支持JTAG debug。OpenOCD源码静态编译Windows版OpenOCD的挑战在于其依赖包非常的多且繁杂，大部分都需要手动编译源码形成静态库才能链接到OpenOCD中，并且编译FLAG需要针对每个依赖包进行细致调整编译FLAG，最终成功生成了Windows版OpenOCD的DockerImage。有了这个容器环境，使得新手编译OpenOPCD源码的时间从2-3天缩短到5分钟，极大提升了团队成员更新OpenOCD源码的积极性和效率。

    - #strong[GDB初始化脚本编写以及调试修复严重bug]：独立编写适合当前工程的GDB init 脚本（主要包含自动加载可执行elf文件并自动连接目标版并下载，还有一些项目实用的CMD）极大缩短了调试前期工作开销。利用写好的GDB init脚本进行实战调试并调试， 反汇编内存现场分析，成功定位困扰算法部门很久的紧急 Bug（TNPU 越界写坏大核中断向量表）并且配合算法部分同事一步一步定位并成功找到触发异常的代码。

    - #strong[适配FPU浮点\/向量寄存器中断上下文保存恢复]：在CPU支持FPU和向量指令的情况下，适配中断上下文保存恢复机制以支持FPU寄存器和向量寄存器的正确保存和恢复，确保在中断处理过程中这些寄存器的状态能够正确维护，避免因上下文切换导致的数据损坏或异常行为。

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[博士视听系统(上海)有限公司(Bose.com)] 2024.05 - 2024.06

    嵌入式软件工程师 | 上海，闵行区

    - 负责可穿戴设备、蓝牙耳机等的上层组件component，公司私有messaging层的开发与适配。

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[上海物骐微电子有限公司 (物奇微电子的上海研发部，wuqi-micro.com)] 2021-01 - 2024-01 | 3年

    嵌入式软件工程师 | 核心 BSP 与底层固件开发 | 上海,浦东新区

    - #strong[【项目一】 刚入职时wq7033芯片流片已完成流片，参与部分feature开发和bug fix 任务。]

    - #strong[外设驱动深度适配与底层 Bug 攻坚]：主要是学习芯片架构和riscv 指令集架构，适配新的flash厂商（gega device）的NOR flash驱动，期间利用逻辑分析仪抓取SPI serial flash协议数据包，保证初始化和读写操作符合jdec标准。修复过的bug很多，比如简单的assert失败到复杂的whatch dog超时。印象较深的一个bug是系统统计数据（cpu利用率，任务状态等）以及系统时间显示异常，定位到是芯片bug，因为RTC的某一个寄存器是只读的，驱动认为这个应该是读写的，导致RTC alarm触发时间完全错乱，导致系统统计数据非常怪异。

    - #strong[FreeRTOS 低功耗与 Tickless 休眠唤醒优化]：编写FreeRTOS 测试用例去测试验证多个驱动的正确性，包括flash SFC（serial flash controller），UART，WDT。FreeRTOS系统下开启tickless IDLE模式实测多核的低功耗pm模块。修复了uart在Free RTOS进出tickless IDLE低功耗时出现的打印乱码问题（core1 device restore过程中存在还没初始化uart就打印导致uart1 restore异常），以及wdt timer在系统退出tickless IDLE恢复外设状态时无效的问题，通过把wdt的save 和 restore 放到machine mode下作为芯片驱动的一部分而不是注册到外设驱动电源管理pm结构体里，这样就能抓到pm device restore过程中出现的死循环问题，这保证了只要系统上电就保证wdt有效。

    - #strong[PSRAM 控制器调优与跨子系统死锁溯源]：负责win bound psram厂商的ddr psram设备驱动支持，主要是开发调试芯片内的SMC（Sysytem memory controller）的驱动修复，因为当前驱动完全无法用。psram驱动非常负责，从硬件层面psram设计到复杂的时钟树和电源树的正确配置，以及bus brige 的频率切换以支持psram的严格时序。解决的问题，修改dvfs时钟电源管理代码以保证psram能正常上电并和smc通信做校准，这块涉及到深入学习理解芯片电源管理文档手册。还有一个软件无法独立解决的问题是跟多个数字部同事联合调试解决的，那就是psram单元测试过程中出现的读写数据出错的问题，这个是完全由数字部同事指点之下一步一步定位到是硬件默认启用的clock gate功能（一直省电的技术，就是系统）在反复换切上下电brige并且 频率时出现了无法消除的时钟毛刺（无法通过调整频率和校准手段去除）最终关闭clock gate功能得以解决。做了psram是给hifi4 dsp核心用的，core0 core1 dsp核在core0 freeRTOS下跑低功耗经测试，发现了系统进出tickless IDLE后必出现的修复了非常难debug的psram数据内容被写坏且芯片挂死的bug，经过讨论没有人知道是为什么。独立研究调查并发现是因为给dsp核心上电的pm驱动存在bug，给dsp核心上电之前没有stall住dsp核的clock，导致一上电就开始跑，这时候core0 core1 还没完成psram的初始化导致psram工作异常。

    - #strong[【项目二】参与wq7036芯片（7033的升级版本，四核riscv核心+xtensa hifi5 dsp ）硅前验证，参与bootrom，bootloader 开发和验证。验证了GPIO，FLASH，ddr psram， RTC和gp timer，whatdog等外设硬件功能，部分和外设相关pmic的验证，负责了研发一些feature和修补原有驱动的bug。]

    - #strong[RISC-V PLIC 中断控制器重构与遗留架构缺陷消除]：研究riscv PLIC中断控制器解决了RTC 和gp timer中断无法触发的问题，共享中断驱动问题，一步一步排查发现PLIC中断控制器有正常触发中断，但是ISR handler 没有执行，是原来的wq7033的RTC和gp timer存在很多硬件限制比如存在中断号共享等，7033上的中断处理驱动有很多work around来修复避免的这些问题，这个work wround在更新的7036上完全失效，因为7036消除了中断共享以及其他硬件限制，之前的work aroud会引起7036的bug

    - #strong[硅前 GPIO 验证与 PMIC 低功耗状态保持适配]：验证gpio功能，并配合硬件数字设计工程师debug和编写 gpio latch和PMIC相关的低功耗模式下保持gpio设定功能（上拉或下拉）的驱动。

    - #strong[Cache\/XIP 架构验证与多核共享驱动重构]：验证cache和XIP，psram， cache，修改cache和sfc\/smc驱动适配新的芯片架构，消除了7036上多核共用cahe那部分work aound驱动。

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[Continue of 上海物骐微电子有限公司 (Wuqi Microelectronics)]

    嵌入式软件工程师 | 华为项目驻场开发

    - #strong[【项目三】公司重要客户是华为和歌尔，立项2022年底立项Julu2项目（一个项目三个产品线，耳夹式蓝牙耳机，脖颈挂式骨传导蓝牙耳机，眼镜），公司安排10-15个人左右的团队到华为东莞松山湖公司出差，该项目主要任务是我们的7036芯片SDK适配华为的操作系统liteOS（类linux系统），适配华为的蓝牙host和上层应用，支持三个产品线。]

    - #strong[联合研发体系融入与 LiteOS 容器化环境构建]：学习liteOS系统，参与华为培训，学习如何docker容器化环境下嵌入式开发等等，参与华为考核，正式进入华为歌尔和我司合作的项目。

    - #strong[OpenHarmony LiteOS 深度移植与致命死锁化解]：负责7036的SDK 驱动等适配到 liteOS，主要负责把 NOR flash 驱动适配到 liteOS的 MTD device子系统结点，gpio，RTC， gp timer，SPI， I2C ,WDT 等底层驱动适配到华为lite OS的 字符设备 char device 和io\_ctrl系统调用systemcall上。主要是完善flash驱动的残缺和bug，比如liste os要求flash适配写保护功能，但该功能的适配严重影响flash的XIP片内执行，导致系统异常hang死。深入研究NOR flash手册并研究NOR flash工作原理，发现Nor flash写保护功能操作flash内部非易失寄存器需要很长时间，这个操作会阻塞SFC，进而阻塞cache和总线，cpu pipe line也被冻住，中断不能响应，pwic内的全局watchdong触发芯片复位。解决办法是，Nor flash提供了临时改变内部控制寄存器的命令，该命令只修改flash内部易失控制器寄存器，这个操作立即就能成功返回，延时极端。

    - #strong[多核异构 DFx 维测基建与 Xtensa 架构上下文恢复]：负责DFx子系统的适配，这个也就维测子系统。针对7036的复杂异构系统，利用 cpu核所在子系统下的watchdog和pmic全局watchdog、NMI (不可屏蔽中断) 与 PMP (物理内存保护) 等硬件机制，从零构建全局异常捕获框架。精准拦截跨子系统死锁、栈溢出及非法内存访问，生成 Coredump 文件，并用addr2line工具链写脚本解析系统crashlog，快速找出系统崩溃时的源码文件行号，为这三条产品线的顺利量产提供决定性保障。该任务难点在于需要同时设计应用子系统core0，蓝牙子系统core1 和xtensa hifi5 dsp子系统的异常检查。其中，core0\/core1是riscv核，是我熟悉的，适配起来也容易，最难的就是xtensa hifi5 dsp，这是个高并行执行和乱序执行的高性能dsp，需要深刻理解xtensa hifi5 dsp的异常模型，通用寄存器分可见窗口寄存器16个，实际register file是64个，跟中断处理跟arm Coretex-A的GIC一样，分4个常level el0到el3.

    - #strong[XIP 架构极限 JTAG 调试方法学创新]：在这个7036复杂异构XIP系统下，创造性的发现了一种利用JTAG GDB debug方法。之前的同事认为JTAG GDB debug的作用更多的在芯片硅前验证阶段，流片后几乎没人用gdb 调试，因为NOR flash XIP系统上没有实现通过cache写入flash操作（难以实现，他们觉得没有必要只为了debug实现这块的硬件和软件），所以，没办法用gdb load命令去下载代码到flash内部，因为很多代码都是需要放到Nor flash里面才能执行。然后=不信邪的我非要jtag debug，他们都叫我这是浪费时间，最终我找到了一个方法，那就既然不能gdb load代码，那就不用gdb load,让boot loader去load代码，gdb连上以后只需要打断点然后continue。发现果然可行，如果需要debug flash内部的代码需要打硬件断点。这个方法也使得我能够debug flash卡住等艰难的问题，我还把该debug方法分享给团队内其他同事比如负责音频的同事，使他的音频方面的debug工作快速收敛并得到表彰。

    - #strong[跨子系统级核心 Bug 攻坚与千万级量产护航]：利用以上方法，为团队其他人的debug工作提供分析debug支持，解决了非常多的系统级、硬件级、跨子系统级bug，比如 DSP子系统异常重启，内存踩踏，内存泄漏等等。单线uart概率性无法通行问题，终三个产品线成功量产，并且耳夹式耳机销量火爆国内外。

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[湖北恒隆企业集团上海汽车电子研发有限公司] 2019.04 - 2020.07

    嵌入式软件工程师 | 上海，浦东新区

    - 基于 NXP S32K14x 平台开发 EPS 系统存储服务模块驱动，遵循 AUTOSAR 4.x 架构与 ISO 26262 功能安全标准。

    - 运用 C 语言为 AUTOSAR OS 研发模拟 EEPROM 驱动 (基于 NAND Flash)，实现高寿命磨损均衡算法以确保 20 年数据保持。

    - 基于 UDS 和 CAN 协议完成存储服务模块单元测试，利用 Python 开发自动化配置文件生成工具链。

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[易兆微电子 (杭州) 有限公司] 2018.03 - 2019.04

    嵌入式软件工程师 | 上海，浦东新区

    - 为 ARM Cortex-M0 MCU 开发底层外设驱动 (SPI, I2C, PWM, ADC)，完成陀螺仪 (MPU-6050) 及电池监控模块驱动开发。

    - 利用 Ellisys 蓝牙协议分析仪进行抓包，诊断并解决蓝牙设备的连接丢失问题。

    - 引入数学统计方法 (极大似然估计与贝叶斯公式) 处理蓝牙 RSSI 数据序列，开发防丢设备的高精度距离估算算法。

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[中国铁建重工集团有限公司新疆分公司] 2017.07 - 2017.12

    现场技术支持 | 乌鲁木齐

    - 参与产品学习，协助工程任务，并在现场提供技术支持。

  ],
  [
  ],
)

== 个人\/开源项目 Open Source Projects

#regular-entry(
  [
    #strong[#emph[#sym.ast.basic#h(0pt, weak: true) QemuRTOS]]#sym.ast.basic#h(0pt, weak: true)

    - #strong[项目URL：]#link("https://github.com/kevin-825/QemuRTOS")[https:\/\/github.com\/kevin-825\/QemuRTOS]

    - #strong[项目简介] QemuRTOS是为了学习研究RTOS内核设计而开发的实验性的实时操作系统（RTOS）开发平台，目前适配RISC-V 32\/64 virt虚拟开发板和arm AArch64 virt虚拟开发板和arm Cortex-M virt虚拟开发板。适合编写RTOS内核，非常适合研究学习GIC\/APLIC\/PLIC\/NVIC等硬件，学习研究RTOS内核设计和实现。目前已完成bring up和内存管理malloc，printk，uart ns6550和pl011驱动。基于kconfig和make file的Docker 容器化的构建系统，支持一键编译生成可运行可执行elf文件和运行在qemu上。

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[#emph[#sym.ast.basic#h(0pt, weak: true) QemuEmbeddedLinux]]#sym.ast.basic#h(0pt, weak: true)

    - #strong[项目URL：]#link("https://github.com/kevin-825/QemuEmbeddedLinux")[https:\/\/github.com\/kevin-825\/QemuEmbeddedLinux]

    - #strong[项目简介] QemuEmbeddedLinux为了学习Linux foundation也就是linux基金会官方提供的Linux kernel internal and development（LFD 420 ）课程而创建的。rootfs构建工具选择的是buildroot，基于Docker容器化的编译环境里编译。boot loader用的ARM ATF + uboot，支持一键编译生成rootfs，Imgaze, vmlinux,uboot.bin, bl.bin，genimage 打包成Sdcard image和直接运行在qemu。启用了ccache，编译非常快速。非常适合学习研究Linux内核开发，kernel module开发，驱动开发，系统调优，内核调试等。也适合学习研究arm和riscv架构的底层开发，芯片Bring-up等。

    - #strong[技术栈：] C, Python, Shell Script, Buildroot, U-boot, ARM Trusted Firmware (ATF), QEMU, Docker, riscv, AARCH64.

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[#emph[#sym.ast.basic#h(0pt, weak: true) EmbeddedDevContainer]]#sym.ast.basic#h(0pt, weak: true)

    - #strong[项目URL：]#link("https://github.com/kevin-825/EmbeddedDevContainer")[https:\/\/github.com\/kevin-825\/EmbeddedDevContainer]

    - #strong[项目简介] EmbeddedDevContainer是一个嵌入式开发环境容器化项目，基于Docker构建，包含了从零写的多个Dockerfile和Dockerfile模板，适用于支持以上两个项目的容器化，理论上经过简单修改添加内容来支持任何项目容器化开发。目前该项目包含了用于编译GNU tool chain（gcc，gdb等）的Docker image Dockerfile，和arm\/riscv交叉编译环境的Docker image Dockerfile。这个项目的目标是为了让嵌入式开发者能够快速搭建一个功能完善的嵌入式开发环境，避免繁琐的环境配置过程，提高开发效率。

    - #strong[技术栈：] Docker, GNU tool chain, Shell Script.

  ],
  [
  ],
)

== 专业进修 Continuous Education & Advanced Training

#regular-entry(
  [
    #strong[Linux Kernel Internals and Development (LFD420)] | Linux Foundation 官方高级课程

    - #link("https://training.linuxfoundation.org/training/linux-kernel-internals-and-development")[Linux Foundation 官方课程主页]

    - 深入研究 Linux 内核核心架构，系统攻克内核模块开发、设备驱动模型、内核态高并发同步原语及性能调优。

    - #strong[核心实战：] 基于 QEMU 模拟器从零构建完整的嵌入式 Linux 系统，独立编写并集成自定义 Kernel Module 与底层设备驱动，并完成系统级安全加固。

    - #strong[技术栈：] C, Linux Kernel, ARM Trusted Firmware (ATF), QEMU, U-boot, Buildroot.

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[Developing Embedded Linux Device Drivers (LFD435)] | Linux Foundation 官方高级课程

    - #link("https://training.linuxfoundation.org/training/developing-embedded-linux-device-drivers/")[Linux Foundation 官方课程主页]

    - 专注于 Linux 核心子系统与驱动框架，深度覆盖字符设备 (Char Device)、块设备及网络设备底层实现。

    - #strong[核心实战：] 结合个人开源项目 `QemuEmbeddedLinux`，完成了从系统构建、Platform Driver 到字符设备驱动开发的全生命周期演练与内核树外编译实践。

    - #strong[技术栈：] C, VFS, Device Tree (DTS), ARM Cortex-A, RISC-V.

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[Embedded Linux Development (LFD450)] | Linux Foundation 官方高级课程

    - #link("https://training.linuxfoundation.org/training/embedded-linux-development/")[Linux Foundation 官方课程主页]

    - 体系化掌握工业级嵌入式 Linux 交叉编译流程、RootFS 裁剪、性能分析定界与系统级安全架构。

    - #strong[核心实战：] 基于 RISC-V 指令集架构，成功构建了集成 SELinux 强制访问控制 (MAC) 模块的高安全性嵌入式 Linux 基础基座。

    - #strong[技术栈：] C, Cross-compilation, SELinux, RISC-V, Buildroot.

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[MIT 6.004 Computation Structures] | MIT OpenCourseWare (麻省理工学院公开课)

    - #link("https://ocw.mit.edu/courses/6-004-computation-structures-spring-2017/")[MIT 6.004 官方课程主页]

    - #strong[底层架构解构：] 深入剖析现代 CPU 微架构底层数字逻辑与硬件状态机设计。

    - #strong[核心理论基建：] 系统掌握了多级流水线 (Pipeline) 停顿与转发、MMU 与 TLB 寻址机制，以及高级多发射乱序执行 (Out-of-Order Execution) 的核心硬件原理。

    - #strong[技术收益：] 建立起从“底层数字逻辑”到“上层操作系统”的全局硬件观，为复杂 SoC 的时序\/死锁 Debug 及内核性能优化提供了决定性的理论支撑。

  ],
  [
  ],
)

== 兴趣爱好 Interests

#strong[接触大自然:] 徒步、露营、登山等户外运动，喜欢在大自然中放松身心，享受宁静与美景。

#strong[体育运动:] 喜欢排球、羽毛球等团队运动，享受运动带来的乐趣和挑战。

#strong[音乐&乐器:] 喜欢听各种类型的音乐，维吾尔族民乐；收藏乐器，喜欢在闲暇时弹奏和练习音乐。

#strong[读书:] 喜欢kindle电纸书上阅读，尤其是技术，数学相关的书。
