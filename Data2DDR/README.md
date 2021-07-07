# zybo_ps-pl
## Getting Started
the system creates a .bmp image on a linux image built by petalinux. the raw image data is obtained from an 8-bit counter implemented on the PL part of the ZYNQ device. The project is tested on ZYBO board. This project hits upon important SoC concepts e,g conversion Stream data to Memory Mapped data (S2MM) in this case the bus protocol is [AXI](https://en.wikipedia.org/wiki/Advanced_eXtensible_Interface) which is the protocol used to transmit the data coming out of the counter to the AXI DMA of the PL to the PS via the HP port as per the table in page 55 in the [Zynq-7000 SoC TRM](https://www.xilinx.com/support/documentation/user_guides/ug585-Zynq-7000-TRM.pdf) that shows available PS-PL interfaces. The job of the AXI DMA is to convert the incoming stream data, buffer it, and then convert it to Memory Mapped (MM) data to be able to communicate with DDR controller.

#### Pre-requisites
The following Xilinx SW versions are chosen after experimenting different versions that resulted in incompatibility issues.
* Ubuntu 16.04:
    Since there are OS compatibility issues with Petalinux which result in bitbake errors while building the linux image for they Zynq, it's important to have your OS, your Vivado and petalinux on the same page.
* Vivado 2017.4
    In order to get the Hardware Description File (HDF) required for building the OS image on Petalinux, Vivado has to be the same version as the Petalinux version you are using
* Petalinux 2017.4
    I selected this specific version to try out the official [Zybo BSP](https://github.com/Digilent/Petalinux-Zybo) released by digilent, which seemed to be stable amongst the earlier versions
#### Installations
* [Vivado 2017.4 Installation Steps on Ubuntu](https://techniex.com/installing-uninstalling-vivado-2017-4-in-ubuntu-16-04/)
* [Petalinux guide UG1144 v2017.4](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2017_4/ug1144-petalinux-tools-reference-guide.pdf)
 ***Important Hint:*** *The Ubuntu 16.04 dependencies listed in the guide above are missing some packages; use this command to install the necessary petalinux dependencies.*
    $ sudo apt-get install -y python gawk gcc git make net-tools libncurses5-dev tftpd zlib1g:i386 libssl-dev flex bison libselinux1 gnupg wget diffstat chrpath socat xterm autoconf libtool tar unzip texinfo zlib1g-dev gcc-multilib build-essential libsdl1.2-dev libglib2.0-dev screen pax gzip
## Building the system block design
The purpose of this section is to illustrate the process of how block design of the system was built; This repo has design, runs and ouptut files ready.
1. Zynq7 Processing System:
After adding the block to your block design *make sure to apply the board presets by running block automation, once instantiated*, double click the block and enable the HP0 port which is one of the PS-PL interfaces as follows.
![](https://i.imgur.com/nsjFjSg.png)
Next, this is for future work, enable the Fabric interrupts (as follows) in case you wanted to use PL interrupts for further projects that requires some sort of scheduling.
![](https://i.imgur.com/imra6FK.png)
2. AXI Direct Memory Access (DMA)
Since the DMA block is carrying out a simple task which is writing data to the DRAM through communicating with the Zynq PS DDR controller, we will be disabling many of the AXI DMA features as shown below.
![](https://i.imgur.com/t9EsQWY.png)
* Disable the Scatter Gather (SG) Engine
* Maximize the width of Buffer Length Register
Since 23 bit is the maximum, this means that the register holding the number that represents the size of the buffer to be mapped to the DRAM is $$2^{23}$$ = 8MBytes. Our image size is 1MB which is to be illustrated in the C application section.
* Disable the Read Channel of the DMA since we are only writing to the DRAM
* Enable the Write Channel. *Note that the bus width is no longer the same since the streamed data has been buffered and adapted to interface with DDR controller.*
3. Vivado will then suggest to run the connection automation which will instantiate an AXI Interconnect module to translate between AXI3 and AXI4 protocols since the HP0 port support AXI3 while the AXI DMA is using AXI4. Make sure. This instance serves the AXI Lite interface of the DMA to the GP port of the Zynq PS to connect the DMA control registers to the PS.
4. PL Counter

