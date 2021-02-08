class AddPersonaldataToUsers < ActiveRecord::Migration[6.0]
  def change
  	add_column :users, :firstname, :string
  	add_column :users, :lastname, :string
  	add_column :users, :dob, :date
  	add_column :users, :email, :string
  	add_column :users, :address, :string
  	add_column :users, :contact, :integer
  	add_column :users, :gender, :string
  end
end
