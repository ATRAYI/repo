class User < ActiveRecord::Base
	has_many :post
	#validates_length_of :name, :minimum=>2
	#validates :name, :presence => true ,  :message => 'Name cannot be blank, Task not saved'
	#validates :email, :presence => true ,  :message => 'E-mail cannot be blank, Task not saved'
	attr_accessible :name, :email, :roll, :dept, :age, :contact_no
	
#before_create :callback
end
