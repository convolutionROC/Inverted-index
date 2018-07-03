%there is one index
%read paper by Sivic in 2003
%by zhang kai
%2016/0712

clc
clear

%% set the para
numClusters = 2^5;

%% read the data
%data_train = fvecs_read('sift_base.fvecs');
data_train = fvecs_read('sift_base.fvecs');
[dim,numFea] = size(data_train);
%data_query = fvecs_read('sift_query.fvecs');
%data_query_truth = ivecs_read('sift_groundtruth.ivecs');

% ma_st=eye(128);
% ma_sta=randperm(128);
%  for i=1:128
%      ma_st(i,:)=sqrt(ma_sta(i))*ma_st(i,:);
%  end
%load M2;


%% visual words
%[centers, assign] = vl_kmeans(data_train, numClusters,'verbose', 'distance', 'l2');
[assign_,centers_] = kmeans(data_train', numClusters,'distance','sqeuclidean');
centers=centers_'; assign=assign_';

dlmwrite('visualWord.txt',centers);

%% inverted index
for i = 1:numClusters
    temp = find(assign==i);
    InvertedIndex{i} = temp;
end
save InvertedIndex;

% class_num = 10000;
% centerFile = zeros(numClusters,class_num);
% temp=ones(numClusters,1);
% for i = 1:numFea
%      if centerFile(assign(i),temp(assign(i)))==0
%         centerFile(assign(i),temp(assign(i)))=i;
%         temp(assign(i))=temp(assign(i))+1;
%     else
%         printf('it is a bug\n');
%     end
% end
% 
% dlmwrite('invertedFile.txt',centerFile);


