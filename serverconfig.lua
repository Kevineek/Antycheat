--[[  
░██████╗███████╗██████╗░██╗░░░██╗███████╗██████╗░  ░█████╗░░█████╗░███╗░░██╗███████╗██╗░██████╗░
██╔════╝██╔════╝██╔══██╗██║░░░██║██╔════╝██╔══██╗  ██╔══██╗██╔══██╗████╗░██║██╔════╝██║██╔════╝░
╚█████╗░█████╗░░██████╔╝╚██╗░██╔╝█████╗░░██████╔╝  ██║░░╚═╝██║░░██║██╔██╗██║█████╗░░██║██║░░██╗░
░╚═══██╗██╔══╝░░██╔══██╗░╚████╔╝░██╔══╝░░██╔══██╗  ██║░░██╗██║░░██║██║╚████║██╔══╝░░██║██║░░╚██╗
██████╔╝███████╗██║░░██║░░╚██╔╝░░███████╗██║░░██║  ╚█████╔╝╚█████╔╝██║░╚███║██║░░░░░██║╚██████╔╝
╚═════╝░╚══════╝╚═╝░░╚═╝░░░╚═╝░░░╚══════╝╚═╝░░╚═╝  ░╚════╝░░╚════╝░╚═╝░░╚══╝╚═╝░░░░░╚═╝░╚═════╝░]]
kvn = {}


ftl.AntiExplosionEvent = true
ftl.AntiEntityCreating = true

--//Exploze kterých sender bude zabanován (Většinou ty, co jsou často v mod menu) https://wiki.rage.mp/index.php?title=Explosions \\--
ftl.CheaterExploze = {0, 1, 2, 3, 4, 5, 38, 36, 29, 31}

--//Exploze kterých sender nebude mít žádný postih ale budou detekované a cancelnuté (Např. výbuch benzínky ,auta ,atd...) https://wiki.rage.mp/index.php?title=Explosions \\--
ftl.PlayerExploze = {6, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 21, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 37, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72}



--// Object whitelisting \\--
ftl.objectWhitelist = {
-1038739674,
'p_till_01_s',
'prop_poly_bag_01',
'p_v_43_safe_s',
'prop_drug_package_02',
'prop_tool_broom',
'p_ld_stinger_s',
'prop_monitor_w_large',
'prop_rub_table_01',
'xm_base_cia_server_01',
'v_corp_servercln2',
'prop_barrier_work05',
'hei_prop_cash_crate_half_full',
'prop_boxpile_07d',
'prop_roadcone02a',
'prop_wheelchair_01',
'prop_ballistic_shield',
'prop_cs_phone_01',
'prop_money_bag_01',
'prop_cs_spray_can',
'w_ar_carbinerifle',
'w_sg_pumpshotgun',
'prop_v_cam_01',
'p_ing_microphonel_01',
'apa_mp_apa_yacht_jacuzzi_ripple1',
'xm_prop_x17_l_door_glass_01',
'xm_prop_x17_l_glass_01',
'xm_prop_x17_l_glass_02',
'xm_prop_x17_l_glass_03',
'prop_cs_burger_01',
'prop_peanut_bowl_01',
'v_ret_ml_chips2',
'prop_energy_drink',
'prop_cs_beer_bot_02',
'prop_cs_beer_bot_40oz_02',
'p_whiskey_bottle_s',
'prop_sh_tall_glass',
'ba_prop_battle_shot_glass_01',
'prop_mojito',
'prop_rum_bottle',
'v_res_fh_fruitbowl',
'ng_proc_sodacan_01b',
'prop_ld_flow_bottle',
'vw_prop_vw_champ_closed',
'prop_cs_coke_line',
'prop_weed_bottle',
'prop_cigar_03',
'p_amb_joint_01',
'prop_tool_pickaxe',
'prop_cs_remote_01',
'prop_cs_hand_radio',
'prop_v_bmike_01',
'hei_p_m_bag_var22_arm_s',
'hei_prop_heist_thermite',
'hei_prop_hst_laptop',
'hei_prop_heist_card_hack_02',
'p_ld_id_card_01',
'hei_prop_heist_cash_pile',
'prop_amb_phone',
'ng_proc_sodabot_01a',
'ng_proc_box_01a',
'ng_proc_food_burg01a',
'ba_prop_battle_glowstick_01',
'ba_prop_battle_hobby_horse',
'prop_rub_planks_01',
'prop_log_01',
'p_amb_brolly_01',
'prop_notepad_01',
'prop_pencil_01',
'hei_prop_heist_box',
'prop_single_rose',
'prop_cs_ciggy_01',
'hei_heist_sh_bong_01',
'prop_ld_suitcase_01',
'prop_security_case_01',
'prop_police_id_board',
'p_amb_coffeecup_01',
'prop_drink_whisky',
'prop_amb_beer_bottle',
'prop_plastic_cup_02',
'prop_amb_donut',
'prop_sandwich_01',
'prop_food_mustard',
'prop_rolled_sock_02',
'prop_ecola_can',
'prop_boombox_01',
'prop_choc_ego',
'prop_drink_redwine',
'prop_champ_flute',
'prop_drink_champ',
'prop_cigar_02',
'prop_cigar_01',
'prop_acc_guitar_01',
'prop_el_guitar_01',
'prop_el_guitar_03',
'prop_novel_01',
'prop_snow_flower_02',
'v_ilev_mr_rasberryclean',
'p_michael_backpack_s',
'p_amb_clipboard_01',
'prop_tourist_map_01',
'prop_beggers_sign_03',
'prop_anim_cash_pile_01',
'prop_pap_camera_01',
'ba_prop_battle_champ_open',
'p_cs_joint_02',
'prop_amb_ciggy_01',
'prop_ld_case_01',
'prop_cs_tablet',
'prop_npc_phone_02',
'prop_sponge_01',
'prop_cone_float_1',
'prop_cctv_cam_01a_2',
'prop_cctv_cam_01b_2',
'prop_cctv_cam_02a_2',
'prop_cctv_cam_03a_2',
'prop_cctv_cam_04a_2',
'prop_cctv_cam_04b_2',
'prop_cctv_cam_04c_2',
'prop_cctv_cam_05a_2',
'prop_cctv_cam_06a_2',
'prop_cctv_cam_07a_2',
269934519,
2007413986,
881130828,
769923921,
2714348429}


