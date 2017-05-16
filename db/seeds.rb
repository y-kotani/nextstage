require "csv"

restaurants_csv = CSV.readlines("db/restaurants_view.csv")
# restaurants_csv.shift
restaurants_csv.each do |row|
  Restaurant.create(name: row[1], latitude: row[2], longitude: row[3], adress: row[4], open_time: row[5], budget: row[6], url: row[7], tel: row[8], imaege: row[9])
end