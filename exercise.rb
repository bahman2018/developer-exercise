class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
	  j=i=0
	  str.strip!
    begin
      if str[i]==" " || i==str.size
         if (i-j)>4
           temp1=if j>0 then str[0..j-1] else "" end
           temp2=if str[i-1]== "?" or str[i-1]=="." then str[i-1] else "" end
           if(str[j].upcase==str[j])
             str=temp1+"Marklar"+temp2+str[i..str.size]
           else
             str=temp1 + "marklar"+temp2+str[i..str.size]
           end
         end
         j=i+1
      end
      i+=1
    end while i<=str.size
    return str
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    a = 0
		b = 1
		sum=0

		# Compute Fibonacci number in the desired position.
		nth.times do
      temp = a
      a = b
      # Add up previous two numbers in sequence.
      b = temp + b
      sum+= if a%2==0 then a else 0 end
		end

    return sum

  end

end
