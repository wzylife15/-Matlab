clc;clear;
%���Լ�֧����΢�ź�������ÿ����ֽ���ͳ�Ƴ����Ƴ�31*3���
dailyInOut=importdata('dailyInOut.xlsx');
for i=1:3
    separate=dailyInOut(:,i);
In{i}=separate(separate>0);
Out{i}=separate(separate<0);
end
disp('    ֧����          ΢��          ������          �ϼ�')
I=[sum(In{1}) sum(In{2})  sum(In{3})];
O=[sum(Out{1}) sum(Out{2} ) sum(Out{3})];
disp(['����'  num2str([I sum(I)])])
disp(['֧��'  num2str([O sum(O)])])
disp(['�ϼ�                                            '  num2str([sum(O+I)])])