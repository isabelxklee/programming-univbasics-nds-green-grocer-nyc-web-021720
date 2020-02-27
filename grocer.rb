collection = [  { :item => "DOG FOOD" }, { :item => "WINE" }, { :item => "STRYCHNINE" } ]

def find_item_by_name_in_collection(name, collection)
  index = 0
  while index < collection.length do 
    if collection[index][:item] == name 
      return collection[index]
    end 
    index += 1
  end 
end

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

# cart = [  {:item => "AVOCADO", :price => 3.00, :clearance => true },
#           {:item => "AVOCADO", :price => 3.00, :clearance => true },
#           {:item => "KALE", :price => 3.00, :clearance => false}  ]

def consolidate_cart(cart)
  new_cart = []
  index = 0 

# check to see if any items match an existing value in the cart
# if the new item exists in the cart (does NOT return nil), increment the :count value
# if the new item does NOT exist yet, create a hash for it with the :count value

  while index < cart.length do 
    new_item = find_item_by_name_in_collection(cart[index][:item], new_cart)
    if new_item != nil 
      new_item[:count] += 1
    else 
      new_item = {
        :item => cart[index][:item],
        :price => cart[index][:price],
        :clearance => cart[index][:clearance],
        :count => 1
      }
      new_cart.push(new_item)
    end 
    index += 1
  end 

  return new_cart
end













def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
