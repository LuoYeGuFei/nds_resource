# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
module ActiveRecord
  class Base
    def self.seed!(array)
      puts "Seeding #{self} ..."
      delete_all
      self.create!(array)
    end
  end
end

CommonStatus.seed!([
  { id: 1, name: "在库", code: "in_store" },
  { id: 2, name: "预定", code: "reserved" },
  { id: 3, name: "借阅", code: "borrowing" },
  { id: 4, name: "续借", code: "renew" },
  { id: 5, name: "注销", code: "removed" },
  { id: 6, name: "逾期未还", code: "overdue" }
])

BookCategory.seed!([
  { id: 1, name: "办公软件" },
  { id: 2, name: "编程语言" },
  { id: 3, name: "操作系统" },
  { id: 4, name: "运维工具" },
  { id: 5, name: "外语" }
])

