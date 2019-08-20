clear; close;
getd = @(p)path(path,p);% Add some directories to the path
getd('./matconvnet-1.0-beta24');
getd('./mask/');
getd('./model/');
getd('./ultilies/');
getd('./');
vl_setupnn;
% set to 0 if you want to run on CPU (very slow)
useGPU = 1;
%% Reconstruction demo
%#######%%%%% read sampling %%%%
load('mask_radial85') ; mask = eval('mask_radial85'); n = size(mask,2);
fprintf(1, 'n=%d, k=%d, Unsamped=%f\n', n, sum(sum(mask)),1-sum(sum(mask))/n/n);
%#######%%%%% read test image %%%%
load Test2; gt = 255*Img./max(abs(Img(:)));
figure(334);imshow(abs(gt),[]);
%#######%%%%% generate partial samples %%%%
sigma_d = 0 * 255;
noise = randn(size(gt));
degraded = mask.*(fft2(gt) + noise * sigma_d + (0+1i)*noise * sigma_d); %
Im = ifft2(degraded); 
figure(335);imshow(abs(Im),[]);
%#######%%%%% load network for solver %%%%
load('./model/WDAEP.mat'); 
net = dagnn.DagNN.loadobj(net) ;
net.removeLayer('loss') ;
out1 = net.getVarIndex('prediction') ;
net.vars(net.getVarIndex('prediction')).precious = 1 ;
%%% move to gpu
if useGPU; net.move('gpu'); end
params.useGPU = useGPU; params.net = net; params.gt = gt;
% run WDAEPRec
[map_Rec] = WDAEPRec(Im, degraded, mask, sigma_d, net, params);
[psnr4, ssim4, fsim4, ergas4, sam4] = MSIQA(abs(gt), abs(map_Rec));
hfen4 = norm(imfilter(abs(gt/255),fspecial('log',15,1.5)) - imfilter(abs(map_Rec/255),fspecial('log',15,1.5)),'fro');
[psnr4, ssim4, hfen4,fsim4, ergas4, sam4]

%% step5 #######%%%%% display Recon result %%%%
figure(666);
subplot(2,3,[4,5,6]);imshow([abs(Im-gt)/255,abs(map_Rec-gt)/255],[]); title('Recon-error');colormap(jet);colorbar;
subplot(2,3,1);imshow(abs(gt)/255); title('Ground-truth');colormap(gray);
subplot(2,3,2);imshow(abs(Im)/255); title('Zero-filled');colormap(gray);
subplot(2,3,3);imshow(abs(map_Rec)/255); title('Net-recon');colormap(gray);
figure(667);imshow([real(gt)/255,imag(gt)/255,abs(gt)/255],[]); 
figure(668);imshow([abs(Im-gt)/255,abs(map_Rec-gt)/255],[]); colormap(jet);colorbar;


