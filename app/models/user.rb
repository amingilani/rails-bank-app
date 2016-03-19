class User < ActiveRecord::Base
  has_one :account
end
