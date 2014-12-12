require 'active_record'

ActiveRecord::Base.establish_connection(
    adapter: "sqlite3",
    database:"db.sqlite3",
)

class InitialSchema < ActiveRecord::Migration
    def self.up
        create_table :users do |t|
            t.string :name
        end
    end
    def self.down
        drop_table :users
    end
end

InitialSchema.migrate(:up)

class User < ActiveRecord::Base
end

User.create(name: "hoge")

p User.all

