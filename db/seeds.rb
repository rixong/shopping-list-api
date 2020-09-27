
@user = User.create(email: "abe@gmail.com", current_list: 1, password: "1234", password_confirmation: "1234")

# CATEGORIES:
@user.categories.create(name: 'Produce', sort_order: 1)
@user.categories.create(name: 'Meat', sort_order: 2)
@user.categories.create(name: 'Dairy', sort_order: 3)
@user.categories.create(name: 'Bakery', sort_order: 4)
@user.categories.create(name: 'Baking Supplies', sort_order: 5)
@user.categories.create(name: 'Frozen Foods', sort_order: 6)
@user.categories.create(name: 'Condiments', sort_order: 7)
@user.categories.create(name: 'Beverages & Snacks', sort_order: 8)
@user.categories.create(name: 'Household Items', sort_order: 9)
@user.categories.create(name: 'Pet Supplies', sort_order: 10)
@user.categories.create(name: 'Cans and Jars', sort_order: 11)
@user.categories.create(name: 'Deli', sort_order: 12)

# categories = [
# 'Produce'
# 'Meat'
# 'Dairy'
# 'Bakery'
# 'Baking Supplies'
# 'Frozen Foods'
# 'Condiments'
# 'Beverages & Snacks'
# 'Household Items'
# 'Pet Supplies'
# 'Cans and Jars'
# 'Deli']

# LISTS
# @user.lists.create(name: 'HEB')
@list = @user.lists.create(name: 'HEB')
@list2 = @user.lists.create(name: 'Target')

# ITEMS


@user.items.create(name: 'berries', category_id: 1)
@user.items.create(name: 'corn', category_id: 1)
@user.items.create(name: 'bacon', category_id: 2)
@user.items.create(name: 'ground beef', category_id: 2)
@user.items.create(name: 'milk', category_id: 3)
@user.items.create(name: 'cream cheese', category_id: 3)
@user.items.create(name: 'sourdough bread', category_id: 4)
@user.items.create(name: 'muffins', category_id: 4)
@user.items.create(name: 'pickles', category_id: 11)
@user.items.create(name: 'ice cream', category_id: 6)
@user.items.create(name: 'sam adams beer', category_id: 8)
@user.items.create(name: 'mop', category_id: 9)

# ADD ITEMS TO LIST

@list.list_items.create(item_id: 2, quantity: '6 ears')
@list.list_items.create(item_id: 5, quantity: '1 quart')
@list.list_items.create(item_id: 1, quantity: '1 box')
@list.list_items.create(item_id: 4, quantity: '1 lb.')
@list.list_items.create(item_id: 7, quantity: '1 loaf')
@list.list_items.create(item_id: 9, quantity: '1 jar')
@list.list_items.create(item_id: 10, quantity: '1 gallon')
@list.list_items.create(item_id: 11, quantity: '6 pack')
@list.list_items.create(item_id: 12, quantity: '1')

@list2.list_items.create(item_id: 10, quantity: '1 gallon')
@list2.list_items.create(item_id: 11, quantity: '6 pack')
@list2.list_items.create(item_id: 12, quantity: '1')
