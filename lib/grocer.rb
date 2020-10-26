require 'pry'

def find_item_by_name_in_collection(name, collection)
  found = nil
  collection.each do |category|
    category.each do |item, food| 
      if food == name 
        found = category 
      end
    end
  end
  found
end


def consolidate_cart(cart)
  final_cart = []
  cart.each do |items|
  count = 0 
    while count < items.length 
      final_cart.push(items)
      same_item = find_item_by_name_in_collection(items[:item], final_cart)
        if same_item
          items[:count] += 1 
          binding.pry 
        else
          items[:count] = 1 
          final_cart.push(items)
      end
      count += 1
    end
  end
  final_cart
end