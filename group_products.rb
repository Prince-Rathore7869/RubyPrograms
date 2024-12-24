# You are given an array of hashes. Each hash represents a product and contains the following keys: :name, :price, and :category. Your task is to write a method group_products_by_category that:
# 1. Groups the products by their categories.
# 2. Calculates the total number of products and the total price for each category.
# 3. Returns a hash where each key is a category, and the value is another hash containing:
# :products - an array of product names in that category.
# :total_count - the total number of products in that category.
# :total_price - the sum of the prices of all products in that category.

# products = [
#   { name: "Laptop", price: 1000, category: "Electronics" },
#   { name: "Phone", price: 700, category: "Electronics" },
#   { name: "T-shirt", price: 20, category: "Clothing" },
#   { name: "Jeans", price: 40, category: "Clothing" },
#   { name: "Fridge", price: 500, category: "Appliances" },
#   { name: "Microwave", price: 150, category: "Appliances" }
# ]

# Example Output:

# {
#   "Electronics" => {
#     products: ["Laptop", "Phone"],
#     total_count: 2,
#     total_price: 1700
#   },
#   "Clothing" => {
#     products: ["T-shirt", "Jeans"],
#     total_count: 2,
#     total_price: 60
#   },
#   "Appliances" => {
#     products: ["Fridge", "Microwave"],
#     total_count: 2,
#     total_price: 650
#   }
# }
class Products

  def initialize (products)
    @products=products
  end
    def group_products_by_category
     result = {}

     @products.each do |product|
      category = product[:category]
      name = product[:name]
      price = product[:price]

      result[category] ||= { 
      products: [], 
      total_count: 0, 
      total_price: 0.0
    }

    result[category][:products] << name
    result[category][:total_count] += 1
    result[category][:total_price] += price
    end
    result
    end
    def display_name(category)
     grouped=group_products_by_category
     if grouped[category]
       grouped[category][:products]
     else
      puts "entered the wrong category"
     end
    end
end

products = [
  { name: "Laptop", price: 1000, category: "Electronics" },
  { name: "Phone", price: 700, category: "Electronics" },
  { name: "T-shirt", price: 20, category: "Clothing" },
  { name: "Jeans", price: 40, category: "Clothing" },
  { name: "Fridge", price: 500, category: "Appliances" },
  { name: "Microwave", price: 150, category: "Appliances" }
]

display_category=Products.new(products)
#puts display_category.group_products_by_category
# print "Enter the category you want to search: "
# name=gets.chomp
puts display_category.display_name('Electronics')



