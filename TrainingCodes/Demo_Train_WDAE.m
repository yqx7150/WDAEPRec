
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%    @article{wang2019denoising,
%    title={Denoising Auto-encoding Priors in Undecimated Wavelet Domain for MR Image Reconstruction},
%    author={Wang, Siyuan and Lv, Junjie and Hu, Yuanyuan and Liang, Dong and Zhang, Minghui and Liu, Qiegen},
%    journal={arXiv preprint arXiv:1909.01108},
%    year={2019}
%    }


% https://github.com/yqx7150/WDAEPRec
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


rng('default')

addpath('utilities');
%-------------------------------------------------------------------------
% Configuration
%-------------------------------------------------------------------------
opts.modelName        = 'WDAE'; % model name
opts.learningRate     = [logspace(-3,-3,25) logspace(-4,-4,25)];% you can change the learning rate
opts.batchSize        = 128; % 
opts.gpus             = [2]; 
opts.numSubBatches    = 2;

% solver
opts.solver           = 'Adam'; % global
opts.derOutputs       = {'objective',1} ;

opts.backPropDepth    = Inf;
%-------------------------------------------------------------------------
%   Initialize model
%-------------------------------------------------------------------------

net  = feval([opts.modelName,'_Init_4channel_imageandreal']);

%-------------------------------------------------------------------------
%   Train
%-------------------------------------------------------------------------

[net, info] = WDAE_dag(net,  ...
    'learningRate',opts.learningRate, ...
    'derOutputs',opts.derOutputs, ...
    'numSubBatches',opts.numSubBatches, ...
    'backPropDepth',opts.backPropDepth, ...
    'solver',opts.solver, ...
    'batchSize', opts.batchSize, ...
    'modelname', opts.modelName, ...
    'gpus',opts.gpus) ;






