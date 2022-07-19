require_relative './creator'

module Creators
  class ConcreteCreator2 < Creator
    # @return [ConcreteProduct2]
    def factory_method
      Products::ConcreteProduct2.new
    end
  end
end
