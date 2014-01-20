developer = Developer.create(username: 'developer', password: 'password', password_confirmation: 'password')
developer.applications.create(name: 'My Awesome Fooda App', key: 'secret')

thai = Restaurant.create(name: 'Amarit Thai Grill')
thai.dishes.create(name: 'Fried Rice', description: 'Thai fried rice with egg, onion, and your choice of chicken or beef')
thai.dishes.create(name: 'Kungpao Chicken', description: 'Stir-fried chicken with onion, bell pepper, water chestnut, chili, & peanut')
that.dishes.create(name: 'Amarit Pepper Steak', description: 'Stir-fried tender beef, bell pepper, onion, mushrooms, peapod, tomato and water chestnut in a tasty thick thai sauce')

mexican = Restaurant.create(name: 'Barrio Urban Taqueria')
mexican.dishes.create(name: 'Chicken Enchiladas', description: 'Three small enchiladas topped with mild ranchera sauce and queso')
mexican.dishes.create(name: 'Grilled Chicken Tacos', description: '6 oz. of seasoned grilled chicken, diced and served with queso, cilantro, lime, and three 4" homemade corn tortillas')
mexican.dishes.create(name: 'Grilled Steak Tacos', description: '6 oz. of seasoned grilled steak, diced and served with queso, cilantro, lime, and three 4" homemade corn tortillas')

healthy = Restaurant.create(name: 'Eat Fit')
healthy.dishes.create(name: 'Chipotle Chicken Wrap', description: 'Whole-wheat tortilla wrap with grilled chicken, black beans, corn, cherry tomato, red onion with our house-made chipotle dressing')
healthy.dishes.create(name: 'Portobello Pesto Wrap', description: 'Whole-wheat tortilla wrap with roasted portobella mushrooms, mixed greens and roasted peppers')
healthy.dishes.create(name: 'Chicken Salad Wrap', description: 'No-mayo chicken salad sandwich on multi-grain bread with greek yogurt, lemon juice, red onion, celery and fresh grapes')

chirag = User.create(username: 'ctailor2', password: 'password', password_confirmation: 'password')
chirag.purchases.create(dish_id: 1)
chirag.purchases.create(dish_id: 7)
chirag.purchases.create(dish_id: 3)

anthony = User.create(username: 'anthony.bc', password: 'password', password_confirmation: 'password')
anthony.purchases.create(dish_id: 4)
anthony.purchases.create(dish_id: 6)
anthony.purchases.create(dish_id: 9)
