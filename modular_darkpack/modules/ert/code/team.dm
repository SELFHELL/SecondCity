/datum/ert/wod

/datum/ert/wod/swat
//TODO: Get the SWAT Icons from Bomby & reimplement SWAT using the normal ert system
/datum/ert/wod/national_guard
//TODO: Get new assets & reimplement the national guard using the normal ERT system

/datum/ert/wod/pentex
	leader_role = /datum/antagonist/ert/wod/pentex/leader
	roles = list(/datum/antagonist/ert/wod/pentex/medic, /datum/antagonist/ert/wod/pentex/exterminator, /datum/antagonist/ert/wod/pentex/specialist)
	rename_team = "First Team"
	mission = "Liquidate all hostile anomolous entities"
	polldesc = "an elite FIRST Team"

/datum/ert/wod/pentex/budget
	rename_team = "First Team" //For when you need a death-squad on a budget
	mission = "Remove all hostile anomolous entities"
	polldesc = "an 'elite' FIRST Team"
