# Implement a method #stock_picker that takes in an array of stock prices,
# one for each hypothetical day. It should return a pair of days representing
# the best day to buy and the best day to sell. Days start at 0.

def stock_picker(stock_prices)
  buy_day = 0
  sell_day = 0
  total_profit = 0

  stock_prices.each_with_index do |buy_price, buy_day_index|
    # p "index: #{buy_day_index + 1} - price: #{buy_price}  "

    stock_prices[buy_day_index..-1].each_with_index do |sell_price, sell_day_index|
      profit = sell_price - buy_price

      if profit > total_profit
        total_profit = profit
        buy_day = buy_day_index
        sell_day = buy_day_index + sell_day_index
      end
    end
  end
  [buy_day, sell_day]
end

p stock_picker([17,3,6,9,15,8,6,1,10])
