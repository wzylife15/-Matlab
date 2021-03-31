clc;clear;
%将自己支付宝微信和云闪付每天的现金流统计出来制成31*3表格
dailyInOut=importdata('dailyInOut.xlsx');
for i=1:3
    separate=dailyInOut(:,i);
In{i}=separate(separate>0);
Out{i}=separate(separate<0);
end
disp('    支付宝          微信          云闪付          合计')
I=[sum(In{1}) sum(In{2})  sum(In{3})];
O=[sum(Out{1}) sum(Out{2} ) sum(Out{3})];
disp(['收入'  num2str([I sum(I)])])
disp(['支出'  num2str([O sum(O)])])
disp(['合计                                            '  num2str([sum(O+I)])])