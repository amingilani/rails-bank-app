class User < ActiveRecord::Base
  has_one :account

  before_create :build_default_account

  def fee
    fee = BigDecimal('0.00')
    fee = BigDecimal('0.01') if charge_fee
    fee
  end

  def build_default_account
    build_account
    true
  end
end
