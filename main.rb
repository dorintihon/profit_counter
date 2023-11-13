def stock_picker(array)
  buy_on = 0
  sell_on = 0
  price = 0
  profit = 0
  array.each_with_index do |buy, buy_index|
    array.each_with_index do |sell, sell_index|
      if buy_index < sell_index
        price = sell - buy
        if price > profit
          profit = price
          buy_on = buy_index
          sell_on = sell_index
        end
      end
    end
  end
  p [buy_on, sell_on]

end

stock_picker([17,3,6,9,15,8,6,1,10])
