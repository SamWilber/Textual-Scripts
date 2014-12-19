-- Quickly rickRoll a channel

on textualcmd(arg, destinationChannel)
	if destinationChannel is equal to "" then
		return "/debug Invalid destination channel."
	end if
	
	set arg to trim(arg)
	
	if arg is equal to "" then
		return "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
	else
		return arg & " https://www.youtube.com/watch?v=dQw4w9WgXcQ"
	end if
	
	
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
