class Account
    STANDARD_VALIDITY_YRS = 5

attr_accessor :funds, :account_status, :exp_date, :pin_code, :owner, :balance

  def initialize(attrs = {})
    @funds = 1000
    @account_status = :active
    @exp_date = Date.today.next_year(STANDARD_VALIDITY_YRS).strftime("%m/%y")
    @pin_code = rand(1000..9999)
    set_owner(attrs[:owner])

  end

  def self.deactivate(account)
    account.account_status = :deactivated
  end 

  private
  def set_owner(object)
    object == nil ? missing_owner : @owner = object
  end

  def missing_owner
    raise "An Account owner is required"
end

  
end