require 'roo'
ss = Roo::Excelx.new("data.xlsx")
puts ss.to_csv
