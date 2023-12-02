def to_n(cadena)
  numeros = {
    'one' => "1",
    'two' => "2",
    'three' => "3",
    'four' => "4",
    'five' => "5",
    'six' => "6",
    'seven' => "7",
    'eight' => "8",
    'nine' => "9",
    '1' => "1",
    '2' => "2",
    '3' => "3",
    '4' => "4",
    '5' => "5",
    '6' => "6",
    '7' => "7",
    '8' => "8",
    '9' => "9"
  }
  return numeros[cadena.downcase] || nil
end

file = File.read("../input/input.txt")

suma = 0

arr_file = file.split("\n")

arr_file.each do |line|
  
  number = ""
  matches = line.scan(/(?=(one|two|three|four|five|six|seven|eight|nine|1|2|3|4|5|6|7|8|9))/i)
  
  if matches.any?
    
    number += to_n(matches.first[0])
    
    if !matches.last.empty?
      
      number += to_n(matches.last[0])
    
    end
  
  end
  
  suma += number.to_i

end

puts "Resultado: #{suma}"
