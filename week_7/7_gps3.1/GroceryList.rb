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
#        @grocery_list_array[0].show_all
        @grocery_list_array.each { |item| item.show_all }
    end
end


class Item

    def initialize(name, quantity, section)
       @name = name
       @quantity = quantity
       @section = section
    end
    
    def show_name
      return @name
    end

    def show_all
       puts @quantity + " " + @name + " (" + @section + ")" 
    end
end

# DRIVER CODE GOES HERE. 
 
caleb_kim_groceries = GroceryList.new
apples1 = Item.new("apples", "2", "produce")

caleb_kim_groceries.add_item(apples1)
apples1.show_all
puts "break"
if caleb_kim_groceries.view_list == "2 apples (produce)" puts "TRUE" else puts "FALSE" end
# puts caleb_kim_groceries.view_list == "2 apples (produce)"