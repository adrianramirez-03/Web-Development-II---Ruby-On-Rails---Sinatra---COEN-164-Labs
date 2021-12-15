def sum_sq(int)
    sum = 0;
    for i in 1 .. int
        sum += i * i
    end
    print sum
end

sum_sq(7)