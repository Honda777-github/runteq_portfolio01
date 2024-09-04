# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# users = ["tanaka", "ミキ", "近藤", "森友", "さと"]
# users.each_with_index do |user, i|
#  User.create(
#    name: "#{user}",
#    email: "#{i + 1}@hoge.com",
#    password: "password"
#  )
# end
shops = [
  { name: 'ガラム・マサラ', address: '北海道札幌市中央区南1条西27丁目1-1', description: 'ダミーデータ', rating: 5, hot_rank: 1, img: "", category: "currymix" },
  { name: '札幌スープカレー', address: '北海道札幌市東区北31条東15-1-1', description: 'ダミーデータ', rating: 5, hot_rank: 2, img: "", category: "soup"  },
  { name: 'イエローカレー', address: '北海道札幌市東区東苗穂2条3-1-1', description: 'ダミーデータ', rating: 5, hot_rank: 5, img: "", category: "soup" }
]
Shop.create(shops)
