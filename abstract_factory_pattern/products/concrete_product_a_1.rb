require_relative './abstract_product_a'

module Products
  # Concrete Products are created by corresponding Concrete Factories.
  class ConcreteProductA1 < AbstractProductA
    def useful_function_a
      '==> Result of product A1'
    end
  end
end
