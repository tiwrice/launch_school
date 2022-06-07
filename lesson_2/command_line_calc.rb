def calculator

    def prompt(message)
        puts("=> #{message}")
    end
    prompt("Please enter first number")
    num1 = gets.chomp.to_i
    prompt("Please enter second number")
    num2 = gets.chomp.to_i
    prompt("What operation would you like to perform?")
    operation = gets.chomp

    if operation == "+"
        prompt("The answer is #{num1 + num2}")
    elsif operation == "-"
        prompt("The answer is #{num1 - num2}")
    elsif operation == "*"
        prompt("The answer is #{num1 * num2}")
    elsif operation == "/"
        prompt("The answer is #{num1 / num2}")
    end

    prompt("Would you like to calculate something else? (y/n)")
    answer = gets.chomp
    if answer == "y"
        calculator
    else
        puts "Goodbye!"
    end
end

calculator