require_relative '../builder'
require_relative '../product'

module Products
  class ConcreteProduct2 < Builder
    def initialize
      reset
    end

    def product
      product = @product
      reset
      product
    end

    def produce_part_a
      @product.add('Part A2')
    end

    def produce_part_b
      @product.add('Part B2')
    end

    def produce_part_c
      @product.add('Part C2')
    end

    private

    def reset
      @product = Product.new
    end
  end
end
