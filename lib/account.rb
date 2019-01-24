class Account
    
attr_accessor :funds, :balance, :account_status, :exp_date, :pin_code, :owner

STANDARD_VALIDITY_YRS = 5


    def initialize(attrs = {})
        @balance = 0
        @funds = 1000
        @account_status = :active
        @exp_date = Date.today.next_year(STANDARD_VALIDITY_YRS).strftime("%m/%y")
        @pin_code = make_pin
        @owner = set_owner(attrs[:owner])
    end


private
    def make_pin
        rand(1000..9999)
    end

    def self.deactivate(account)
        account.account_status = :deactivated
    end 

    def set_owner(object)
        object == nil ?  missing_owner : @owner = object
    end

    def missing_owner
        raise "An Account owner is required"
    end

end