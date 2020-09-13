
@user = User.create(email: "abe@gmail.com")

# CATERGORIES:
@user.categories.create(name: 'Produce', sort_order: 1)
@user.categories.create(name: 'Meat', sort_order: 2)
@user.categories.create(name: 'Dairy', sort_order: 3)
@user.categories.create(name: 'Bakery', sort_order: 4)
@user.categories.create(name: 'Housewares', sort_order: 5)

# LISTS
# @user.lists.create(name: 'HEB')
@list = @user.lists.create(name: 'HEB')

# ITEMS

@user.items.create(name: 'apples', category_id: 1)
@user.items.create(name: 'pears', category_id: 1)
@user.items.create(name: 'berries', category_id: 1)
@user.items.create(name: 'corn', category_id: 1)
@user.items.create(name: 'lettuce', category_id: 1)
@user.items.create(name: 'bacon', category_id: 2)
@user.items.create(name: 'ground beef', category_id: 2)
@user.items.create(name: 'sourdough bread', category_id: 4)
@user.items.create(name: 'muffins', category_id: 4)
@user.items.create(name: 'ice cream', category_id: 3)
@user.items.create(name: 'milk', category_id: 3)
@user.items.create(name: 'cheddar cheese', category_id: 3)
@user.items.create(name: 'cream cheese', category_id: 3)
@user.items.create(name: 'mop', category_id: 5)
@user.items.create(name: 'ziplock bags', category_id: 5)

# ADD ITEMS TO LIST

@list.list_items.create(item_id: 2, quantity: '6', active: true)
@list.list_items.create(item_id: 3, quantity: '1 quart', active: true)
@list.list_items.create(item_id: 5, quantity: '1 head', active: true)
@list.list_items.create(item_id: 6, quantity: '1 lb.', active: true)
@list.list_items.create(item_id: 7, quantity: '1/2 lb.', active: true)
@list.list_items.create(item_id: 8, quantity: '1 loaf', active: true)
@list.list_items.create(item_id: 9, quantity: '4', active: true)
@list.list_items.create(item_id: 11, quantity: '1 quart', active: true)
@list.list_items.create(item_id: 14, quantity: '1 box', active: true)
