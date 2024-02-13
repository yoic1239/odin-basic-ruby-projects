def stock_picker(prices)
    best_buy = 0
    best_sell = 0
    best_profit = 0
    prices.each_with_index do |buy_price, buy_day|
        prices[buy_day + 1 .. -1].each_with_index do |sell_price, sell_day|
            if sell_price - buy_price > best_profit
                best_buy = buy_day
                best_sell = buy_day + 1 + sell_day
                best_profit = prices[best_sell] - prices[best_buy]
            end
        end
    end
    [best_buy, best_sell]
end