function u=pdecode_LLRs(initial_LLRs,myfrozenlookup)
% 
%    Usage :
%       pdecode_LLRs(initial_LLRs,myfrozenlookup)
%
% initial_LLRs    : The channel-independent, initial LLRs, which is
%                   sufficient for a SC decoder.
% ���輫��·������ֵ��������SC�����Կ���ֱ�Ӹ�������ߵ�LLR��������ֱ��Ӳ�þ���

global PCparams;

if(nargin==1) % When no special frozen-bits supplied
    myfrozenlookup=PCparams.FZlookup;
end

N=PCparams.N;

% Initializing the likelihoods (i.e. the right end of the butterfly str)
PCparams.LLR = 0; %PCparams.BITS=-1;  LLR֮������2*N-1λ������Ϊ������4λ���룬��ô��1+2+4��LLR��Ҫ�㡣

PCparams.LLR(N:2*N-1) = initial_LLRs;  %����N��2*N-1��LLR�����ұߵ�LLR

d_hat = zeros(N,1);
% finalLRs = zeros(N,1); %DEBUG
for j=1:N
    
%         i = bitreversed(j-1,PCparams.n) +1 ; 
        i = PCparams.bitreversedindices(j) +1 ; % "+1" is to compensate matlab indexing (starting with 1 instead of 0)
        %�����i�Ƿ������Ź���
        updateLLR(i);
%         finalLRs(i) = PCparams.LLR(1); %DEBUG
        
    if myfrozenlookup(i) == -1
        if PCparams.LLR(1) > 0  %PCparams.LLR(1) ���Ǹ�������ߵ�LLRӲ�þ�
            d_hat(i) = 0;
        else
            d_hat(i) = 1;
        end
    else
        d_hat(i) = myfrozenlookup(i);
    end
    
        updateBITS(d_hat(i),i);    %Ӳ�þ�ÿһ��λ֮�󣬰Ѽ�����ĵ�ǰ�Ľ���������Ҹ��£��Ա�����uhat�Ľ�һ������
end

u = d_hat ( myfrozenlookup == -1);

end