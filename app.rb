$stdout.puts 'Which calculator 1-Advanced 2- Basic?'
$stdout.flush
calc_choice = $stdin.gets.chomp

puts "You have chosen #{calc_choice}"

def add_sum (num_1, num_2)
  return num_1 + num_2
end

def sub_sum (num_1, num_2)
  return num_1 - num_2
end

def multi_sum (num_1, num_2)
  return num_1 * num_2
end

def divide_sum (num_1, num_2)
  return num_1 / num_2
end

def pow_sum (num_1, num_2)
  return num_1 ** num_2
end

def sqrt_sum (num_1)
  return Math.sqrt(num_1)
end

if calc_choice == "1"
    $stdout.puts 'Which operation would you like to perform SQRT OR POW?'
    $stdout.flush
    operation_choice = $stdin.gets.chomp
      if operation_choice == "SQRT"
        $stdout.puts 'What is the number you want to Square Root?'
        $stdout.flush
        num_1 = $stdin.gets.chomp.to_i
        sum = sqrt_sum(num_1)
        puts "#{num_1} the square root is #{sum}"

      elsif operation_choice == "POW"
        $stdout.puts 'What is the first number?'
        $stdout.flush
        num_1 = $stdin.gets.chomp.to_i
        $stdout.puts 'What is the second number?'
        $stdout.flush
        num_2 = $stdin.gets.chomp.to_i

        sum = pow_sum(num_1, num_2)
        puts "#{num_1} ^ #{num_2}  =  #{sum}"
      else
        puts "Please Enter The Correct Values: "
    end

elsif calc_choice == "2"

    $stdout.puts 'Which operation would you like to perform? 1-ADD 2-SUB 3-MULTI 4-DIV'
    $stdout.flush
    operation_choice = $stdin.gets.chomp
    puts "You have chosen #{operation_choice}"
      if operation_choice == "1"
        $stdout.puts 'What is the first number?'
        $stdout.flush
        num_1 = $stdin.gets.chomp.to_i
        $stdout.puts 'What is the second number?'
        $stdout.flush
        num_2 = $stdin.gets.chomp.to_i

        sum = add_sum(num_1, num_2)
        puts "#{num_1} + #{num_2}  =  #{sum}"


      elsif operation_choice == "2"
        $stdout.puts 'What is the first number?'
        $stdout.flush
        num_1 = $stdin.gets.chomp.to_i
        $stdout.puts 'What is the second number?'
        $stdout.flush
        num_2 = $stdin.gets.chomp.to_i
        sum = sub_sum(num_1, num_2)
        puts "#{num_1} - #{num_2}  =  #{sum}"


      elsif operation_choice == "3"
        $stdout.puts 'What is the first number?'
        $stdout.flush
        num_1 = $stdin.gets.chomp.to_i
        $stdout.puts 'What is the second number?'
        $stdout.flush
        num_2 = $stdin.gets.chomp.to_i
        sum = multi_sum(num_1, num_2)
        puts "#{num_1} * #{num_2}  =  #{sum}"


      elsif operation_choice == "4"
        $stdout.puts 'What is the first number?'
        $stdout.flush
        num_1 = $stdin.gets.chomp.to_i
        $stdout.puts 'What is the second number?'
        $stdout.flush
        num_2 = $stdin.gets.chomp.to_i
        sum = divide_sum(num_1, num_2)
        puts "#{num_1} / #{num_2}  =  #{sum}"

      else
      puts "Please Enter An Operation: "
      end
end
