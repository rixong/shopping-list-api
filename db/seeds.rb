
@user = User.create(email: "abe@gmail.com")

# CATEGORIES:
@user.categories.create(name: 'Produce', sort_order: 3)
@user.categories.create(name: 'Meat', sort_order: 7)
@user.categories.create(name: 'Dairy', sort_order: 8)
@user.categories.create(name: 'Bakery', sort_order: 2)
@user.categories.create(name: 'Baking Supplies', sort_order: 6)
@user.categories.create(name: 'Frozen Foods', sort_order: 12)
@user.categories.create(name: 'Condiments', sort_order: 4)
@user.categories.create(name: 'Beverages & Snacks', sort_order: 9)
@user.categories.create(name: 'Household Items', sort_order: 11)
@user.categories.create(name: 'Pet Supplies', sort_order: 10)
@user.categories.create(name: 'Cans and Jars', sort_order: 5)
@user.categories.create(name: 'Deli', sort_order: 1)

# LISTS
# @user.lists.create(name: 'HEB')
@list = @user.lists.create(name: 'HEB')
# @list2 = @user.lists.create(name: 'Oxo')

# ITEMS


@user.items.create(name: 'pickles', category_id: 11)
@user.items.create(name: 'sam adams beer', category_id: 8)
@user.items.create(name: 'berries', category_id: 1)
@user.items.create(name: 'corn', category_id: 1)
@user.items.create(name: 'lettuce', category_id: 1)
@user.items.create(name: 'bacon', category_id: 2)
@user.items.create(name: 'ground beef', category_id: 2)
@user.items.create(name: 'sourdough bread', category_id: 4)
@user.items.create(name: 'muffins', category_id: 4)
@user.items.create(name: 'ice cream', category_id: 6)
@user.items.create(name: 'milk', category_id: 3)
@user.items.create(name: 'cheddar cheese', category_id: 3)
@user.items.create(name: 'cream cheese', category_id: 3)
@user.items.create(name: 'mop', category_id: 9)
@user.items.create(name: 'ziplock bags', category_id: 0)

# ADD ITEMS TO LIST

@list.list_items.create(item_id: 2, quantity: '6')
@list.list_items.create(item_id: 3, quantity: '1 quart')
@list.list_items.create(item_id: 5, quantity: '1 head')
@list.list_items.create(item_id: 6, quantity: '1 lb.')
@list.list_items.create(item_id: 7, quantity: '1/2 lb.')
@list.list_items.create(item_id: 8, quantity: '1 loaf')
@list.list_items.create(item_id: 9, quantity: '4')
@list.list_items.create(item_id: 11, quantity: '1 quart')
@list.list_items.create(item_id: 14, quantity: '1 box')
@list.list_items.create(item_id: 1, quantity: '1 jar')
@list.list_items.create(item_id: 4, quantity: '4 ears')
@list.list_items.create(item_id: 10, quantity: '1 lb.')
@list.list_items.create(item_id: 12, quantity: '16 oz.')
@list.list_items.create(item_id: 13, quantity: '1')
