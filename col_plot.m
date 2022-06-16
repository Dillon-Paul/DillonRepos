function [count_col_1, count_col_2, count_col_3] = col_plot(Data)

%extract size of data
[numRow,numCol] = size(Data);

%make a vector to use for xaxis values
x = [1:1:numRow];

hold on
plot(x,Data(:,1)) %plot first col
plot(x,Data(:,2)) %plot second col
plot(x,Data(:,3)) %plot third col
set(gcf,'color','w') %set background to white
legend('column 1','column 2','column 3') %col_1 is blue, col_2 is red, col_3 is yellow
title('Custom Title')
xlabel('X-Axis Label')
ylabel('Y-Axis Label')
box on


a = [0,0,0]; %initialize vector to count col values > 50
for i = 1:numCol % nested for loop to go through every value in 2D array
    for j = 1:numRow       
        if Data(j,i) > 50
            a(i) = a(i) + 1;
        end
        
        
    end
end

%set col counts 
count_col_1 = a(1);
count_col_2 = a(2);
count_col_3 = a(3);


end