--// Vehicle Blacklisting \\--
ftl.vehicleBlacklist = {
    "submarine",
    "tug",
    "blimp2",
    "blimp",
    "vestra",
    "vigilante",
    "hydra",
    "buzzard",
    "deluxo",
    "freight",
    "avenger",
    "akula",
    "apc",
    "barrage",
    "caracara",
    "cargobob",
    "chernobog",
    "cargoplane",
    "hunter",
    "insurgent",
    "starling",
    "lazer",
    "bombushka",
    "savage",
    "rhino",
    "khanjali",
    "tractor",
    "dump",
    "freight",
    "dune2",
    "tanker",
    "ruiner2",
    "blaze",
    "oppressor",
    "oppressor2",
    "jet" 
}
--// Ped Blacklisting \\-- 
ftl.pedBlacklist = {
    "a_c_dolphin",
    "a_c_killerwhale", 
    "a_c_sharktiger",
    "a_c_humpback",
    "mp_m_niko_01",
    "a_m_m_tramp_01",
    "hc_gunman",
    "ig_johnnyklebitz",
    "u_m_y_staggrm_01",
    'mp_m_marston_01',
    'u_m_y_prisoner_01',
    'ig_wade',
    'cs_orleans',
    's_m_y_swat_01',
    'mp_m_freemode_01',
    'mp_f_freemode_01',
    'a_m_y_skater_01',
    'u_m_y_pogo_01',
    "player_zero",
    "player_one",
    "player_two",
    "u_m_m_streetart_01",
    "u_m_m_jesus_01",
    "u_m_y_babyd",
    "u_m_y_rsranger_01",
    "u_m_y_zombie_01",
    "u_m_y_pogo_0",
    "s_m_y_clown_01",
    "s_m_m_movspace_01",
    "mp_f_cocaine_01",
    "g_m_y_famca_01",
    "g_m_y_ballasout_01",
    "g_m_y_famfor_01",
    "g_m_y_ballaeast_01",
    "a_c_chimp",
    "a_m_m_acult_01",
    "a_m_y_skater_02",
    "u_m_y_juggernaut_01"
}

