%出租车模型
%zmf
clc;
clear;
n = 10;%10个号码
s = 200;%200组值
k = 999;%总样本数
A = sort(floor(k * rand(n,s)+1));
x1 = mean(A);
X1 = mean(2*x1 - 1);%平均值模型
X11 = std(x1);
fprintf('由平均值模型得出平均值为%.1f 标准差为%.1f\n',X1,X11);
x2 = median(A);
X2 = mean(2*x2 - 1);%中位数模型
X21 = std(x2);
fprintf('由中位数模型得出平均值为%.1f 标准差为%.1f\n',X2,X21);
x3 = A(n,:) + A(1,:) -1;%两端对称模型
X3 = mean(x3);
X31 = std(x3);
fprintf('由两端对称模型得出平均值为%.1f 标准差为%.1f\n',X3,X31);
x4 = (1+1/n)*A(10,:)-1;%平均区间模型
X4 = mean(x4);
X41 = std(x4);
fprintf('由平均区间模型得出平均值为%.1f 标准差为%.1f\n',X4,X41);
x5 = (1+1/(2*n-1))*(A(10,:)-1/(2*n));%区间均分模型
X5 = mean(x5);
X51 = std(x5);
fprintf('由区间均分模型得出平均值为%.1f 标准差为%.1f\n',X5,X51);
x6 = A(2,:) - A(1,:);%平均区间模型推论
for i = 3:n-1
    x6 = x6 + A(i,:) - A(i-1,:);
end
X6 = mean(x6)/8;
x6 = 2 * X6 + A(n-1,:);
X6 = mean(x6);
X61 = std(x6);
fprintf('由平均区间模型推论得出平均值为%.1f 标准差为%.1f\n',X6,X61);
