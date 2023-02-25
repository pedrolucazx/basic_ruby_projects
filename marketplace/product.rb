class Product
  attr_accessor :name, :price, :quantity

  def initialize(name, price, quantity)
    @name = name
    @price = price
    @quantity = quantity
  end

  def purchase(purchased_quantity)
    if purchased_quantity > @quantity
      puts "Não há #{purchased_quantity} #{name} suficientes no estoque."
    else
      @quantity -= purchased_quantity
      puts "Você comprou #{purchased_quantity} #{name}(s) por R$#{price * purchased_quantity}."
    end
  end
end
