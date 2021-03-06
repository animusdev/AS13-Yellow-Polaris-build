var/global/datum/controller/process/ticker/tickerProcess

/datum/controller/process/ticker
	var/lastTickerTimeDuration
	var/lastTickerTime

/datum/controller/process/ticker/setup()
	name = "ticker"
	schedule_interval = 20 // every 2 seconds

	lastTickerTime = world.timeofday

	if(!ticker)
		ticker = new

	tickerProcess = src

	spawn(0)
		if(ticker)
			ticker.pregame()

/datum/controller/process/ticker/doWork()
	var/currentTime = world.timeofday

	if(currentTime < lastTickerTime) // check for midnight rollover
		lastTickerTimeDuration = (currentTime - (lastTickerTime - TICKS_IN_DAY)) / TICKS_IN_SECOND
	else
		lastTickerTimeDuration = (currentTime - lastTickerTime) / TICKS_IN_SECOND

	lastTickerTime = currentTime

	ticker.process()

/datum/controller/process/ticker/proc/getLastTickerTimeDuration()
	return lastTickerTimeDuration

// Use these preferentially to directly examining ticker.current_state to help prepare for transition to ticker as subsystem!
/datum/controller/process/ticker/proc/HasRoundStarted()
	return (ticker && ticker.current_state >= GAME_STATE_PLAYING)

/datum/controller/process/ticker/proc/IsRoundInProgress()
	return (ticker && ticker.current_state == GAME_STATE_PLAYING)
