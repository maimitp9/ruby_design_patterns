require_relative './factories/concrete_factory_1'
require_relative './factories/concrete_factory_2'

class Main
  # The client code works with factories and products only through abstract types:
  # AbstractFactory and AbstractProduct. This lets you pass any factory or product
  # subclass to the client code without breaking it.
  def call(factory)
    product_a  = factory.create_product_a
    product_b  = factory.create_product_b

    puts product_b.useful_function_b
    puts product_b.another_useful_function_b(product_a)
  end
end

client = Main.new
# The client code can work with any concrete factory class.
puts 'Client: Testing client code with the first factory type:'
client.call(Factories::ConcreteFactory1.new)

puts "\n"

puts 'Client: Testing the same client code with the second factory type:'
client.call(Factories::ConcreteFactory2.new)


###################### OUTPUT ######################

# ruby main.rb

# Client: Testing client code with the first factory type:
# ==> Result of product B1
# The result of the B1 collaborating with the (==> Result of product A1)

# Client: Testing the same client code with the second factory type:
# ==> Result of product B2
# The result of the B2 collaborating with the (==> Result of product A2 )
