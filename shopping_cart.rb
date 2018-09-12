require './products.rb'

class Cart
  @@products_collection = []

  #class methods
  def self.add_product(name,price)
    product = Product.new(name,price)
    @@products_collection << product
  end

  def self.delete_product (name)
    @@products_collection.delete_if do |name|
      if name = name
        true
      end
    end
  end

  def self.available
    return @@products_collection
  end

  def self.total_cost_before_tax
    total_cost = 0
    @@products_collection.each do |prod|
      total_cost += prod.base_price
    end
      return total_cost
  end

  def self.total_cost_after_tax
    total_cost = 0
    @@products_collection.each do |prod|
    total_cost += prod.product_price_after_tax(prod)
    end
    return total_cost
  end

end

product1 = Cart.add_product("soap",8)
product2 = Cart.add_product("pasta",3)
product3 = Cart.add_product("soup",5)

puts "---------"
# Cart.delete_product("soap")
# puts Cart.available.inspect



puts Cart.available.inspect

puts Cart.total_cost_before_tax

puts Cart.total_cost_after_tax

#puts product1.product_price_after_tax
