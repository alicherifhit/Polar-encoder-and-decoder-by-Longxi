function [ x ] = temp(x)
n = 8;
N = 256;
bitreversedindices=zeros(N,1);

for i=1:N
    bitreversedindices(i) = bin2dec(wrev(dec2bin(i-1,n)));
    %bitreversedindices�����洢�������ŵ�˳��
end

tempX = zeros(N,1);%tempX������ʱ�洢�������ź��x
for i=1:N
    tempX(i) = x(bitreversedindices(i)+1);
end
x=tempX;%x��Ϊ������
end