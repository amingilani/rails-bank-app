class User < ActiveRecord::Base
  has_one :account

  before_create :build_default_account

  def build_default_account
    build_account
    true
  end
end
