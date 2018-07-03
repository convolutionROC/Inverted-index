%there is one inverted index
%for retrival
%read paper by Sivic in 2003
%by zhang kai
%2016/0207


clc
clear;
%% read the data
%data_query = fvecs_read('sift_query.fvecs');
data_query = fvecs_read('sift_query.fvecs');
[m , n] = size(data_query);
%data_query_truth = ivecs_read('sift_groundtruth.ivecs');
data_query_truth = ivecs_read('sift_groundtruth.ivecs');
visualWord = importdata('visualWord.txt');
[m1 , wordM] = size(visualWord);
%InvertedIndex = importdata('invertedFile.txt');
load InvertedIndex;

%% retrival
data_query=ma_st*data_query;
X1 = data_query';
X2 = visualWord';
%'cityblock'
distance = pdist2(X1,X2);
dis_new = distance';
[value , word] = min(dis_new);

num_total=0;
for i = 1:n
    y1 = data_query_truth(:,i)';
    y2 = InvertedIndex{word(i)};
    y2=y2-1;
    [num_m,num_n]=size(y2);
    num_total=num_total+num_n;
    [hang , recall_num(i)] = size(intersect(y1,y2));
    recall(i) = recall_num(i)/100;
end

recall_total = sum(recall)/n
num_total=num_total/n

