data = exprnd(10, 10, 10000);
matrix = zeros(10000);
means = matrix(1,:);
for i = 1:10000
 values = data(:, i);
 average = sum(values)/10;
 means(i) = average; 
end
histogram(means)
title('n=10')
xlabel('Value')
ylabel('Frequency')
meanval = sum(means)/10000
standarddev = std(means)