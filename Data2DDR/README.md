# zybo_ps-pl
Brief:
the system creates a .bmp image on linux OS to be built by petalinux. the raw image data is obtained from the PL part of the ZYNQ device
the project is tested on ZYBO board

+-------------------------------------+------------------+\
|------------------+        +-------+ |    +-----------+ |\
||                 |        |       | |    |           | |\
|| 8-bit Counter   +------->+ DMA   +----->+  ZYNQ PS  | |\
||                 |        |       | |    |           | |\
+------------------+        +-------+ |    +-----------+ |\
|                                     |                  |\
|                                     |                  |\
|                                     |                  |\
|     PL                              | PS               |\
|                                     |                  |\
+-------------------------------------+------------------+\


