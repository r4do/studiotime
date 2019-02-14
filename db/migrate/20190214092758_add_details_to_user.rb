class AddDetailsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :bio, :text
    add_column :users, :website_url, :string
    add_column :users, :facebook_url, :string
    add_column :users, :twitter_handle, :string
    add_column :users, :instagram_handle, :string
    add_column :users, :straming_platform_url, :string
    add_column :users, :image, :string
  end
end
