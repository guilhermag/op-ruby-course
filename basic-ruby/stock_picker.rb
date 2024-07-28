def stock_picker(stock_array)
  best_profit = {buy_idx: 0, sell_idx: 0, profit: -999}
  stock_array.each_with_index do |el, idx|
    next_idx = idx + 1;
    if idx < stock_array.length - 1
      best_profit_loop = {buy_idx: 0, sell_idx: 0, profit: -999}
      for a in next_idx..stock_array.length - 1 do
        if stock_array[a] - el > best_profit_loop[:profit]
          best_profit_loop = {buy_idx: idx, sell_idx: a, profit: stock_array[a] - el}
        end
      end
      if best_profit_loop[:profit] > best_profit[:profit]
        best_profit = best_profit_loop
      end
    end
  end
  [best_profit[:buy_idx], best_profit[:sell_idx]]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
