# ATM Challenge - Week 1 of Bootcamp

As a programmer 
In order to work in a test driven way 
I want to unit test my code - DONE

As a user 
In order to make a withdrawal 
The ATM needs to have funds - DONE

As an ATM operator
In order for the right person to make a withdrawal
I want each person to have an separate account

As an ATM operator
In order ensure that an Acccount holder can only withdraw funds that he has balance for I want to allow a withdrawal only if there are sufficient funds in the account

As a Customer              
In order to keep my funds secure             
I want a secure Pin code & an expiry date on my card that allows only me access to my funds

As a Customer
In order to manage my funds
I need to have a personal account

As an ATM operator      
In order to keep track of our costumers     
We want to assign each account to a separate person

As a Person
in order to be able to use banking services to manage my funds,
i would like to be able to create a bank account

As a Person with a Bank Account
in order to be able to put my funds in the account
i would like to be able to make a deposit

## Instructions


## Initialize the stage

Run these commands in irb:

```
load './lib/atm.rb'
=> true 

load './lib/person.rb'
=> true 

load './lib/account.rb'
=> true 

```

## Create the ATM

```
atm = Atm.new
```
## Create a Person
```
name_of_person = Person.new({name: 'Per'})
```
## Create an Account
```
name_of_account = person.create_account
```
## Deposit to the Account
```
name_of_person.deposit(amount)
```
## Withdraw from the ATM
```
atm.withdraw(amount, pincode, account)
```
## Check ATM balance
```
atm.funds
```
## Check Account balance
```
name_of_account.balance
```
