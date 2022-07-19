require_relative './creators/concrete_creator_1'
require_relative './creators/concrete_creator_2'

# The client code works with an instance of a concrete creator, albeit through
# its base interface. As long as the client keeps working with the creator via
# the base interface, you can pass it any creator's subclass.
class Main
  def call(creator)
    print "Client: I'm not aware of the creator's class, but it still works. #{creator.operation}"
  end
end

client = Main.new

puts 'App: Launched with the ConcreteCreator1.'
client.call(Creators::ConcreteCreator1.new)
puts "\n\n"

puts 'App: Launched with the ConcreteCreator2.'
client.call(Creators::ConcreteCreator2.new)


###################### OUTPUT ######################

# ruby main.rb
# App: Launched with the ConcreteCreator1.
# Client: I'm not aware of the creator's class, but it still works. Creator: The same creator's code has just worked with {Result of ConcreteProduct1}

# App: Launched with the ConcreteCreator2.
# Client: I'm not aware of the creator's class, but it still works. Creator: The same creator's code has just worked with {Result of ConcreteProduct2}

####################################################
