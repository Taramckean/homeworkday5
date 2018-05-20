#1
def pet_shop_name(shop)
 return shop[:name]
end

#2
def total_cash(shop)
  return shop[:admin][:total_cash]
end

#3
def add_or_remove_cash(shop, money_added)
  shop[:admin][:total_cash] += money_added
end

# #4
def pets_sold(pet)
return pet[:admin][:pets_sold]
end

#5
def increase_pets_sold(pet, increase)
return pet[:admin][:pets_sold] += increase
end

#6
def stock_count(number_of_pets)
return number_of_pets[:pets].count()
end

#7
def pets_by_breed(pets, name_of_breed)
  matching_pets = []
  for pet in pets[:pets]
    if pet[:breed] == name_of_breed
      matching_pets.push(pet[:breed])
    end
  end
  return matching_pets
end

#8
def find_pet_by_name(pets, name)

    for pet in pets[:pets]
      if pet[:name] == name
        return pet
      end
    end
    return nil
end

#9
def remove_pet_by_name(pets, name)
  pet = find_pet_by_name(pets, name)
  pets[:pets].delete(pet)
end

#10
def add_pet_to_stock(shop, new_pet)
shop[:pets].push(new_pet)
return stock_count(shop)
end


#11
def customer_cash(customers)
    return customers[:cash]
end

#12
def remove_customer_cash(customers, amount)
customers[:cash] -= amount
end

#13
def customer_pet_count(customers)
customers[:pets].count()
end

#14
def add_pet_to_customer(customer, new_pet)
return customer[:pets].push(new_pet)
end

#15
def customer_can_afford_pet(customer, new_pet)
if customer[:cash] < new_pet[:price]
  return false
else return true
end
end

#16
