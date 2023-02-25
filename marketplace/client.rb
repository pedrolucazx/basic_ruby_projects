require_relative 'marketplace'
require_relative 'product'

marketplace = Marketplace.new

# add product
produto1 = Product.new('Arroz', 10, 20)
produto2 = Product.new('Feijão', 5, 15)
produto3 = Product.new('Macarrão', 3, 30)

marketplace.add_product(produto1)
marketplace.add_product(produto2)
marketplace.add_product(produto3)

# List the available products
marketplace.list_products

marketplace.purchase_product('Arroz', 5)
marketplace.purchase_product('Feijão', 10)
marketplace.purchase_product('Macarrão', 40)
