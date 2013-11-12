categories = [{:name=>"Appetizers"}, {:name=>"Sushi Rolls"}, {:name=>"Small Salads"}, {:name=>"Soft Tacos"}, {:name=>"Sandwiches"}, {:name=>"Platters & Luncheon Salads"}]

categories.each do |category_hash|
  c = Category.new
  c.name = category_hash[:name]
  c.save
end

starters = [
 {:name=>"Hummus with Dukkah Spices and Hub Bread", :description=>"Toasted Naan, Mediterranean Almond-Spice Dip", :category_name=>"Appetizers"},
 {:name=>"Big City Cornbread", :description=>"Baked Fresh All Day", :category_name=>"Appetizers"},
 {:name=>"Loaded Baked Potato Debris", :description=>"", :category_name=>"Appetizers"},
 {:name=>"Guacamole & Chips", :description=>"Henry Farms Avocados, Roasted Tomato Salsa", :category_name=>"Appetizers"},
 {:name=>"Three Green Bites", :description=>"Edamame, Blistered Padrone Peppers, Tempura Green Beans", :category_name=>"Appetizers"},
 {:name=>"Pulled Chicken Nachos", :description=>"Organic Chicken, Guacamole, Tomato Salsa, Cheddar & Oaxaca Cheeses", :category_name=>"Appetizers"},
 {:name=>"Tuna & Thai Basil Roll", :description=>"", :category_name=>"Sushi Rolls"},
 {:name=>"California Roll", :description=>"", :category_name=>"Sushi Rolls"},
 {:name=>"Rainbow Roll", :description=>"", :category_name=>"Sushi Rolls"},
 {:name=>"Crunchy Tuna Roll", :description=>"", :category_name=>"Sushi Rolls"},
 {:name=>"Spicy Tuna Roll", :description=>"", :category_name=>"Sushi Rolls"},
 {:name=>"Sweet Potato Roll", :description=>"", :category_name=>"Sushi Rolls"},
 {:name=>"Garden Roll", :description=>"", :category_name=>"Sushi Rolls"},
 {:name=>"Miso-Glazed Salmon Roll", :description=>"", :category_name=>"Sushi Rolls"},
 {:name=>"Hamachi & Serrano Chili", :description=>"", :category_name=>"Sushi Rolls"},
 {:name=>"Arugula Caesar", :description=>"Baby Arugula, Parmesan, Light Lemon Dressing", :category_name=>"Small Salads"},
 {:name=>"Sonoma Salad", :description=>"Mixed Greens, Grapefruit, Avocado, Walnuts, Sunflower Sprouts & Seeds, Cranberries", :category_name=>"Small Salads"},
 {:name=>"Brussel Sprouts Salad", :description=>"Medjool Dates, Almonds, Manchego Cheese, Mustard Vinaigrette", :category_name=>"Small Salads"}
]

starters.each do |starter_hash|
  s = Starter.new
  s.name = starter_hash[:name]
  s.description = starter_hash[:description]
  s.category = Category.find_by(name: starter_hash[:category_name])
  s.save
end

entrees = [
  {:name=>"All-Natural Braised Chicken Tacos", :description=>"Slow Simmered with Jalapeños, Tomatoes and Onions", :category_name=>"Soft Tacos"},
  {:name=>"First-Rate Cheeseburger", :description=>"Hand-Cut Hub Fries, Fully Dressed", :category_name=>"Sandwiches"},
  {:name=>"Slow-Cooked Pulled Pork Tacos", :description=>"Braised Niman Ranch Pork Shoulder", :category_name=>"Soft Tacos"},
  {:name=>"Vegetarian Tacos", :description=>"Simply Grilled Peppers, Portabello Mushrooms, Butternut Squash", :category_name=>"Soft Tacos"},
  {:name=>"Turkey Burger", :description=>"All-Natural Ground Turkey, Sesame Seed Bun, All The Fixings", :category_name=>"Sandwiches"},
  {:name=>"Grilled Vegetarian \"Burger\"", :description=>"Patty of Lentils, Pintos and Ancho Chilies, Shredded Cheddar", :category_name=>"Sandwiches"},
  {:name=>"Really Good Ahi Tuna Burger", :description=>"No. 1 Tuna, Avocado, Tomato, Lettuce, Mustard, Mayo, Ginger", :category_name=>"Sandwiches"},
  {:name=>"Turkey Stack", :description=>"Shaved Roasted Turkey, Avocado, Havarti, Dijon Mustard, Toasted 9 Grain", :category_name=>"Sandwiches"},
  {:name=>"Roasted Chicken French Dip", :description=>"Thinly Sliced Chicken Breast, Provolone, Peppers, Au Jus", :category_name=>"Sandwiches"},
  {:name=>"Toasted Cheese with Sage", :description=>"Served with a Field Green Salad", :category_name=>"Sandwiches"},
  {:name=>"Herb-Roasted Chicken Breast", :description=>"Crispy Potatoes, Lemon-herb Jus", :category_name=>"Platters & Luncheon Salads"},
  {:name=>"Fresh Grilled Salmon", :description=>"Seasonal Market Vegetable", :category_name=>"Platters & Luncheon Salads"},
  {:name=>"Roasted Turkey Chopped Salad", :description=>"Bacon, Egg, Cherry Tomatoes, Garbanzo Beans, Blue Cheese", :category_name=>"Platters & Luncheon Salads"},
  {:name=>"Asian Chicken Chopped Salad", :description=>"Peanuts, Lemongrass, Kaffir Lime, Red Onion", :category_name=>"Platters & Luncheon Salads"}
]

entrees.each do |entree_hash|
  e = Entree.new
  e.name = entree_hash[:name]
  e.description = entree_hash[:description]
  e.category = Category.find_by(name: entree_hash[:category_name])
  e.save
end
