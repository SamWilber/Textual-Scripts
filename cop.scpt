-- a freenode chanserv script to quickly OP yourself or others

on textualcmd(args, destinationChannel)
	if destinationChannel is equal to "" then
		return "/debug Invalid destination channel."
	end if
	
	set args to trim(args)
	
	set user to args
	if args is equal to "" then
		return "/debug Please enter a user."
	end if
	
	
	return "/cs op" & " " & destinationChannel & " " & user
	
end textualcmd

-- trim() AppleScript function from:
-- <http://macscripter.net/viewtopic.php?id=18519>
on trim(someText)
	repeat until someText does not start with " "
		set someText to text 2 thru -1 of someText
	end repeat
	
	repeat until someText does not end with " "
		set someText to text 1 thru -2 of someText
	end repeat
	
	return someText
end trim
