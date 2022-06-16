clear; clc; close all;
load activity_data.mat

%extract size of Data
[numRow,numCol] = size(Data);

% calculaing average of each col
for i = 1:numCol
    a(i) = mean(Data(:,i));
end
disp(a)

disp("------------") % line for separation

% plotting data from each column
[colCount(1),colCount(2),colCount(3)] = col_plot(Data);

disp(colCount)







