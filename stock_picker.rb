def stock_picker(prices)
  best_profit = 0
  best_days = []
  prices.combination(2) do |buy, sell|
    profit = sell - buy
    if profit > best_profit
      best_profit = profit
      best_days = [prices.index(buy), prices.index(sell)]
    end
  end
  best_days
end

prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
puts stock_picker(prices)
