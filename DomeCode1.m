clc;clear;
%% ����
% ��������
load DemoData.mat
tt = (0:length(sig)-1)/fs;
%% NTFT�任
% ���ñ任��Χ
Frqs = -25:fs/length(sig):25;
% ���ô��ڿ��
win_len = 20;
coefs = ntft(sig,Frqs,win_len,fs,"Hanning","F");
% coefs = ntft(sig);
figure(1)
pcolor(tt,Frqs,abs(coefs))
shading interp;
colormap('jet');
colorbar
title('NTFTʱƵ��')
xlabel('Time')
ylabel('Ƶ��f / (Hz)')