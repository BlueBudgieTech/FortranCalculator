program Calculator
	implicit none
	real :: num1 
	real :: num2
	character(len=3) :: keyword

		write (*, "(A)", advance = "no") "Enter first number: "
		read(*,*) num1

		write (*, "(A)", advance = "no") "Enter second number: "
		read(*,*) num2
		
		write (*, "(A)", advance = "no") "What would you like to do? (Add, Subtract[Sub], Multiply[Mul] or Divide[Div])?: "
		read(*,*) keyword

		! F0.3 reduces the number of decimal places to be 3
  		! For other edit descriptors, check out https://fortranwiki.org/fortran/show/Edit+descriptors
    
		if (keyword == "Add") then
   			print '("Sum = ", f0.3)', (num1 + num2)
		else if (keyword == "Sub") then
			print '("Difference = ", f0.3)', (num1 - num2)
		else if (keyword == "Mul") then
			print '("Product = ", f0.3)', (num1 * num2)
		else if (keyword == "Div") then
			print '("Quotient = ", f0.3)', (num1 / num2)
		else
			write (*, "(A)", advance = "no") "Invalid Input"
		end if

		read(*,*)

end program Calculator
