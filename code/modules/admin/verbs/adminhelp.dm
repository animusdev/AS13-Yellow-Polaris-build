
//This is a list of words which are ignored by the parser when comparing message contents for names. MUST BE IN LOWER CASE!
var/list/adminhelp_ignored_words = list("unknown","the","a","an","of","monkey","alien","as")

/client/verb/adminhelp(msg as text)
	set category = "Admin"
	set name = "Adminhelp"

	if(say_disabled)	//This is here to try to identify lag problems
		usr << "\red Speech is currently admin-disabled."
		return

	//handle muting and automuting
	if(prefs.muted & MUTE_ADMINHELP)
		src << "<font color='red'>Error: Admin-PM: You cannot send adminhelps (Muted).</font>"
		return

	adminhelped = 1 //Determines if they get the message to reply by clicking the name.

	if(msg)
		handle_spam_prevention(MUTE_ADMINHELP)

	//clean the input msg
	if(!msg)
		return
	msg = sanitize(msg)
	if(!msg)
		return

	if(!mob) //this doesn't happen
		return

	//show it to the person adminhelping too
	src << "<font color='blue'>PM to-<b>Staff </b>: [msg]</font>"

	var/mentor_msg = "\blue <b><font color=red>Request for Help: </font>[get_options_bar(mob, 4, 1, 1, 0)]:</b> [msg]"
	msg = "\blue <b><font color=red>Request for Help:: </font>[get_options_bar(mob, 2, 1, 1)]:</b> [msg]"

	var/admin_number_afk = 0

	for(var/client/X in admins)
		if((R_ADMIN|R_MOD|R_MENTOR|R_SERVER) & X.holder.rights)
			if(X.is_afk())
				admin_number_afk++
			if(X.is_preference_enabled(/datum/client_preference/holder/play_adminhelp_ping))
				X << 'sound/effects/adminhelp.ogg'
			if(X.holder.rights == R_MENTOR)
				X << mentor_msg		// Mentors won't see coloring of names on people with special_roles (Antags, etc.)
			else
				X << msg

	var/admin_number_present = admins.len - admin_number_afk
	log_admin("HELP: [key_name(src)]: [msg] - heard by [admin_number_present] non-AFK admins.")
	return

