class Transaction < ActiveRecord::Base
  belongs_to :from, :class_name => 'Account', :foreign_key => :from_id
  belongs_to :to, :class_name => 'Account', :foreign_key => :to_id
end
