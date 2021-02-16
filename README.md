# WDAEPRec
The Code is created based on the method described in the following paper:     
S. Wang, J. Lv, Z. He, D. Liang, Y. Chen, M. Zhang, Q. Liu, Denoising Auto-encoding Priors in Undecimated Wavelet Domain for MR Image Reconstruction, Neurocomputing, Vol. 437, pp. 325-338, 2021.      
https://www.sciencedirect.com/science/article/pii/S0925231221000990
## Motivation
Compressive sensing is an impressive approach for fast MRI. It aims at reconstructing MR image using only a few under-sampled data in k-space, enhancing the efficiency of the data acquisition. In this study, we propose to learn priors based on undecimated wavelet transform and an iterative image reconstruction algorithm. At the stage of prior learning, transformed feature images obtained by undecimated wavelet transform are stacked as an input of denoising autoencoder network (DAE). The highly redundant and multi-scale input enables the correlation of feature images at different channels, which allows a robust network-driven prior. At the iterative reconstruction, the transformed DAE prior is incorporated into the classical iterative procedure by the means of proximal gradient algorithm. Experimental comparisons on different sampling trajectories and ratios validated the great potential of the presented algorithm. 
### Figs
![repeat-WDAEPRec](https://github.com/yqx7150/WDAEPRec/blob/master/fig/Fig4_github.png)

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
    
## [<font size=5>**[Paper]**</font>](https://arxiv.org/ftp/arxiv/papers/1909/1909.01108.pdf)
        @article{wang2021WDAEPRec,
        title={Denoising Auto-encoding Priors in Undecimated Wavelet Domain for MR Image Reconstruction},
        author={Wang, Siyuan and Lv, Junjie and He, Zhuonan and Liang, Dong and Chen, Yang and Zhang, Minghui and Liu, Qiegen},
        journal={Neurocomputing},
        year={2021}
        }
## Other Related Projects
  * Multi-Channel and Multi-Model-Based Autoencoding Prior for Grayscale Image Restoration  
[<font size=5>**[Paper]**</font>](https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=8782831)   [<font size=5>**[Code]**</font>](https://github.com/yqx7150/MEDAEP)   [<font size=5>**[Slide]**</font>](https://github.com/yqx7150/EDAEPRec/tree/master/Slide)

  * Highly Undersampled Magnetic Resonance Imaging Reconstruction using Autoencoding Priors  
[<font size=5>**[Paper]**</font>](https://cardiacmr.hms.harvard.edu/files/cardiacmr/files/liu2019.pdf)  [<font size=5>**[Code]**</font>](https://github.com/yqx7150/EDAEPRec)   [<font size=5>**[Slide]**</font>](https://github.com/yqx7150/EDAEPRec/tree/master/Slide)

  * High-dimensional Embedding Network Derived Prior for Compressive Sensing MRI Reconstruction  
 [<font size=5>**[Paper]**</font>](https://www.sciencedirect.com/science/article/abs/pii/S1361841520300815?via%3Dihub)   [<font size=5>**[Code]**</font>](https://github.com/yqx7150/EDMSPRec)
 
  * Homotopic Gradients of Generative Density Priors for MR Image Reconstruction  
[<font size=5>**[Paper]**</font>](https://arxiv.org/abs/2008.06284)   [<font size=5>**[Code]**</font>](https://github.com/yqx7150/HGGDP)
 
  * Learning Priors in High-frequency Domain for Inverse Imaging Reconstruction  
[<font size=5>**[Paper]**</font>](https://arxiv.org/ftp/arxiv/papers/1910/1910.11148.pdf)   [<font size=5>**[Code]**</font>](https://github.com/yqx7150/HFDAEP)
 
  * Learning Multi-Denoising Autoencoding Priors for Image Super-Resolution  
[<font size=5>**[Paper]**</font>](https://www.sciencedirect.com/science/article/pii/S1047320318302700)   [<font size=5>**[Code]**</font>](https://github.com/yqx7150/MDAEP-SR)

  * Complex-valued MRI data from SIAT--test31 [<font size=5>**[Data]**</font>](https://github.com/yqx7150/EDAEPRec/tree/master/test_data_31)

  * Complex-valued MRI data from SIAT--SIAT_MRIdata200 [<font size=5>**[Data]**</font>](https://github.com/yqx7150/SIAT_MRIdata200)

  * REDAEP: Robust and Enhanced Denoising Autoencoding Prior for Sparse-View CT Reconstruction  
[<font size=5>**[Paper]**</font>](https://ieeexplore.ieee.org/document/9076295)   [<font size=5>**[Code]**</font>](https://github.com/yqx7150/REDAEP)
