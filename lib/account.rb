class Account
    STANDARD_VALIDITY_YRS = 5

attr_accessor :funds, :account_status, :exp_date, :pin_code

  def initialize
    @funds = 1000
    @account_status = :active
    @exp_date = Date.today.next_year(5).strftime("%m/%y")
    @pin_code = rand(1000..9999)

  end
end