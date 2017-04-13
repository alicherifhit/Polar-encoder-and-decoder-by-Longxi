function x=encodeLongxi(N,K,u,design_channelstring,design_channelstate) %Optional: N0, designSNRdB and silentflag (last three arguments)
addpath(genpath('./forDecode'));
addpath(genpath('./forEncode'));
%加入子文件夹的函数

%输入global PCparams可以看全局参数
global PCparams;

frozenbits=zeros(N-K,1);

n = ceil(log2(N));
N = 2^n;
PCparams = struct('N', N, ...
    'K', K, ...
    'n', n, ...
    'FZlookup', zeros(N,1), ...
    'design_channelstate', design_channelstate, ...
    'LLR', zeros(1,2*N-1), ...
    'BITS', zeros(2,N-1),...
    'bitreversedindices',zeros(N,1),...
    'index_of_first0_from_MSB',zeros(N,1),...
    'index_of_first1_from_MSB',zeros(N,1));

for i=1:N
    PCparams.bitreversedindices(i) = bin2dec(wrev(dec2bin(i-1,PCparams.n)));
    %bitreversedindices用来存储反序重排的顺序
    
    %FINDING FIRST INDEX OF '1'
    i_bin = dec2bin(i-1,PCparams.n);
    for lastlevel = 1:PCparams.n
        if i_bin(lastlevel) == '1'
            break;
        end
    end
    PCparams.index_of_first1_from_MSB(i) = lastlevel;
    
    %FINDING FIRST INDEX OF '0'
    i_bin = dec2bin(i-1,PCparams.n);
    for lastlevel = 1:PCparams.n
        if i_bin(lastlevel) == '0'
            break;
        end
    end
    PCparams.index_of_first0_from_MSB(i) = lastlevel;
    
    
end

% disp(PCparams);

%PCparams.FZlookup = [0;0;0;-1;0;-1;-1;-1];
% PCparams.FZlookup = -ones(16,1);
PCparams.FZlookup = construct(N,K,design_channelstring,design_channelstate,frozenbits);
PCparams.design_channelstate = design_channelstate;
F=kronF(PCparams.n);
% u=[1;0;1;0;1;0;1;0;1;0;1;0;1;0;1;0];
x = PCparams.FZlookup; %loads all frozenbits, incl. -1
x (x == -1) = u;%混合信息比特和冻结比特
x=mod(x*F,2);%mod2
tempX = zeros(N,1);%tempX用来暂时存储反序重排后的x
for i=1:N
    tempX(i) = x(PCparams.bitreversedindices(i)+1);
end
x=tempX;%x作为最后输出
end


