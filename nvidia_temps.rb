#!/home/chabgood/.rbenv/shims/ruby
table=""
data = `nvidia-smi --query-gpu=gpu_name,temperature.gpu --format=csv,noheader`
arr = data.split("\n")
arr.each do |card|
  card_data = card.split(",")
  table << "#{card_data[0]} - #{card_data[1]}C\n"
end
p table
