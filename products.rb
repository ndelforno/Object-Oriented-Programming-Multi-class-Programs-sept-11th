#require 'pry'
class Product
  @@taxes_rate = 0.013
  def initialize (name, price)
    @name = name
    @base_price = price
  end

  #readers
  def name
    return @name
  end

  def base_price
    return @base_price
  end

  def product_price_after_tax (product)
    price = 0
    price = product.base_price + (product.base_price * Product.taxes_rate)
    return price
  end

#class method
  def self.taxes_rate
    return @@taxes_rate
  end

end

product1 = Product.new("soap",8)
# #puts product1.inspect
# product2 = Product.new("pasta",3)
puts product1.base_price
puts product1.product_price_after_tax (product1)
