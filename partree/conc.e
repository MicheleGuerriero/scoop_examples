note
	description: "Summary description for {CONC}."
	date: "$Date: 2011-01-18 13:09:17 +0100 (Tue, 18 Jan 2011) $"
	revision: "$Revision: 85393 $"

class
	CONC

create
	make

feature

	x: separate S
	y: separate S

	make (a_x, a_y: separate S)
		do
			x := a_x
			y := a_y
		end

	f
		do
			g (x)
		end

	g (a_x: separate S)
		do
			busy
			h (y)
		end

	h (a_y: separate S)
		do
		end

	busy
		do
			print ("Busy start")
			(create {EXECUTION_ENVIRONMENT}).sleep (100*1000*1000)
			print ("Busy end")
		end

end
