require_relative './abstract_product_b'

module Products
  class ConcreteProductB2 < AbstractProductB
    # @return [String]
    def useful_function_b
      '==> Result of product B2 '
    end

    # The variant, Product B2, is only able to work correctly with the variant,
    # Product A2. Nevertheless, it accepts any instance of AbstractProductA as an
    # argument.
    def another_useful_function_b(collaborator)
      "The result of the B2 collaborating with the (#{collaborator.useful_function_a})"
    end
  end
end
