def stock_picker(prices)
    best_days = Array.new
    best_profit = prices[1] - prices[0]
    length_array = prices.size 

    for i in 0..length_array do
        for j in i+1..length_array-1 do

            if prices[j] - prices[i] > best_profit 
                best_profit = prices[j] - prices[i]
                x = i
                y = j
            end
        end
    end

     best_days << x << y
end

p stock_picker([17,3,6,9,15,8,6,1,10])