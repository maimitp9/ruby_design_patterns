require_relative './abstract_factory'
require_relative '../products/concrete_product_a_1'
require_relative '../products/concrete_product_b_1'


module Factories
  # Concrete Factories produce a family of products that belong to a single
  # variant. The factory guarantees that resulting products are compatible. Note
  # that signatures of the Concrete Factory's methods return an abstract product,
  # while inside the method a concrete product is instantiated.
  class ConcreteFactory1 < AbstractFactory
    def create_product_a
      Products::ConcreteProductA1.new
    end

    def create_product_b
      Products::ConcreteProductB1.new
    end
  end
end
