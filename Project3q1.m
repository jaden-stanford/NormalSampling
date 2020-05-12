data = exprnd(10, 1, 10000);
histogram(data)
title('n=1')
total = sum(data);
mean = total/10000
standarddev = std(data)