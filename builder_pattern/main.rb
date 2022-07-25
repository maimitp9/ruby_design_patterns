require_relative './director'
require_relative './products/concrete_product_1'
require_relative './products/concrete_product_2'

# The client code creates a builder object, passes it to the director and then
# initiates the construction process. The end result is retrieved from the
# builder object.
director = Director.new

# Building Product 1
builder = Products::ConcreteProduct1.new
director.builder = builder


puts 'Standard basic product: 1'
director.build_minimal_viable_product
builder.product.list_parts

puts "\n\n"

puts 'Standard full featured product: 1'
director.build_full_featured_product
builder.product.list_parts

puts "\n\n"

# Building Product 2
builder = Products::ConcreteProduct2.new
director.builder = builder


puts 'Standard basic product: 2'
director.build_minimal_viable_product
builder.product.list_parts

puts "\n\n"

puts 'Standard full featured product: 2'
director.build_full_featured_product
builder.product.list_parts

puts "\n\n"
puts "-----------------------------------------------"
# Remember, the Builder pattern can be used without a Director class.
puts 'Custom product: '
builder.produce_part_a
builder.produce_part_b
builder.product.list_parts
