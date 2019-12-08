function p = mp3(e) % The e is the experimental points. 
x = e(:,1); % The input should be in a nx2 matrix, for example e = [1,2;3,4].
y = e(:,2); 

A = size(e);
s = A(1:1);
m = s - 1;
sz = size(10);
ne = zeros(sz);

if s <= 10
    for n = 1:m
        a = polyfit(x, y, n);
        b = polyval(a, x);
        c = norm(y-b);
        ne(n) = c;
    end
elseif s > 10
    for n = 1:10
        a = polyfit(x, y, n);
        b = polyval(a, x);
        c = norm(y-b);
        ne(n) = c;
    end
end

min1 = min(ne);
min2 = min(min1);
z = find(ne == min2);
p = polyfit(x, y, z);

fprintf('The coefficients are: %.2f\n',p);

