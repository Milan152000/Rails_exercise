class User < ApplicationRecord
	validates :firstname, presence: true
	validates_each :firstname do |record, attr, value|
    	record.errors.add(attr, 'must start with upper case') if value =~ /\A[[:lower:]]/
  end
	validates :lastname, presence: true
	validates_each :lastname do |record, attr, value|
    	record.errors.add(attr, 'must start with upper case') if value =~ /\A[[:lower:]]/
	end
  validates :email, presence: true,
  					  format: { with: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/, message: "Email invalid"  },
  					  length: { minimum: 4, maximum: 254 }
  validates :address, :workLocation, presence: true
	validates :contact, presence: true, numericality: true
  validates :gender, presence: true
	validates :companyMail, presence: true,
  							format: { with: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/, message: "Email invalid"  },
  					  		          length: { minimum: 4, maximum: 254 }
	validates :company, presence: true
end