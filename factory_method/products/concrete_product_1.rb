require_relative './product'

module Products
  # Concrete Products provide various implementations of the Product interface.
  class ConcreteProduct1 < Product
    # @return [String]
    def operation
      '{Result of ConcreteProduct1}'
    end
  end
end
