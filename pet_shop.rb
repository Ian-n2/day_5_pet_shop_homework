def pet_shop_name(name)
  return name[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, coin)
   shop[:admin][:total_cash] += coin
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]

end

def increase_pets_sold(sold, num)
  sold[:admin][:pets_sold] += num
end

def stock_count(stock)
  return stock[:pets].length
end

def pets_by_breed(shop, breed)
  total = []
  for dogs in shop[:pets]
    if dogs[:breed] == breed
      total.push(dogs[:breed])
    end
  end
return total
end

def find_pet_by_name(shop, name)
  total = nil
  for pet in shop[:pets]
    if name == pet[:name]
      total = pet
    else total == nil
      end
  end
  return total
  end



def remove_pet_by_name(shop, name)
  for pet in shop[:pets]
    if name == pet[:name]
      shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(shop, pet)
        shop[:pets].push(pet)
end

def customer_cash(person)
  return person[:cash]
end

def remove_customer_cash(person, coin)
   person[:cash] -= coin
 end

def customer_pet_count(person)
  person[:pets].count
end

def add_pet_to_customer(person, pet)
  person[:pets].push(pet)
end

def customer_can_afford_pet(person, pet)
  if person[:cash] >= pet[:price]
    return true
  else
    return false
  end
end


def sell_pet_to_customer(shop, pet, person)
  if  find_pet_by_name(shop, pet) != pet
    customer_pet_count(person)
  if  customer_can_afford_pet(person, pet) == true
    remove_pet_by_name(shop, pet)
    add_pet_to_customer(person, shop)
    increase_pets_sold(shop, customer_pet_count(person))
    remove_customer_cash(person, pet[:price])
    add_or_remove_cash(shop, pet[:price])
  else
  end
  else
  end
end
