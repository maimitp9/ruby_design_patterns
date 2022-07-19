require_relative './product'

module Products
  # Concrete Products provide various implementations of the Product interface.
  class ConcreteProduct2 < Product
    # @return [String]
    def operation
      '{Result of ConcreteProduct2}'
    end
  end
end
