def solution(commands)
  array = []
  command_array = []

  array_string = commands.flat_map do |c|
    array << c.split
   end

   array_string.map do |char|
     if char[1] == ".."
       command_array.pop
     elsif char[1] == "/"
       command_array.clear
     else
       command_array << "/#{char[1]}"
     end
   end
   if command_array.empty?
     "/"
   else
     command_array.uniq.join
   end
end

commands = [
  "cd users",
  "cd codesignal",
  "cd ..",
  "cd admin"
]
commands_2 = [
  "cd users",
  "/"
]
p solution(commands)
p solution(commands_2)
