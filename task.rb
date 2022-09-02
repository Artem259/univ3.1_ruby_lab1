print 'Enter x b y values (space-separated):'
str = gets
exit if str.nil? || str.empty?
str.chomp!
x, b, y = str.split(' ')
x, b, y = x.to_f, b.to_f, y.to_f
print "\nInput:\n x = #{x}\n b = #{b}\n y = #{y}\n\n"

begin
f = Math.acos(Math.sin(x/2) / Math.cbrt(b-1))
f = f + Math.log(Math::E**y + 4.1 * 10**2.1) / Math.tan(Math::PI/4 + x/2)
raise 'Expression cannot be evaluated' if f.infinite? || f.nan?
rescue StandardError => error
  print 'Calculation error: ', error.message
else
  print "Expression result is #{f}"
end
print "\n"