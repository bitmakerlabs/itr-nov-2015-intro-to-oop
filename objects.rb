class Pizza

  # attr_reader :size, :toppings, :slices

  @@possible_toppings = ["Pepperoni","Cheese"]

  def initialize(size, slices)
    @size = size
    @slices = slices
    @toppings = []
  end

  def add_topping(topping)
    if @@possible_toppings.include?(topping)
      @toppings << topping
    else
      puts "We don't have that topping"
    end
  end

  def eat(num)
    if @slices == 0
      puts "You ate the whole pizza!"
    else
      @slices -= num
      print_slice_count
    end
  end

  def print_toppings
    puts "Toppings: #{@toppings.join(', ')}"
  end

  def print_slice_count
    puts "The pizza has #{@slices} left"
  end

  def print_pizza
    puts "Our #{@slices}-slice #{@size} meat lovers pizza has toppings #{@toppings.join(', ')}"    
  end

end

meat_lovers = Pizza.new("Medium",8)
meat_lovers.add_topping("Cheese")
meat_lovers.print_toppings
meat_lovers.add_topping("Tomato")
meat_lovers.print_toppings
# meat_lovers.eat(2)
# meat_lovers.eat(2)
# meat_lovers.eat(2)

