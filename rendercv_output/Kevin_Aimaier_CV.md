# Kevin Aimaier's CV

- Phone: +86 185 0162 1780
- Email: [kflyn825@outlook.com](mailto:kflyn825@outlook.com)
- Location: 武汉
- GitHub: [kevin-825](https://github.com/kevin-825)


# Education
## 2013.09 - 2017.07 #h(1em) **西北工业大学 (985/211、双一流)** #h(1em) 电子信息工程 (EE) #h(1em) 本科，工学学士 #h(1em) 西安- 主要学习模拟/数字电路原理设计，微机原理与架构(MCU/DSP)，信号处理（连续/离散信号处理、统计信号处理及估计理论）



## 2010.09 - 2013.07 #h(1em) **厦门外国语学校 (厦门市重点高中)** #h(1em) 高中毕业 #h(1em) #h(1em) 厦门

# Skills
**编程语言:** C (8 年底层与驱动实战), Python, Bash Shell, Matlab/Simulink, JIM tcl, JSON/YAML, powershell.

**处理器架构:** 深入掌握 RISC-V, ARMv7/v8-M, AArch64 以及 Xtensa DSP 指令集架构；精通多种中断控制模型 (CLINT/PLIC/AIA, NVIC/GIC)、特权/异常模型 (Machine/User mode, EL0-EL3) 及内存保护单元 (PMP/MPU, MMU 与 Cache 一致性).

**芯片底层开发:** 具备多家芯片原厂 SoC 开发经验，熟悉内部总线 (AHB/APB, Matrix/Arbiter)；熟悉 FPGA 硅前/硅后 Bring-up 验证；熟练开发 BootROM/Bootloader 及底层 HAL 驱动 (涵盖 I2C, SPI, UART, WDT, DMA, NOR/NAND, DDR 控制器等).

**操作系统内核:** 具备丰富的 RTOS (FreeRTOS, LiteOS) 及 Linux 内核实战经验；深入理解内核任务调度 (CFS/FIFO/RR)、内存寻址与管理、同步原语及 VFS/sysfs 子系统；熟练掌握 Linux 字符设备驱动、设备树 (Device Tree)、构建系统 (Buildroot, Kconfig) 及系统初始化流程 (U-boot, initrd, systemd).

**调试与工具链:** 精通 GNU 工具链 (GCC, GDB, nm, objdump) 及 CMake/Makefile 构建；具备丰富的底层 Debug 经验 (Trace, 内存踩踏/泄漏, Coredump, 宕机现场分析)；熟练应用 QEMU 模拟器、Docker 容器化开发以及 CI/CD (GitLab, Jenkins) 自动化流程.

**综合与进阶:** 熟练运用 Generative AI (Gemini Pro, Copilot) 进行辅助编程与复杂问题排查；具备极强的全英文原版技术文献解析与自主学习能力 (持续跟进 MIT OCW, Linux Foundation 等前沿硬核课程).

# Experience
## 2025.01 - 2025.05

**合肥君正科技有限公司**

嵌入式软件工程师 | 合肥和武汉分公司

“参与自研异构 AI MCU SoC在FPGA上硅前验证，该芯片是RISC-V 大小核架构 + TNPU，带MMU和64KB Cache（64Byte 8-way i/d cache line），大核性能对标arm coretex-A15及以上，面向安防/学习机/扫地机器人/边缘AI 等应用场景。”

- **提议集成JTAG并软硬联调**：在极度缺乏 FPGA 验证资源（8-10人共用2台，周末无休）且无 JTAG 调试环境的情况下，提议并推进 JTAG 模块集成，并配合 SoC 部门耗时一月有余修复 GDB JTAG断链不稳定问题以及JTAG子板问题，成功拉起首套稳定可用的GDB OpenOCD JTAG软硬联调环境，结束了只靠串口打印的“盲人摸象”式无效和FPGA拉线看波形的低效debug窘境，使得debug体验效率有质的提升。

- **PLIC中断嵌套实现**：无JTAG debug手段的情况下，利用生成式AI（ChatGPT，Copilot和Gemini Pro）完成了复杂的QEMU模拟器模拟riscv CPU和PLIC硬件，完成 CPU 与 PLIC 的软硬件协同仿真，在这个模拟环境下运行FreeRTOS Demo并完成PLIC嵌套中断功能开发，完成开发后 FPGA 上运行验证，成功排查出 SoC 部门提供的子系统中断号偏移的Bug，使能58号中断结果60号中断触发58不触发。

- **Cache/Spinlock底层适配优化**：研发cache驱动以支持cache flush/invalidate操作（按地址刷和按cache set index刷）。编写spinlock底层riscv汇编代码实现spinlock功能用以多核间自旋互斥操作。

- **检查修复FreeRTOS底层适配**：修复第一个任务初始化导致的栈踩踏 Bug 及临界区中断关闭恢复 Bug，协助解决自旋锁死锁。

- **静态编译windows版OpenOCD并生成容器化环境DockerImage**： 因Windows机器上开虚拟机Linux运行OpenOCD性能损失大难以满足Ghz处理器高速jtag GDB debug需求，大量运用AI 编码辅助工具（Github Copilot和Gemini Pro）编写Dockefile生成open OCD Windows版本编译环境Image，用于后续编译更新的OpenOCD源码以支持JTAG debug。OpenOCD源码静态编译Windows版OpenOCD的挑战在于其依赖包非常的多且繁杂，大部分都需要手动编译源码形成静态库才能链接到OpenOCD中，并且编译FLAG需要针对每个依赖包进行细致调整编译FLAG，最终成功生成了Windows版OpenOCD的DockerImage。有了这个容器环境，使得新手编译OpenOPCD源码的时间从2-3天缩短到5分钟，极大提升了团队成员更新OpenOCD源码的积极性和效率。

- **GDB初始化脚本编写以及调试修复严重bug**：独立编写适合当前工程的GDB init 脚本（主要包含自动加载可执行elf文件并自动连接目标版并下载，还有一些项目实用的CMD）极大缩短了调试前期工作开销。利用写好的GDB init脚本进行实战调试并调试， 反汇编内存现场分析，成功定位困扰算法部门很久的紧急 Bug（TNPU 越界写坏大核中断向量表）并且配合算法部分同事一步一步定位并成功找到触发异常的代码。

- **适配FPU浮点/向量寄存器中断上下文保存恢复**：在CPU支持FPU和向量指令的情况下，适配中断上下文保存恢复机制以支持FPU寄存器和向量寄存器的正确保存和恢复，确保在中断处理过程中这些寄存器的状态能够正确维护，避免因上下文切换导致的数据损坏或异常行为。

- **离职原因：** 主要是加班严重，前期无jtag缺少debug手段，最重要的只有2太FPGA机器8-10个人轮着用，周末基本无休都忙着debug，导致工作效率极低，后期虽然jtag debug环境搭建成功了，但是项目一开始就没有考虑出FGPA芯片image时加入JTAG电路模块，导致很多FGPA芯片image无法使用JTAG debug，TNPU的bug也是加了JTAG电路模块才得以debug成功，严重影响了后续的开发效率和体验，最终导致自愿离职。且公司管理制度比较死板，无偿加班且不能调休，而且早上上班迟到要扣工资。经协商无果，身体难以承受长时间高强度加班，选择自愿离职。



## 2024.05 - 2024.06

**博士视听系统(上海)有限公司 (Bose)**

嵌入式软件工程师 | 上海，闵行区

- 负责可穿戴设备、蓝牙耳机等消费电子产品的上层组件开发与适配。

- **离职原因：** 公司核心团队在美国，需频繁倒时差（晚上10-11点）开会，岗位匹配度低，自愿离职。



## 2021-01 - 2024-01

**上海物骐微电子有限公司**

嵌入式软件工程师 | 上海,浦东新区

- 核心参与华为 Julu2 项目，在 WQ7036 SoC (RISC-V + Xtensa HiFi5 DSP) 多核异构平台上，完成 OpenHarmony LiteOS 与 FreeRTOS 的系统级移植及底层外设驱动研发，助力三条产品线成功量产。

- 利用 WDT、NMI、PMP 等硬件机制设计并实现高可靠性异常检测/Coredump 系统，精准捕获栈溢出、零地址访问及线程死锁等错误。

- 负责 SoC 硅前 FPGA 验证及 Bring-up，开发 BootROM、Bootloader 及底层核心外设驱动 (包含 Cache, DMA, SFC Flash, DDR, I2C, SPI 等)。

- 攻坚复杂系统级难题，解决 DSP 子系统非预期重启、缺乏重启寄存器上下文时的宕机分析，以及 UART 在高负载下的异常挂死问题。

- **离职原因：** 合同 3 年期满未续签，主要原因为加班严重。



## 2019.04 - 2020.07

**湖北恒隆企业集团上海汽车电子研发有限公司**

嵌入式软件工程师 | 上海，浦东新区

- 基于 NXP S32K14x 平台开发 EPS 系统存储服务模块驱动，遵循 AUTOSAR 4.x 架构与 ISO 26262 功能安全标准。

- 运用 C 语言为 AUTOSAR OS 研发模拟 EEPROM 驱动 (基于 NAND Flash)，实现高寿命磨损均衡算法以确保 20 年数据保持。

- 基于 UDS 和 CAN 协议完成存储服务模块单元测试，利用 Python 开发自动化配置文件生成工具链。

- **离职原因：** 后期同事流失严重，加班急剧变多。



## 2018.03 - 2019.04

**易兆微电子 (杭州) 有限公司**

嵌入式软件工程师 | 上海，浦东新区

- 为 ARM Cortex-M0 MCU 开发底层外设驱动 (SPI, I2C, PWM, ADC)，完成陀螺仪 (MPU-6050) 及电池监控模块驱动开发。

- 利用 Ellisys 蓝牙协议分析仪进行抓包，诊断并解决蓝牙设备的连接丢失问题。

- 引入数学统计方法 (极大似然估计与贝叶斯公式) 处理蓝牙 RSSI 数据序列，开发防丢设备的高精度距离估算算法。

- **离职原因：** 发展前景有限，能学到的底层技能有限。



## 2017.07 - 2017.12

**中国铁建重工集团有限公司新疆分公司**

现场技术支持 | 乌鲁木齐

- 参与产品学习，协助工程任务，并在现场提供技术支持。

- **离职原因：** 专业不匹配及对工作内容缺乏兴趣，工作 5 个月后自愿离职。


