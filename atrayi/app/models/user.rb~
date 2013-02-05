class User < ActiveRecord::Base
	has_many :posts
	attr_accessible :name, :email, :roll, :dept, :age, :contact_no
	validates_length_of :name, :minimum=>2
	validates :name, :presence => true
	validates :email, :presence => true, :uniqueness=>true
		
before_create do |user|
	user.name=user.name.capitalize
	#if user.save!	
end
end

