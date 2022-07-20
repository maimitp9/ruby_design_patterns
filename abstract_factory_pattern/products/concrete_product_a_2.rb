require_relative './abstract_product_a'

module Products
  class ConcreteProductA2 < AbstractProductA
    def useful_function_a
      '==> Result of product A2 '
    end
  end
end
