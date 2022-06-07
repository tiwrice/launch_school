puts "Please insert your loan amount: "
loan_amount = gets.chomp.to_i
puts "What is the APR on the loan?"
apr = gets.chomp.to_f
puts "What is the duration of the loan in years?"
loan_duration = gets.chomp.to_i

values = [loan_amount, apr, loan_duration]

def integer?(input)
  Integer(input) rescue false
end

values.each do |value|
  if integer?(value)
    puts "Correct"
  elsif 
    puts "Incorrect"
  end
end

puts monthly_interest = (apr / 100) / 12
puts month_duration = loan_duration * 12
puts month_payment = loan_amount * (monthly_interest / (1 - (1 + monthly_interest)**(-month_duration)))