ftl.BannedEvents = {
"adminmenu:allowall",
"AdminMenu:giveBank",
"AdminMenu:giveCash",
"AdminMenu:giveDirtyMoney",
"Tem2LPs5Para5dCyjuHm87y2catFkMpV",
"dqd36JWLRC72k8FDttZ5adUKwvwq9n9m",
"antilynx8:anticheat",
"antilynxr4:detect",
"antilynxr6:detection",
"ynx8:anticheat",
"antilynx8r4a:anticheat",
"lynx8:anticheat",
"AntiLynxR4:kick",
"AntiLynxR4:log",
"Banca:deposit",
"Banca:withdraw",
"BsCuff:Cuff696999",
"CheckHandcuff",
"cuffServer",
"cuffGranted",
"DiscordBot:playerDied",
"DFWM:adminmenuenable",
"DFWM:askAwake",
"DFWM:checkup",
"DFWM:cleanareaentity",
"DFWM:cleanareapeds",
"DFWM:cleanareaveh",
"DFWM:enable",
"DFWM:invalid",
"DFWM:log",
"DFWM:openmenu",
"DFWM:spectate",
"DFWM:ViolationDetected",
"ems:revive",
"esx_banksecurity:pay",
"esx_blanchisseur:startWhitening",
"esx_drugs:startHarvestWeed",
"esx_drugs:startTransformWeed",
"esx_drugs:startSellWeed",
"esx_drugs:startHarvestCoke",
"esx_drugs:startTransformCoke",
"esx_drugs:startSellCoke",
"esx_drugs:startHarvestMeth",
"esx_drugs:startTransformMeth",
"esx_drugs:startSellMeth",
"esx_drugs:startHarvestOpium",
"esx_drugs:startTransformOpium",
"esx_drugs:startSellOpium",
"esx_drugs:stopHarvestCoke",
"esx_drugs:stopTransformCoke",
"esx_drugs:stopSellCoke",
"esx_drugs:stopHarvestMeth",
"esx_drugs:stopTransformMeth",
"esx_drugs:stopSellMeth",
"esx_drugs:stopHarvestWeed",
"esx_drugs:stopTransformWeed",
"esx_drugs:stopSellWeed",
"esx_drugs:stopHarvestOpium",
"esx_drugs:stopTransformOpium",
"esx_drugs:stopSellOpium",
"esx:enterpolicecar",
"esx_garbagejob:pay",
"esx_godirtyjob:pay",
"esx_handcuffs:cuffing",
"esx_jail:sendToJail",
"esx_jail:unjailQuest",
"esx_jailer:sendToJail",
"esx_jailer:unjailTime",
"esx_mecanojob:onNPCJobCompleted",
"esx_pizza:pay",
"esx_ranger:pay",
--"esx:removeInventoryItem",
"esx_truckerjob:pay",
--"esx_skin:responseSaveSkin",
"esx_slotmachine:sv:2",
"hentailover:xdlol",
"JailUpdate",
"js:jailuser",
"js:removejailtime",
"ljail:jailplayer",
"lscustoms:payGarage",
"mellotrainer:adminTempBan",
"mellotrainer:adminKick",
"mellotrainer:s_adminKill",
"NB:destituerplayer",
"NB:recruterplayer",
"OG_cuffs:cuffCheckNearest",
"paramedic:revive",
"police:cuffGranted",
"unCuffServer",
"uncuffGranted",
"vrp_slotmachine:server:2",
"whoapd:revive",
"gcPhone:_internalAddMessageDFWM",
"gcPhone:tchat_channelDFWM",
"esx_vehicleshop:setVehicleOwnedDFWM",
"esx_mafiajob:confiscateDFWMPlayerItem",
"_chat:messageEntDFWMered",
"lscustoms:pDFWMayGarage",
"vrp_slotmachDFWMine:server:2",
"Banca:dDFWMeposit",
"bank:depDFWMosit",
"esx_jobs:caDFWMution",
"esx_fueldDFWMelivery:pay",
"esx_carthDFWMief:pay",
"esx_godiDFWMrtyjob:pay",
"esx_pizza:pDFWMay",
"esx_ranger:pDFWMay",
"esx_garbageDFWMjob:pay",
"esx_truckDFWMerjob:pay",
"AdminMeDFWMnu:giveBank",
"AdminMDFWMenu:giveCash",
"esx_goDFWMpostaljob:pay",
"esx_baDFWMnksecurity:pay",
"esx_sloDFWMtmachine:sv:2",
"esx:giDFWMveInventoryItem",
"NB:recDFWMruterplayer",
"esx_biDFWMlling:sendBill",
"esx_jDFWMailer:sendToJail",
"esx_jaDFWMil:sendToJail",
"js:jaDFWMiluser",
"esx-qalle-jail:jailPDFWMlayer",
"esx_dmvschool:pDFWMay",
"LegacyFuel:PayFuDFWMel",
"OG_cuffs:cuffCheckNeDFWMarest",
"CheckHandcDFWMuff",
"cuffSeDFWMrver",
"cuffGDFWMranted",
"police:cuffGDFWMranted",
"esx_handcuffs:cufDFWMfing",
"esx_policejob:haDFWMndcuff",
"bank:withdDFWMraw",
"dmv:succeDFWMss",
"esx_skin:responseSaDFWMveSkin",
"esx_dmvschool:addLiceDFWMnse",
"esx_mechanicjob:starDFWMtCraft",
"esx_drugs:startHarvestWDFWMeed",
"esx_drugs:startTransfoDFWMrmWeed",
"esx_drugs:startSellWeDFWMed",
"esx_drugs:startHarvestDFWMCoke",
"esx_drugs:startTransDFWMformCoke",
"esx_drugs:startSellCDFWMoke",
"esx_drugs:startHarDFWMvestMeth",
"esx_drugs:startTDFWMransformMeth",
"esx_drugs:startSellMDFWMeth",
"esx_drugs:startHDFWMarvestOpium",
"esx_drugs:startSellDFWMOpium",
"esx_drugs:starDFWMtTransformOpium",
"esx_blanchisDFWMseur:startWhitening",
"esx_drugs:stopHarvDFWMestCoke",
"esx_drugs:stopTranDFWMsformCoke",
"esx_drugs:stopSellDFWMCoke",
"esx_drugs:stopHarvesDFWMtMeth",
"esx_drugs:stopTranDFWMsformMeth",
"esx_drugs:stopSellMDFWMeth",
"esx_drugs:stopHarDFWMvestWeed",
"esx_drugs:stopTDFWMransformWeed",
"esx_drugs:stopSellWDFWMeed",
"esx_drugs:stopHarvestDFWMOpium",
"esx_drugs:stopTransDFWMformOpium",
"esx_drugs:stopSellOpiuDFWMm",
"esx_society:openBosDFWMsMenu",
"esx_jobs:caDFWMution",
"esx_tankerjob:DFWMpay",
"esx_vehicletrunk:givDFWMeDirty",
"gambling:speDFWMnd",
"AdminMenu:giveDirtyMDFWMoney",
"esx_moneywash:depoDFWMsit",
"esx_moneywash:witDFWMhdraw",
"mission:completDFWMed",
"truckerJob:succeDFWMss",
"99kr-burglary:addMDFWMoney",
"esx_jailer:unjailTiDFWMme",
"esx_ambulancejob:reDFWMvive",
"DiscordBot:plaDFWMyerDied",
"esx:getShDFWMaredObjDFWMect",
"esx_society:getOnlDFWMinePlayers",
"js:jaDFWMiluser",
"h:xd",
"adminmenu:setsalary",
"adminmenu:cashoutall",
"bank:tranDFWMsfer",
"paycheck:bonDFWMus",
"paycheck:salDFWMary",
"HCheat:TempDisableDetDFWMection",
"esx_drugs:pickedUpCDFWMannabis",
"esx_drugs:processCDFWMannabis",
"esx-qalle-hunting:DFWMreward",
"esx-qalle-hunting:seDFWMll",
"esx_mecanojob:onNPCJobCDFWMompleted",
"BsCuff:Cuff696DFWM999",
"veh_SR:CheckMonDFWMeyForVeh",
"esx_carthief:alertcoDFWMps",
"mellotrainer:adminTeDFWMmpBan",
"mellotrainer:adminKickDFWM",
"esx_society:putVehicleDFWMInGarage"
}
