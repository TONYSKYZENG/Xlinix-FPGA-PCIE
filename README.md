# Xilinx DMA IP Projects
This is a back-up project for developping xlinix FPGA PCIE accelerator, using XDMA mode
## linux-kernel

The DMA driver provided by xilinx, tested under kernel 5.0+
### known issues
Please only use the polling mode for driver loading in jetson agx platform, as interrupt mode has some troubles.
-Under the linux-kernel/tests, using
sudo ./load_driver.sh 4
## ip
The AXI-compatable Ip under vitls

## vivado
The vivado project
## program
The host c progam to access my ip, loaded after the XDMA driver
* [Xilinx PCIe Forum](https://forums.xilinx.com/t5/PCIe-and-CPM/bd-p/PCIe)
