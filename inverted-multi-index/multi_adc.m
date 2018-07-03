%the inverted multi-index
%by zhang kai
%20170605
clc
clear

numClusters=16;

data_t = fvecs_read('siftsmall_base.fvecs');
data_train=data_t';
[num,dim] = size(data_train);
num_f=dim/2;

data_train1=data_train(:,1:num_f);
data_train2=data_train(:,(num_f+1):end);

[assign_,centers_] = kmeans(data_train1, numClusters,'distance', 'sqeuclidean');
assign1=assign_';centers1=centers_';
save centers1 centers1

[assign2_,centers2_] = kmeans(data_train2, numClusters,'distance', 'sqeuclidean');
assign2=assign2_';centers2=centers2_';
save centers2 centers2

for i = 1:numClusters
    temp = find(assign1==i);
    index1{i} = temp;
    temp2 = find(assign2==i);
    index2{i} = temp2;
end

save index1 index1
save index2 index2

