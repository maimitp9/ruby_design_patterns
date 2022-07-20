require_relative './abstract_factory'
require_relative '../products/concrete_product_a_2'
require_relative '../products/concrete_product_b_2'


module Factories
  # Each Concrete Factory has a corresponding product variant.
  class ConcreteFactory2 < AbstractFactory
    def create_product_a
      Products::ConcreteProductA2.new
    end

    def create_product_b
      Products::ConcreteProductB2.new
    end
  end
end
