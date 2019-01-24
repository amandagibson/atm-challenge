require './lib/account.rb'
require 'date'

describe Account do
    

    it 'check length of a number' do
        number = 1234
        number_length = Math.log10(number).to_i + 1
        expect(number_length).to eq 4
    end

    it 'is expected to have an expiry date on initialize' do
        expected_date = Date.today.next_year(5).strftime("%m/%y")
        expect(subject.exp_date).to eq expected_date
    end

<<<<<<< HEAD
<<<<<<< HEAD
end
=======
=======
    it 'is expected to have :active status on initialize' do
        expect(subject.account_status).to eq :active
    end

    it 'deactivates account using Class method' do
        Account.deactivate(subject)
        expect(subject.account_status).to eq :deactivated
      end

>>>>>>> 1d970cbf2c4ecf0b2d0630b6e552bf60513e3311



end
>>>>>>> c1bba880675072835d2f0496ef43f1912670bae1
