#!/home/chabgood/.rbenv/shims/ruby
data = `nvidia-smi --query-gpu=gpu_name,temperature.gpu --format=csv,noheader`
arr = data.split("\n")
table = "<table>"
arr.each do |card|
  table << "<tr><td>"
  card_data = card.split(",")
  table << "#{card_data[0]} - #{card_data[1]}C"
  table << "</td></tr>"
end
table << "</table>"
p table
