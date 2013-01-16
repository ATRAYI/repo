class Fact
def facts
n=gets.chomp.to_i
puts((1..n).inject(:*))
end
f=Fact.new
f.facts
end
