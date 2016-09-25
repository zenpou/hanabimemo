require "erb"
def make
  str = open("hanabi.html.erb").read
  erb = ERB.new(str)
  str =  erb.result
  file = open("hanabi.html", "w")
  file.write str
  file.close
end

loop do
  begin
    make
  rescue => e
    puts e
  end
  p Time.now 
  sleep 1
end
