##########################################################

# * Arguments:
#   * `Array`: a collection of item Hashes

# * Returns:
#   * a ***new*** `Array` where every ***unique*** item in the original is present
#     * Every item in this new `Array` should have a `:count` attribute
#     * Every item's `:count` will be _at least_ one
#     * Where multiple instances of a given item are seen, the instance in the
#       new `Array` will have its `:count` increased

  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.

  cart = [  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "KALE", :price => 3.00, :clearance => false}  ]

def consolidate_cart(cart)
grocery_list = []

# adds :count as a key to the cart hash

index = 0 
while index < cart.length do 
cart[index][:count] = 0
index += 1
end 

# create a list of grocery items
# loop through the cart and compare the :item values to the grocery list
# if there's a match, increment the :count value for that :item

index = 0
while index < cart.length do 
grocery_list.push(cart[index][:item])
index += 1
end 

index = 0 
while index < grocery_list.length do 
counter = 0 
while counter < cart.length do 
if cart[counter][:item] == grocery_list[index]
cart[counter][:count] += 1
end 
counter += 1
end 
index += 1
end 

print cart

# # if the :item value is repeated, add up the :count value
#   index = 0 
#   x = ""
#   while index < new_cart.length do 
#     if new_cart[index][:item] != x
#       x = new_cart[index][:item]
#     else 
#       # remove prev hash index to raise the count but remove the duplicate
#       new_cart[index][:count] += 1
#     end 
#     index += 1
#   end 

end

puts consolidate_cart(cart)