require_relative '../products/concrete_product_1'
require_relative '../products/concrete_product_2'

module Creators
  # The Creator class declares the factory method that is supposed to return an
  # object of a Product class. The Creator's subclasses usually provide the
  # implementation of this method.
  class Creator
    # Note that the Creator may also provide some default implementation of the
    # factory method.
    def factory_method
      raise NotImplementedError, "#{self.class} not implemented method #{__method__}"
    end

    # Also note that, despite its name, the Creator's primary responsibility is
    # not creating products. Usually, it contains some core business logic that
    # relies on Product objects, returned by the factory method. Subclasses can
    # indirectly change that business logic by overriding the factory method and
    # returning a different type of product from it.
    def operation
      # Call the factory method to create a Product object.
      product = factory_method

      # Now, use the product.
      result = "Creator: The same creator's code has just worked with #{product.operation}"

      result
    end
  end
end
