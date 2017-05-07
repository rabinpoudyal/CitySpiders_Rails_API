json.books @books do |book|
  json.(book, :title, :isbn, :price, :condition, :location, :category, :is_sold)
end
