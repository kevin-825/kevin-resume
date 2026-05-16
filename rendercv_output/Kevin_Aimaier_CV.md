# Kevin Aimaier's CV

- Phone: +86 185 0162 1780
- Email: [kflyn825@outlook.com](mailto:kflyn825@outlook.com)
- Location: 武汉
- GitHub: [kevin-825](https://github.com/kevin-825)


# 个人简介/求职意向 Summary
具有丰富芯片底层开发经验的嵌入式软件工程师，专注于 RISC-V 架构及其生态系统，熟练运用 C 语言进行高效、可靠的底层驱动和系统开发。具备扎实的计算机体系结构、操作系统原理和软件工程能力，能够快速适应并攻克复杂的技术难题。寻求与芯片设计、AI 加速器等前沿技术相关的挑战性岗位，期待在创新驱动的环境中持续成长并创造价值。

# 个人优势 &专业技能 Core Competencies
**多家芯片公司底层开发经验:** 在多家芯片原厂（包括华为、君正等）的Soc开发软件团队中积累了丰富的芯片底层开发经验，对芯片内部模块比较熟悉(ADIE,BDIE)熟悉从硅前验证到硅后 Bring-up 的全流程，具备扎实的 SoC 架构理解和实际开发能力。

**深入理解 RISC-V 及多种处理器架构:** 熟练使用 C 语言进行底层开发，熟悉 Python、Bash Shell、Matlab/Simulink 等工具；精通 RISC-V、ARMv7/v8-M、AArch64 以及 Xtensa DSP 架构；具备丰富的芯片底层开发经验，熟悉 FPGA 验证和 Bring-up；深入理解 RTOS 和 Linux 内核，熟练使用 GNU 工具链和调试工具；善于运用 Generative AI 辅助编程和问题排查。

**编程语言:** C (8 年底层与驱动实战), Python, Bash Shell, Matlab/Simulink, JIM tcl, JSON/YAML, powershell.

**处理器架构:** 深入掌握 RISC-V, ARMv7/v8-M, AArch64 以及 Xtensa DSP 指令集架构；精通多种中断控制模型 (CLINT/PLIC/AIA, NVIC/GIC)、特权/异常模型 (Machine/User mode, EL0-EL3) 及内存保护单元 (PMP/MPU, MMU 与 Cache 一致性).

**芯片底层开发:** 具备多家芯片原厂 SoC 开发经验，熟悉内部总线 (AHB/APB, Matrix/Arbiter)；熟悉 FPGA 硅前/硅后 Bring-up 验证；熟练开发 BootROM/Bootloader 及底层 HAL 驱动 (涵盖 I2C, SPI, UART, WDT, DMA, NOR/NAND, DDR 控制器等).

**操作系统内核:** 具备丰富的 RTOS (FreeRTOS, LiteOS) 及 Linux 内核实战经验；深入理解内核任务调度 (CFS/FIFO/RR)、内存寻址与管理、同步原语及 VFS/sysfs 子系统；熟练掌握 Linux 字符设备驱动、设备树 (Device Tree)、构建系统 (Buildroot, Kconfig) 及系统初始化流程 (U-boot, initrd, systemd).

**调试与工具链:** 精通 GNU 工具链 (GCC, GDB, nm, objdump) 及 CMake/Makefile 构建；具备丰富的底层 Debug 经验 (Trace, 内存踩踏/泄漏, Coredump, 宕机现场分析)；熟练应用 QEMU 模拟器、Docker 容器化开发以及 CI/CD (GitLab, Jenkins) 自动化流程.

**综合与进阶:** 熟练运用 Generative AI (Gemini Pro, Copilot) 进行辅助编程与复杂问题排查；具备极强的全英文原版技术文献解析与自主学习能力 (持续跟进 MIT OCW, Linux Foundation 等前沿硬核课程).

# 工作经历 Experience
## **合肥君正科技有限公司**  2025.01 - 2025.05

嵌入式软件工程师 | 合肥和武汉分公司

“*项目1：*参与自研异构 AI MCU SoC在FPGA上硅前验证，该芯片是RISC-V 大小核架构 + TNPU，带MMU和64KB Cache（64Byte 8-way i/d cache line），大核性能对标arm coretex-A15及以上，面向安防/学习机/扫地机器人/边缘AI 等应用场景。”

- **提议集成JTAG并软硬联调**：在极度缺乏 FPGA 验证资源（8-10人共用2台，周末无休）且无 JTAG 调试环境的情况下，提议并推进 JTAG 模块集成，并配合 SoC 部门耗时一月有余修复 GDB JTAG断链不稳定问题以及JTAG子板问题，成功拉起首套稳定可用的GDB OpenOCD JTAG软硬联调环境，结束了只靠串口打印的“盲人摸象”式无效和FPGA拉线看波形的低效debug窘境，使得debug体验效率有质的提升。

- **PLIC中断嵌套实现**：无JTAG debug手段的情况下，利用生成式AI（ChatGPT，Copilot和Gemini Pro）完成了复杂的QEMU模拟器模拟riscv CPU和PLIC硬件，完成 CPU 与 PLIC 的软硬件协同仿真，在这个模拟环境下运行FreeRTOS Demo并完成PLIC嵌套中断功能开发，完成开发后 FPGA 上运行验证，成功排查出 SoC 部门提供的子系统中断号偏移的Bug，使能58号中断结果60号中断触发58不触发。

- **Cache/Spinlock底层适配优化**：研发cache驱动以支持cache flush/invalidate操作（按地址刷和按cache set index刷）。编写spinlock底层riscv汇编代码实现spinlock功能用以多核间自旋互斥操作。

- **检查修复FreeRTOS底层适配**：修复第一个任务初始化导致的栈踩踏 Bug 及临界区中断关闭恢复 Bug，协助解决自旋锁死锁。

- **静态编译windows版OpenOCD并生成容器化环境DockerImage**： 因Windows机器上开虚拟机Linux运行OpenOCD性能损失大难以满足Ghz处理器高速jtag GDB debug需求，大量运用AI 编码辅助工具（Github Copilot和Gemini Pro）编写Dockefile生成open OCD Windows版本编译环境Image，用于后续编译更新的OpenOCD源码以支持JTAG debug。OpenOCD源码静态编译Windows版OpenOCD的挑战在于其依赖包非常的多且繁杂，大部分都需要手动编译源码形成静态库才能链接到OpenOCD中，并且编译FLAG需要针对每个依赖包进行细致调整编译FLAG，最终成功生成了Windows版OpenOCD的DockerImage。有了这个容器环境，使得新手编译OpenOPCD源码的时间从2-3天缩短到5分钟，极大提升了团队成员更新OpenOCD源码的积极性和效率。

- **GDB初始化脚本编写以及调试修复严重bug**：独立编写适合当前工程的GDB init 脚本（主要包含自动加载可执行elf文件并自动连接目标版并下载，还有一些项目实用的CMD）极大缩短了调试前期工作开销。利用写好的GDB init脚本进行实战调试并调试， 反汇编内存现场分析，成功定位困扰算法部门很久的紧急 Bug（TNPU 越界写坏大核中断向量表）并且配合算法部分同事一步一步定位并成功找到触发异常的代码。

- **适配FPU浮点/向量寄存器中断上下文保存恢复**：在CPU支持FPU和向量指令的情况下，适配中断上下文保存恢复机制以支持FPU寄存器和向量寄存器的正确保存和恢复，确保在中断处理过程中这些寄存器的状态能够正确维护，避免因上下文切换导致的数据损坏或异常行为。

- **离职原因：** 主要是加班严重，前期无jtag缺少debug手段，最重要的只有2太FPGA机器8-10个人轮着用，周末基本无休都忙着debug，导致工作效率极低，后期虽然jtag debug环境搭建成功了，但是项目一开始就没有考虑出FGPA芯片image时加入JTAG电路模块，导致很多FGPA芯片image无法使用JTAG debug，TNPU的bug也是加了JTAG电路模块才得以debug成功，严重影响了后续的开发效率和体验，最终导致自愿离职。且公司管理制度比较死板，无偿加班且不能调休，而且早上上班迟到要扣工资。经协商无果，身体难以承受长时间高强度加班，选择自愿离职。



## **博士视听系统(上海)有限公司 (Bose)** 2024.05 - 2024.06

嵌入式软件工程师 | 上海，闵行区

- 负责可穿戴设备、蓝牙耳机等消费电子产品的上层组件开发与适配。

- **离职原因：** 公司核心团队在美国，需频繁倒时差（晚上10-11点）开会，岗位匹配度低，自愿离职。



## **上海物骐微电子有限公司 (物奇微电子的上海研发部，wuqi-micro.com)** 2021-01 - 2024-01 | 3年

嵌入式软件工程师 | 核心 BSP 与底层固件开发 | 上海,浦东新区

- **【项目一】 刚入职时wq7033芯片流片已完成流片，参与部分feature开发和bug fix 任务。**

- **外设驱动深度适配与底层 Bug 攻坚**：主要是学习芯片架构和riscv 指令集架构，适配新的flash厂商（gega device）的NOR flash驱动，期间利用逻辑分析仪抓取SPI serial flash协议数据包，保证初始化和读写操作符合jdec标准。修复过的bug很多，比如简单的assert失败到复杂的whatch dog超时。印象较深的一个bug是系统统计数据（cpu利用率，任务状态等）以及系统时间显示异常，定位到是芯片bug，因为RTC的某一个寄存器是只读的，驱动认为这个应该是读写的，导致RTC alarm触发时间完全错乱，导致系统统计数据非常怪异。

- **FreeRTOS 低功耗与 Tickless 休眠唤醒优化**：编写FreeRTOS 测试用例去测试验证多个驱动的正确性，包括flash SFC（serial flash controller），UART，WDT。FreeRTOS系统下开启tickless IDLE模式实测多核的低功耗pm模块。修复了uart在Free RTOS进出tickless IDLE低功耗时出现的打印乱码问题（core1 device restore过程中存在还没初始化uart就打印导致uart1 restore异常），以及wdt timer在系统退出tickless IDLE恢复外设状态时无效的问题，通过把wdt的save 和 restore 放到machine mode下作为芯片驱动的一部分而不是注册到外设驱动电源管理pm结构体里，这样就能抓到pm device restore过程中出现的死循环问题，这保证了只要系统上电就保证wdt有效。

- **PSRAM 控制器调优与跨子系统死锁溯源**：负责win bound psram厂商的ddr psram设备驱动支持，主要是开发调试芯片内的SMC（Sysytem memory controller）的驱动修复，因为当前驱动完全无法用。psram驱动非常负责，从硬件层面psram设计到复杂的时钟树和电源树的正确配置，以及bus brige 的频率切换以支持psram的严格时序。解决的问题，修改dvfs时钟电源管理代码以保证psram能正常上电并和smc通信做校准，这块涉及到深入学习理解芯片电源管理文档手册。还有一个软件无法独立解决的问题是跟多个数字部同事联合调试解决的，那就是psram单元测试过程中出现的读写数据出错的问题，这个是完全由数字部同事指点之下一步一步定位到是硬件默认启用的clock gate功能（一直省电的技术，就是系统）在反复换切上下电brige并且 频率时出现了无法消除的时钟毛刺（无法通过调整频率和校准手段去除）最终关闭clock gate功能得以解决。做了psram是给hifi4 dsp核心用的，core0 core1 dsp核在core0 freeRTOS下跑低功耗经测试，发现了系统进出tickless IDLE后必出现的修复了非常难debug的psram数据内容被写坏且芯片挂死的bug，经过讨论没有人知道是为什么。独立研究调查并发现是因为给dsp核心上电的pm驱动存在bug，给dsp核心上电之前没有stall住dsp核的clock，导致一上电就开始跑，这时候core0 core1 还没完成psram的初始化导致psram工作异常。

- **【项目二】参与wq7036芯片（7033的升级版本，四核riscv核心+xtensa hifi5 dsp ）硅前验证，参与bootrom，bootloader 开发和验证。验证了GPIO，FLASH，ddr psram， RTC和gp timer，whatdog等外设硬件功能，部分和外设相关pmic的验证，负责了研发一些feature和修补原有驱动的bug。**

- **RISC-V PLIC 中断控制器重构与遗留架构缺陷消除**：研究riscv PLIC中断控制器解决了RTC 和gp timer中断无法触发的问题共享中断驱动问题，一步一步排查发现PLIC中断控制器有正常触发中断，但是ISR handler 没有执行，是原来的wq7033的RTC和gp timer存在很多硬件限制性 问题比如存在中断号共享等，7033上的中断处理驱动有很多work around来修复避免的这些问题，这个work wround在更新的7036上完全失效，因为7036消除了中断共享以及其他硬件限制，之前的work aroud会引起7036的bug

- **硅前 GPIO 验证与 PMIC 低功耗状态保持适配**：验证gpio功能，并配合硬件数字设计工程师debug和编写 gpio latch和PMIC相关的低功耗模式下保持gpio设定功能（上拉或下拉）的驱动。

- **Cache/XIP 架构验证与多核共享驱动重构**：验证cache和XIP，psram， cache，修改cache和sfc/smc驱动适配新的芯片架构，消除了7036上多核共用cahe那部分work aound驱动。



## **Continue of 上海物骐微电子有限公司 (Wuqi Microelectronics)**

嵌入式软件工程师 | 华为项目驻场开发

- **【项目三】公司重要客户是华为和歌尔，立项2022年底立项Julu2项目（一个项目三个产品线，耳夹式蓝牙耳机，脖颈挂式骨传导蓝牙耳机，眼镜），公司安排10-15个人左右的团队到华为东莞松山湖公司出差，该项目主要任务是我们的7036芯片SDK适配华为的操作系统liteOS（类linux系统），适配华为的蓝牙host和上层应用，支持三个产品线。**

- **联合研发体系融入与 LiteOS 容器化环境构建**：学习liteOS系统，参与华为培训，学习如何docker容器化环境下嵌入式开发等等，参与华为考核，正式进入华为歌尔和我司合作的项目。

- **OpenHarmony LiteOS 深度移植与致命死锁化解**：负责7036的SDK 驱动等适配到 liteOS，主要负责把 NOR flash 驱动适配到 liteOS的 MTD device子系统结点，gpio，RTC， gp timer，SPI， I2C ,WDT 等底层驱动适配到华为lite OS的 字符设备 char device 和io_ctrl系统调用systemcall上。主要是完善flash驱动的残缺和bug，比如liste os要求flash适配写保护功能，但该功能的适配严重影响flash的XIP片内执行，导致系统异常hang死。深入研究NOR flash手册并研究NOR flash工作原理，发现Nor flash写保护功能操作flash内部非易失寄存器需要很长时间，这个操作会阻塞SFC，进而阻塞cache和总线，cpu pipe line也被冻住，中断不能响应，pwic内的全局watchdong触发芯片复位。解决办法是，Nor flash提供了临时改变内部控制寄存器的命令，该命令只修改flash内部易失控制器寄存器，这个操作立即就能成功返回，延时极端。

- **多核异构 DFx 维测基建与 Xtensa 架构上下文恢复**：负责DFx子系统的适配，这个也就维测子系统。针对7036的复杂异构系统，利用 cpu核所在子系统下的watchdog和pmic全局watchdog、NMI (不可屏蔽中断) 与 PMP (物理内存保护) 等硬件机制，从零构建全局异常捕获框架。精准拦截跨子系统死锁、栈溢出及非法内存访问，生成 Coredump 文件，并用addr2line工具链写脚本解析系统crashlog，快速找出系统崩溃时的源码文件行号，为这三条产品线的顺利量产提供决定性保障。该任务难点在于需要同时设计应用子系统core0，蓝牙子系统core1 和xtensa hifi5 dsp子系统的异常检查。其中，core0/core1是riscv核，是我熟悉的，适配起来也容易，最难的就是xtensa hifi5 dsp，这是个高并行执行和乱序执行的高性能dsp，需要深刻理解xtensa hifi5 dsp的异常模型，通用寄存器分可见窗口寄存器16个，实际register file是64个，跟中断处理跟arm Coretex-A的GIC一样，分4个常level el0到el3.

- **XIP 架构极限 JTAG 调试方法学创新**：在这个7036复杂异构XIP系统下，创造性的发现了一种利用JTAG GDB debug方法。之前的同事认为JTAG GDB debug的作用更多的在芯片硅前验证阶段，流片后几乎没人用gdb 调试，因为NOR flash XIP系统上没有实现通过cache写入flash操作（难以实现，他们觉得没有必要只为了debug实现这块的硬件和软件），所以，没办法用gdb load命令去下载代码到flash内部，因为很多代码都是需要放到Nor flash里面才能执行。然后=不信邪的我非要jtag debug，他们都叫我这是浪费时间，最终我找到了一个方法，那就既然不能gdb load代码，那就不用gdb load,让boot loader去load代码，gdb连上以后只需要打断点然后continue。发现果然可行，如果需要debug flash内部的代码需要打硬件断点。这个方法也使得我能够debug flash卡住等艰难的问题，我还把该debug方法分享给团队内其他同事比如负责音频的同事，使他的音频方面的debug工作快速收敛并得到表彰。

- **跨子系统级核心 Bug 攻坚与千万级量产护航**：利用以上方法，为团队其他人的debug工作提供分析debug支持，解决了非常多的系统级、硬件级、跨子系统级bug，比如 DSP子系统异常重启，内存踩踏，内存泄漏等等。单线uart概率性无法通行问题，终三个产品线成功量产，并且耳夹式耳机销量火爆国内外。



## **湖北恒隆企业集团上海汽车电子研发有限公司** 2019.04 - 2020.07

嵌入式软件工程师 | 上海，浦东新区

- 基于 NXP S32K14x 平台开发 EPS 系统存储服务模块驱动，遵循 AUTOSAR 4.x 架构与 ISO 26262 功能安全标准。

- 运用 C 语言为 AUTOSAR OS 研发模拟 EEPROM 驱动 (基于 NAND Flash)，实现高寿命磨损均衡算法以确保 20 年数据保持。

- 基于 UDS 和 CAN 协议完成存储服务模块单元测试，利用 Python 开发自动化配置文件生成工具链。

- **离职原因：** 后期同事流失严重，加班急剧变多。



## **易兆微电子 (杭州) 有限公司** 2018.03 - 2019.04

嵌入式软件工程师 | 上海，浦东新区

- 为 ARM Cortex-M0 MCU 开发底层外设驱动 (SPI, I2C, PWM, ADC)，完成陀螺仪 (MPU-6050) 及电池监控模块驱动开发。

- 利用 Ellisys 蓝牙协议分析仪进行抓包，诊断并解决蓝牙设备的连接丢失问题。

- 引入数学统计方法 (极大似然估计与贝叶斯公式) 处理蓝牙 RSSI 数据序列，开发防丢设备的高精度距离估算算法。

- **离职原因：** 发展前景有限，能学到的底层技能有限。



## **中国铁建重工集团有限公司新疆分公司** 2017.07 - 2017.12

现场技术支持 | 乌鲁木齐

- 参与产品学习，协助工程任务，并在现场提供技术支持。

- **离职原因：** 专业不匹配及对工作内容缺乏兴趣，工作 5 个月后自愿离职。



# 个人/开源项目 Open Source Projects
## ****QemuRTOS****

- **项目URL：**https://github.com/kevin-825/QemuRTOS

- **项目简介** QemuRTOS是为了学习研究RTOS内核设计而开发的实验性的实时操作系统（RTOS）开发平台，目前适配RISC-V 32/64 virt虚拟开发板和arm AArch64 virt虚拟开发板和arm Cortex-M virt虚拟开发板。适合编写RTOS内核，非常适合研究学习GIC/APLIC/PLIC/NVIC等硬件，学习研究RTOS内核设计和实现。目前已完成bring up和内存管理malloc，printk，uart ns6550和pl011驱动。基于kconfig和make file的Docker 容器化的构建系统，支持一键编译生成可运行可执行elf文件和运行在qemu上。



## ****QemuEmbeddedLinux****

- **项目URL：**https://github.com/kevin-825/QemuEmbeddedLinux

- **项目简介** QemuEmbeddedLinux为了学习Linux foundation也就是linux基金会官方提供的Linux kernel internal and development（LFD 420 ）课程而创建的。rootfs构建工具选择的是buildroot，基于Docker容器化的编译环境里编译。boot loader用的ARM ATF + uboot，支持一键编译生成rootfs，Imgaze, vmlinux,uboot.bin, bl.bin，genimage 打包成Sdcard image和直接运行在qemu。启用了ccache，编译非常快速。非常适合学习研究Linux内核开发，kernel module开发，驱动开发，系统调优，内核调试等。也适合学习研究arm和riscv架构的底层开发，芯片Bring-up等。

- **技术栈：** C, Python, Shell Script, Buildroot, U-boot, ARM Trusted Firmware (ATF), QEMU, Docker, riscv, AARCH64.



## ****EmbeddedDevContainer****

- **项目URL：**https://github.com/kevin-825/EmbeddedDevContainer

- **项目简介** EmbeddedDevContainer是一个嵌入式开发环境容器化项目，基于Docker构建，包含了从零写的多个Dockerfile和Dockerfile模板，适用于支持以上两个项目的容器化，理论上经过简单修改添加内容来支持任何项目容器化开发。目前该项目包含了用于编译GNU tool chain（gcc，gdb等）的Docker image Dockerfile，和arm/riscv交叉编译环境的Docker image Dockerfile。这个项目的目标是为了让嵌入式开发者能够快速搭建一个功能完善的嵌入式开发环境，避免繁琐的环境配置过程，提高开发效率。

- **技术栈：** Docker, GNU tool chain, Shell Script.



# 专业进修/进阶培训 Continuous Education & Advanced Training
## 2023.01 – 2023.06

**Linux Foundation LFD420 Linux Kernel Internal and Development** | Linux Foundation

- **课程URL：**https://training.linuxfoundation.org/training/linux-kernel-internals-and-development

- 深入研究 Linux 内核架构，涵盖内核模块开发、设备驱动编写、内核调试与性能优化。

- **核心项目：** 基于 QEMU 模拟器构建了一个完整的嵌入式 Linux 系统，适配 RISC-V 和 ARM 架构。

- **技术栈：** C, Python, Shell Script, Buildroot, U-boot, ARM Trusted Firmware (ATF), QEMU, Docker, RISC-V, AARCH64.



## 2023.07 – 2023.12

**Developing Embedded Linux Device Drivers (LFD435)** | Linux Foundation

- 专注于嵌入式 Linux 设备驱动开发，涵盖字符设备、块设备、网络设备等多种类型。

- **核心项目：** 开发了一个基于 ARM Cortex-M 的自定义外设驱动，并成功集成到 Linux 内核中。

- **技术栈：** C, Linux Kernel, Device Tree, ARM Cortex-M.



## 2024.01 – 2024.06

**Embedded Linux Development (LFD450)** | Linux Foundation

- 全面掌握嵌入式 Linux 开发流程，涵盖系统构建、驱动开发、性能调优和安全加固。

- **核心项目：** 构建了一个基于 RISC-V 的安全嵌入式 Linux 系统，集成了 SELinux 安全模块。

- **技术栈：** C, Linux Kernel, Buildroot, SELinux, RISC-V.



## 2020.07 – 2020.12

**EF英孚教育成人英语听说课程** | EF English First 上海线下俱乐部 + 在线全球真人课程

- 通过沉浸式英语环境和专业教师指导，系统提升了英语听说能力，达到流利交流水平。

- 课程内容涵盖日常对话、职场沟通和技术英语。



## 2021.02 – 2021.03

**Introduction to Linux (LFS101)** | linux基金会官方课程，linux kernel维护者全英文讲课

- **课程URL：**https://training.linuxfoundation.org/training/introduction-to-linux/#

- 系统学习发行版Linux比如ubuntu的安装到操作系统基础，涵盖文件系统、权限管理、Shell 脚本编写和系统管理。

- 通过实践项目掌握 Linux 环境下的常用工具和命令行操作。



## 2021.01 – 2021.06

**MIT 6.004 Computation Structures** | MIT OpenCourseWare 在线公开视频课程，全英文讲课

- 深入学习计算机体系结构，涵盖数字逻辑设计、处理器架构、内存系统和并行计算。

- **核心项目：** 该课程是CPU设计课程，作为软件工程师，我选择只是学习了CPU内部的数字逻辑的工作原理，主要是为了学习 流水线pipeline，mmu，TLB等的工作原理，以及比较先进的多发射乱序执行的CPU架构的工作原理。

- **技术栈：** MMU，cache，TLB，cpu设计。



## 2022.07 – 2022.12

**LFD108x Linux Tools for Software Development** | Linux Foundation

- 深入学习 Linux 开发工具链，涵盖 GNU 工具链、调试器、性能分析工具和版本控制系统。

- **核心项目：** 使用 GDB 和 Valgrind 对一个复杂的 C 项目进行性能分析和内存泄漏检测，优化了程序性能并修复了多个内存相关的 Bug。

- **技术栈：** GNU 工具链 (GCC, GDB), Valgrind, Git, C。



# 教育经历 Education
## 2013.09 - 2017.07 #h(1em) **西北工业大学 (985/211、双一流)** #h(1em) 电子信息工程 (EE) #h(1em) 本科，工学学士 #h(1em) 西安- 主要学习模拟/数字电路原理设计，微机原理与架构(MCU/DSP)，信号处理（连续/离散信号处理、统计信号处理及估计理论）



## 2010.09 - 2013.07 #h(1em) **厦门外国语学校 (厦门市重点高中)** #h(1em) 高中毕业 #h(1em) #h(1em) 厦门

# 兴趣爱好 Interests
爬山，古典瑜伽，阅读，mysticism，登山，yoga & meditation，徒步旅行,写代码，linux kernel
