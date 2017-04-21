function genVHDLencoder(N)
%GENVHDLENCODER ����Nλ��Polar Codes�ı�����;N���볤��2��n�η���N��
n = ceil(log2(N));
fileName = sprintf('encoderN%d',N);

fID = fopen(sprintf('encoderN%d.vhd',N),'w');
fprintf(fID,'LIBRARY IEEE;\n');
fprintf(fID,'USE IEEE.std_logic_1164.ALL;\n');
fprintf(fID,'USE IEEE.numeric_std.ALL;\n\n');
�ο��ܲ���TB
fprintf(fID,'\nEND rtl;\n');

end

