data = exprnd(10, 30, 10000);
matrix = zeros(10000);
means = matrix(1,:);
for i = 1:10000
 values = data(:, i);
 average = sum(values)/30;
 means(i) = average; 
end
histogram(means)
title('n=30')
xlabel('Value')
ylabel('Frequency')
meanval = sum(means)/10000
standarddev = std(means)

data2 = exprnd(10,10000,30);
samples = mean(data2, 2);
margin = 1.96*10/sqrt(30);
L = samples - margin;
H = samples + margin;

count = 0;
for i = 1:10000
    if L(i) <= 10 && 10 <= H(i)
        count = count + 1;
    end
end
percent = 100 * (count/10000);