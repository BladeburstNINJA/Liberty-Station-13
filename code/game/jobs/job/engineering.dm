/datum/job/chief_engineer
	title = "Union Chief"
	flag = UNIONCHIEF
	head_position = 1
	department = DEPARTMENT_ENGINEERING
	department_flag = ENGINEERING | COMMAND
	faction = MAP_FACTION
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Liberty Council"
	difficulty = "Medium."
	selection_color = "#c7b97b"
	req_admin_notify = 1
	playtimerequired = 1200
	wage = WAGE_COMMAND
	ideal_character_age = 50
	minimum_character_age = 25
	health_modifier = 5

	disallow_species = list(FORM_UNBRANDED, FORM_PIRSYNTH, FORM_LIBYNTH, FORM_CHURCHSYNTH, FORM_NASHEF)
	outfit_type = /decl/hierarchy/outfit/job/engineering/chief

	access = list(
		access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels,
		access_teleporter, access_external_airlocks, access_atmospherics, access_emergency_storage, access_eva,
		access_heads, access_construction, access_sec_doors, access_network,
		access_ce, access_RC_announce, access_keycard_auth, access_tcomsat, access_ai_upload
	)

	stat_modifiers = list(
		STAT_MEC = 40,
		STAT_COG = 20,
		STAT_TGH = 15,
		STAT_VIG = 15,
	)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/ntnetmonitor,
							 /datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shield_control,
							 /datum/computer_file/program/reports)

	description = "The Union Chief is the head of the Artificers Guild, a group of skilled engineers. This colony is your pride.<br>\
	You are to keep the colony running and constantly improve it as much as you are able. Let none question the efficacy of your labors.<br>\
	As a leader, it is far more efficient for you to delegate work than attempting to solve everything yourself - spread the labor.<br>\
	Machinery across the colony is your responsibility. Let no outsiders interfere or intrude into your domain - even Command staff are no exception.<br>\
	Treat every Guild member like your family. Keep them paid, fed, and safe. You may be a part of the wider colony, but your own come first."

	duties = "Manage the Guild Adepts - set tasks and areas of focus.<br>\
	Strive to protect the rights of your Adepts, as well as their safety and health.<br>\
	Conduct your own repairs and projects as required - especially when low staffed. "

	perks = list(PERK_INSPIRATION, PERK_HANDYMAN)

/obj/landmark/join/start/chief_engineer
	name = "Union Chief"
	icon_state = "player-orange-officer"
	join_tag = /datum/job/chief_engineer


/datum/job/engineer
	title = "Mechanical Technician"
	flag = TECHNICIAN
	department = DEPARTMENT_ENGINEERING
	department_flag = ENGINEERING
	faction = MAP_FACTION
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Union Chief"
	difficulty = "Medium."
	selection_color = "#d5c88f"
	wage = WAGE_PROFESSIONAL
	outfit_type = /decl/hierarchy/outfit/job/engineering/engineer
	alt_titles = list("Electrical Technician", "Atmospheric Technician", "Technical Apprentice")
	noob_name = "Technical Apprentice"
	access = list(
		access_eva, access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels,
		access_external_airlocks, access_construction, access_atmospherics
	)

	disallow_species = list(FORM_PIRSYNTH, FORM_LIBYNTH, FORM_NASHEF)


	stat_modifiers = list(
		STAT_MEC = 30,
		STAT_COG = 15,
		STAT_TGH = 10,
		STAT_VIG = 10,
	)

	software_on_spawn = list(/datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shield_control)

	description = "The Mechanical Technician is a member of one of the greatest engineering guilds in the galaxy, contracted to maintain this colony.<br>\
Your main priority is ensuring the setup and maintenance of the colonies power grid. Seek guidance on this complex task if untrained.<br>\
Outside of this, you should devote time to learning and configuring various systems. Everything can be improved, and new constructs can be made.<br>\
This upgrade culture extends to your own arsenal - mod and upgrade your tools with parts from maintenance, or purchased from Lonestar or the Prospectors.<br>\
Do not let outsiders, even Command Staff, interfere with the duties of the Guild. And remember - be ready to respond to emergency calls at any time."

	duties = "Start up the solars and generators.<br>\
	Repair anything and anyone that needs some maintenance.<br>\
	Respond to distress calls and patch breaches in the walls.<br>\
	Keep every part of the colony powered, oxygenated, and ready to use."

	perks = list(PERK_INSPIRATION, PERK_HANDYMAN)

