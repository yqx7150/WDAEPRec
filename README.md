# WDAEPRec
The Code is created based on the method described in the following paper:
S. Wang, J. Lv, Y. Hu, D. Liang, M. Zhang, Q. Liu, Denoising Auto-encoding Priors in Undecimated Wavelet Domain for MR Image Reconstruction
## Motivation
Compressive sensing is an impressive approach for fast MRI. It aims at reconstructing MR image using only a few under-sampled data in k-space, enhancing the efficiency of the data acquisition. In this study, we propose to learn priors based on undecimated wavelet transform and an iterative image reconstruction algorithm. At the stage of prior learning, transformed feature images obtained by undecimated wavelet transform are stacked as an input of denoising autoencoder network (DAE). The highly redundant and multi-scale input enables the correlation of feature images at different channels, which allows a robust network-driven prior. At the iterative reconstruction, the transformed DAE prior is incorporated into the classical iterative procedure by the means of proximal gradient algorithm. Experimental comparisons on different sampling trajectories and ratios validated the great potential of the presented algorithm. 
### Fig
![repeat-WDAEPRec](https://github.com/yqx7150/WDAEPRec/blob/master/fig/fig1.png)
### Fig
![repeat-WDAEPRec](https://github.com/yqx7150/WDAEPRec/blob/master/fig/fig2.png)
### Table
![repeat-WDAEPRec](https://github.com/yqx7150/WDAEPRec/blob/master/fig/table1.png)
## Requirements and Dependencies
    MATLAB R2016b
    Cuda-9.0
    MatConvNet
    (https://pan.baidu.com/s/1ZsKlquIHqtgJYlq3iKNsdg Password：p130)
    Pretrained Model
    (https://pan.baidu.com/s/1Aa22avm0499VWq7kMvuoXA Password：sjuu)
    
