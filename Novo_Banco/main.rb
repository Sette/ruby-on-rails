require "csv"

csv_text = File.read('/home/webtech/out_comprev.csv')

CSV.foreach(csv_text ) do |row|
    Moulding.create!(row.to_hash)
end