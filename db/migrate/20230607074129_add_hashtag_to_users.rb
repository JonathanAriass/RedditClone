class AddHashtagToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :hashtag, :string
  end
end
