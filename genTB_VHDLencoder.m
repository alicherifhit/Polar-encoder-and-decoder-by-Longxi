function genTB_VHDLencoder(N)
%GENVHDLENCODER ����Nλ��Polar Codes�ı�����;N���볤��2��n�η���N��
n = ceil(log2(N));
fileName = sprintf('tbInVivado_encoderN%d',N);

fID = fopen(sprintf('tbInVivado_encoderN%d.TXT',N),'w');
for i=1:N
    fprintf(fID,'add_force {/encoderN%d/in%d} -radix hex {0 0ns};\n',N,i);
end

end

