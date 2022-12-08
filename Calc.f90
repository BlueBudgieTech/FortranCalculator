program Calculator
	implicit none
	real :: num1 
	real :: num2
	character(len=3) :: keyword

		print *, 'Enter first number: '
		read(*,*) num1

		print *, 'Enter second number: '
		read(*,*) num2
		
		print *, 'What would you like to do? (Add, Subtract[Sub], Multiply[Mul] or Divide[Div])?'
		read(*,*) keyword

		if (keyword == "Add") then
			print *,'Sum of ', num1, ' and ', num2, ' is = ', (num1+num2)
		else if (keyword == "Sub") then
			print *,'Difference of ', num1, ' and ', num2, ' is = ', (num1-num2)
		else if (keyword == "Mul") then
			print *,'Product of ', num1, ' and ', num2, ' is = ', (num1*num2)
		else if (keyword == "Div") then
			print *,'Quotient of ', num1, ' and ', num2, ' is = ', (num1/num2)
		else
			print *, 'Invalid Input'
		end if

		read(*,*)

end program Calculator