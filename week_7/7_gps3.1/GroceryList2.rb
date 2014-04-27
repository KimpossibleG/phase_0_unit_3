class GroceryList
    def initialize
       @grocery_list_array = [] 
    end
    def add_item(item)
        @grocery_list_array << item
    end
    
    def remove_item(item)
        @grocery_list_array.delete(item)    
    end
    
    def view_list
     # @grocery_list_array.length.times do |i|
      #  return @grocery_list_array[i].show_all
      #end
      #@grocery_list_array[0].show_all
      @grocery_list_array.each{|i| puts i.show_all }
    end
end


class Item

    def initialize(name, quantity, section)
       @name = name
       @quantity = quantity
       @section = section
    end
    
    def show_all
       "#{@quantity} #{@name} (#{@section})"  
    end
end

# DRIVER CODE GOES HERE. 
 
def assert
  raise "Found an error!" unless yield
end

caleb_kim_groceries = GroceryList.new
apples = Item.new("apples", "2", "produce")
cookies = Item.new("cookies", "one bag", "cookie aisle")

caleb_kim_groceries.add_item(apples)
puts caleb_kim_groceries.view_list == "2 apples (produce)"
caleb_kim_groceries.add_item(cookies)
# assert { caleb_kim_groceries.view_list == "2 apples (produce)" }
caleb_kim_groceries.view_list
#puts caleb_kim_groceries.view_list == "2 apples (produce)"

#{}"2 apples (produce)"
