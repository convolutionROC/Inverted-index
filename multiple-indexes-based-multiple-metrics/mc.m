% Latin-hypercube sampling
% by kai zhang

clc
clear

N=128;
ma_st=eye(N);

block=1/16;
for i=1:16
    for j=1:N
        m(i,j)=block*rand()+block*(i-1);
    end
end

for i=1:N
    sor=randperm(16);
    m(:,i)=m(sor,i);
end

for i=1:N
    ma_st(i,i)=m(1,i);
end
save MC1 ma_st;

for i=1:N
    ma_st(i,i)=m(2,i);
end
save MC2 ma_st;

for i=1:N
    ma_st(i,i)=m(3,i);
end
save MC3 ma_st;

for i=1:N
    ma_st(i,i)=m(4,i);
end
save MC4 ma_st;

for i=1:N
    ma_st(i,i)=m(5,i);
end
save MC5 ma_st;

for i=1:N
    ma_st(i,i)=m(6,i);
end
save MC6 ma_st;

for i=1:N
    ma_st(i,i)=m(7,i);
end
save MC7 ma_st;

for i=1:N
    ma_st(i,i)=m(8,i);
end
save MC8 ma_st;

for i=1:N
    ma_st(i,i)=m(9,i);
end
save MC9 ma_st;

for i=1:N
    ma_st(i,i)=m(10,i);
end
save MC10 ma_st;

for i=1:N
    ma_st(i,i)=m(11,i);
end
save MC11 ma_st;

for i=1:N
    ma_st(i,i)=m(12,i);
end
save MC12 ma_st;

for i=1:N
    ma_st(i,i)=m(13,i);
end
save MC13 ma_st;

for i=1:N
    ma_st(i,i)=m(14,i);
end
save MC14 ma_st;

for i=1:N
    ma_st(i,i)=m(15,i);
end
save MC15 ma_st;

for i=1:N
    ma_st(i,i)=m(16,i);
end
save MC16 ma_st;