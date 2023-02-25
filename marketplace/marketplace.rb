require_relative 'product'

class Marketplace
  def initialize
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def list_products
    puts 'Lista de produtos:'
    @products.each do |product|
      puts "- #{product.name} (R$#{product.price}, estoque: #{product.quantity})"
    end
  end

  def purchase_product(name, purchased_quantity)
    product = @products.find { |p| p.name == name }
    if product.nil?
      puts "Produto #{name} não encontrado."
    else
      product.purchase(purchased_quantity)
    end
  end
end