/obj/landmark/join/start/engineer
	name = "Mechanical Technician"
	icon_state = "player-orange"
	join_tag = /datum/job/engineer

/datum/job/mining
	title = "Mining Technician"
	flag = MINER
	department = DEPARTMENT_ENGINEERING
	department_flag = ENGINEERING
	faction = MAP_FACTION
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Union Chief"
	difficulty = "Easy."
	alt_titles = list("Drill Technician", "Mining Apprentice")
	selection_color = "#d5c88f"
	wage = WAGE_LABOUR_HAZARD
	health_modifier = 5

	disallow_species = list(FORM_LIBYNTH, FORM_CHURCHSYNTH)
	outfit_type = /decl/hierarchy/outfit/job/engineering/mining

	description = "The Miner is a professional resource procurer, acquiring valuable minerals for Lonestar Shipping Solutions.<br>\
Your primary responsibility is to descend into the deep tunnels and dig up as much ore as you can.<br>\
Accessed by elevator, the area contains an outpost with all the facilities to process said ore and deliver refined materials ready for use.<br>\
Whatever you dig up will go to the cargo department, and from then on it is the responsibility of others within Lonestar to sell it.<br>\
The deep tunnels are far less dangerous than the wilderness, but pack well - disappearances are not unheard of."

	duties = "Dig up ores and minerals to be processed into usable material.<br>\
	Locate other valuables within the tunnels that may be turned to profit."

	access = list(
		access_eva, access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels,
		access_external_airlocks, access_construction, access_atmospherics
	)

	perks = list(PERK_INSPIRATION, PERK_HANDYMAN)

	stat_modifiers = list(
		STAT_ROB = 15,
		STAT_TGH = 15,
		STAT_VIG = 15,
		STAT_MEC = 15
	)

	software_on_spawn = list(
							 /datum/computer_file/program/wordprocessor,
							 /datum/computer_file/program/reports
							 )

/obj/landmark/join/start/mining
	name = "Mining Technician"
	icon_state = "player-beige"
	join_tag = /datum/job/mining


/datum/job/janitor
	title = "Sanitation Technician"
	flag = JANITOR
	department = DEPARTMENT_SERVICE
	department_flag = SERVICE
	faction = MAP_FACTION
	total_positions = 2
	spawn_positions = 2
	supervisors = "Union Chief"
	difficulty = "Easy."
	selection_color = "#d5c88f"
	alt_titles = list("Custodian", "Janitor")
	access = list(access_janitor, access_maint_tunnels, access_morgue, access_hydroponics, access_bar, access_kitchen)
	wage = WAGE_PROFESSIONAL
	health_modifier = 5
	outfit_type = /decl/hierarchy/outfit/job/engineering/janitor

	perks = list(PERK_JINGLE_JANGLE, PERK_NEAT)

	stat_modifiers = list(
		STAT_ROB = 15,
		STAT_TGH = 10,
		STAT_VIG = 15,
		STAT_COG = 10,
	)


	software_on_spawn = list(/datum/computer_file/program/camera_monitor)
	description = "The lowly Janitor, well paid but rarely respected, nevertheless provides a valuable service.<br>\
	You will trundle around the colony, armed with your trusty janicart full of cleaning supplies, disposing of trash and pests.<br>\
	Some minor maintenance also falls within your duties. Fix lights, correct broken vendors, replace floor tiles - ease the guild burden.<br>\
	Although your status is miserable, your knowledge of maintenance may lead you to some valuable salvage for some extra cash."

	duties = "Clean blood, dirt, rubble and messes. Don't clean up crime scenes!<br>\
		Conduct minor repairs and maintenance when guild adepts aren't available.<br>\
		Restock Newscasters to at lest 15 prints.<br>\
		Deploy traps on burrows and do your best to handle the ongoing roach and spider problem."

/obj/landmark/join/start/janitor
	name = "Sanitation Technician"
	icon_state = "player-black"
	join_tag = /datum/job/janitor
