function [ Fii ] = kronF( n )
%kronF ͨ�������ڿ˻��������ɾ���F
%   nΪlog2��N��
F1 = [1 0;1 1];
Fii= [1 0;1 1];
for ii=1:n-1
    Fii = kron(F1,Fii);
end
end

