class CreateUserFriends < ActiveRecord::Migration
  def change
    create_table :user_friends do |t|
      t.references :friend, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
