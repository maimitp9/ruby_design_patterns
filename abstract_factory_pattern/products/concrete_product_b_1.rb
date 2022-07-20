require_relative './abstract_product_b'

module Products
  # Concrete Products are created by corresponding Concrete Factories.
  class ConcreteProductB1 < AbstractProductB
    # @return [String]
    def useful_function_b
      '==> Result of product B1 '
    end

    # The variant, Product B1, is only able to work correctly with the variant,
    # Product A1. Nevertheless, it accepts any instance of AbstractProductA as an
    # argument.
    def another_useful_function_b(collaborator)
      "The result of the B1 collaborating with the (#{collaborator.useful_function_a})"
    end
  end
end
