class AddProfessionaldataToUsers < ActiveRecord::Migration[6.0]
  def change
  	add_column :users, :company, :string
  	add_column :users, :companyMail, :string
  	add_column :users, :workLocation, :string
  	add_column :users, :technology, :string
  	add_column :users, :salary, :number
  	add_column :users, :experience, :integer
  end
end
