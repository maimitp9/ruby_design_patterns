require_relative './creator'

module Creators
  # Concrete Creators override the factory method in order to change the resulting
  # product's type.
  class ConcreteCreator1 < Creator
    # Note that the signature of the method still uses the abstract product type,
    # even though the concrete product is actually returned from the method. This
    # way the Creator can stay independent of concrete product classes.
    def factory_method
      Products::ConcreteProduct1.new
    end
  end
end
