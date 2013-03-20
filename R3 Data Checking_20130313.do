*Before importing Qualtrics dataset from Excel, remove row 2 from the Excel file.*

cd "C:\Users\an-lih\Dropbox\YouthTruth\2012-13 YouthTruth\Data\Data Checking\R3 HS Data Checking\Prep\Syntax Writing & Testing"

clear

set mem 300m

set more off, permanently

log using "testlog.log", replace

capture log close

use "qualtricstestdata.dta", clear

*Remove unnecessary variables from dataset.*
drop DrugsAlcohol EMHealth EarlyCollege GenHealth LGBT LearningStyles MERig NutritionExercise PBL SRGrades STEM Safety SchoolName StudentOwnshp StudentVoice SurveyLanguage TM V10 V2 V3 V5 V6 V7 V8 V9 adult attend culture da_end dem drugsalch earlycoll ec_intro eceng emhealth end endmsg endmsgES eng_campus engagetxt1 engagetxt2 engagetxt3 engagetxt4 engmodule environtxt1 environtxt2 environtxt3 environtxt4 expect_TEXT feelschool fut genhealth gh_end hardbest_11_TEXT incorrect interactxt1 interactxt2 interactxt3 interactxt4 intro language learnexp1 learnexp2 learnexp3 learnexp4 lenmonth_1_TEXT lenyear_1_TEXT ls_end ls_intro math_campu mathmodule ne_end ne_intro pbl_end pbl_intro qual_opt qual_oth qual_othES qualstreng1 qualstreng10 qualstreng19 qualstreng2 qualstreng21 qualstreng22 qualstreng23 qualstreng24 qualstreng25 qualstreng26 qualstreng3 qualstreng4 qualstreng5 qualstreng6 qualstreng7 qualweakne1 qualweakne10 qualweakne16 qualweakne18 qualweakne19 qualweakne2 qualweakne20 qualweakne21 qualweakne22 qualweakne23 qualweakne24 qualweakne25 qualweakne26 qualweakne3 qualweakne4 qualweakne5 qualweakne6 qualweakne7 race_6_TEXT rigor safe_end safe_intro safe_text som som_end som_story stem_end stem_expstem_partother_TEXT stem_instem_in_other_TEXT stem_intro stem_outstem_out_other_TEXT strength_TEXT strngweak support surveylen_1 surveylnES_1 time10_11 time10_110 time10_116 time10_118 time10_119 time10_12 time10_120 time10_121 time10_122 time10_123 time10_124 time10_125 time10_126 time10_13 time10_14 time10_15 time10_16 time10_17 time10_21 time10_210 time10_216 time10_218 time10_219 time10_22 time10_220 time10_221 time10_222 time10_223 time10_224 time10_225 time10_226 time10_23 time10_24 time10_25 time10_26 time10_27 time10_31 time10_310 time10_316 time10_318 time10_319 time10_32 time10_320 time10_321 time10_322 time10_323 time10_324 time10_325 time10_326 time10_33 time10_34 time10_35 time10_36 time10_37 time10_41 time10_410 time10_416 time10_418 time10_419 time10_42 time10_420 time10_421 time10_422 time10_423 time10_424 time10_425 time10_426 time10_43 time10_44 time10_45 time10_46 time10_47 time11_1 time11_2 time11_3 time11_4 time12_1 time12_2 time12_3 time12_4 time13_1 time13_2 time13_3 time13_4 time14_1 time14_2 time14_3 time14_4 time15_1 time15_2 time15_3 time15_4 time16_1 time16_2 time16_3 time16_4 time17_1 time17_2 time17_3 time17_4 time18_1 time18_2 time18_3 time18_4 time19_1 time19_2 time19_3 time19_4 time1_1 time1_2 time1_3 time1_4 time20_1 time20_2 time20_3 time20_4 time21_1 time21_2 time21_3 time21_4 time22_1 time22_2 time22_3 time22_4 time23_1 time23_2 time23_3 time23_4 time24_1 time24_2 time24_3 time24_4 time25_11 time25_12 time25_13 time25_14 time25_21 time25_22 time25_23 time25_24 time25_31 time25_32 time25_33 time25_34 time25_41 time25_42 time25_43 time25_44 time26_11 time26_12 time26_13 time26_14 time26_21 time26_22 time26_23 time26_24 time26_31 time26_32 time26_33 time26_34 time26_41 time26_42 time26_43 time26_44 time27_11 time27_12 time27_13 time27_14 time27_21 time27_22 time27_23 time27_24 time27_31 time27_32 time27_33 time27_34 time27_41 time27_42 time27_43 time27_44 time28_11 time28_12 time28_13 time28_14 time28_21 time28_22 time28_23 time28_24 time28_31 time28_32 time28_33 time28_34 time28_41 time28_42 time28_43 time28_44 time29_11 time29_12 time29_13 time29_14 time29_21 time29_22 time29_23 time29_24 time29_31 time29_32 time29_33 time29_34 time29_41 time29_42 time29_43 time29_44 time2_1 time2_2 time2_3 time2_4 time30_11 time30_12 time30_13 time30_14 time30_21 time30_22 time30_23 time30_24 time30_31 time30_32 time30_33 time30_34 time30_41 time30_42 time30_43 time30_44 time31_1 time31_2 time31_3 time31_4 time32_1 time32_2 time32_3 time32_4 time33_1 time33_2 time33_3 time33_4 time34_1 time34_2 time34_3 time34_4 time35_1 time35_2 time35_3 time35_4 time36_1 time36_2 time36_3 time36_4 time37_1 time37_2 time37_3 time37_4 time38_1 time38_2 time38_3 time38_4 time39_1 time39_2 time39_3 time39_4 time3_1 time3_2 time3_3 time3_4 time40_1 time40_2 time40_3 time40_4 time41_1 time41_2 time41_3 time41_4 time42_1 time42_2 time42_3 time42_4 time43_1 time43_2 time43_3 time43_4 time44_1 time44_2 time44_3 time44_4 time45_1 time45_2 time45_3 time45_4 time46_1 time46_2 time46_3 time46_4 time47_1 time47_2 time47_3 time47_4 time48_1 time48_2 time48_3 time48_4 time49_1 time49_2 time49_3 time49_4 time4_1 time4_2 time4_3 time4_4 time50_1 time50_2 time50_3 time50_4 time51_1 time51_2 time51_3 time51_4 time52_1 time52_2 time52_3 time52_4 time53_1 time53_2 time53_3 time53_4 time54_1 time54_2 time54_3 time54_4 time55_1 time55_2 time55_3 time55_4 time56_1 time56_2 time56_3 time56_4 time57_1 time57_2 time57_3 time57_4 time58_1 time58_2 time58_3 time58_4 time59_1 time59_2 time59_3 time59_4 time5_1 time5_2 time5_3 time5_4 time60_1 time60_2 time60_3 time60_4 time61_1 time61_2 time61_3 time61_4 time62_1 time62_2 time62_3 time62_4 time6_1 time6_2 time6_3 time6_4 time7_1 time7_2 time7_3 time7_4 time8_11 time8_110 time8_119 time8_12 time8_121 time8_122 time8_123 time8_124 time8_125 time8_126 time8_13 time8_14 time8_15 time8_16 time8_17 time8_21 time8_210 time8_219 time8_22 time8_221 time8_222 time8_223 time8_224 time8_225 time8_226 time8_23 time8_24 time8_25 time8_26 time8_27 time8_31 time8_310 time8_319 time8_32 time8_321 time8_322 time8_323 time8_324 time8_325 time8_326 time8_33 time8_34 time8_35 time8_36 time8_37 time8_41 time8_410 time8_419 time8_42 time8_421 time8_422 time8_423 time8_424 time8_425 time8_426 time8_43 time8_44 time8_45 time8_46 time8_47 time9_1 time9_2 time9_3 time9_4 time_grds1_1 time_grds1_2 time_grds1_3 time_grds1_4 time_lgbt_1 time_lgbt_2 time_lgbt_3 time_lgbt_4 tm_end1 tm_end2 tm_end3 tm_end4 tm_nodk1 tm_nodk2 tm_nodk3 tm_nodk4 tmintro transgen ts_adultresp1 ts_adultresp2 ts_adultresp3 ts_adultresp4 ts_askexpl1 ts_askexpl2 ts_askexpl3 ts_askexpl4 ts_askqns1 ts_askqns2 ts_askqns3 ts_askqns4 ts_believe1 ts_believe2 ts_believe3 ts_believe4 ts_bevcontrol1 ts_bevcontrol2 ts_bevcontrol3 ts_bevcontrol4 ts_bevwants1 ts_bevwants2 ts_bevwants3 ts_bevwants4 ts_classbusy1 ts_classbusy2 ts_classbusy3 ts_classbusy4 ts_connect1 ts_connect2 ts_connect3 ts_connect4 ts_correct1 ts_correct2 ts_correct3 ts_correct4 ts_discipline1 ts_discipline2 ts_discipline3 ts_discipline4 ts_dowell1 ts_dowell2 ts_dowell3 ts_dowell4 ts_enjoy1 ts_enjoy2 ts_enjoy3 ts_enjoy4 ts_expbest1 ts_expbest2 ts_expbest3 ts_expbest4 ts_explain1 ts_explain2 ts_explain3 ts_explain4 ts_extra1 ts_extra2 ts_extra3 ts_extra4 ts_fair1 ts_fair2 ts_fair3 ts_fair4 ts_feelcare1 ts_feelcare2 ts_feelcare3 ts_feelcare4 ts_fulleffort1 ts_fulleffort2 ts_fulleffort3 ts_fulleffort4 ts_helpout1 ts_helpout2 ts_helpout3 ts_helpout4 ts_learnlot1 ts_learnlot2 ts_learnlot3 ts_learnlot4 ts_nogiveup1 ts_nogiveup2 ts_nogiveup3 ts_nogiveup4 ts_nomem1 ts_nomem2 ts_nomem3 ts_nomem4 ts_pride1 ts_pride2 ts_pride3 ts_pride4 ts_studresp1 ts_studresp2 ts_studresp3 ts_studresp4 ts_teachassign1 ts_teachassign2 ts_teachassign3 ts_teachassign4 ts_teachundr1 ts_teachundr2 ts_teachundr3 ts_teachundr4 ts_think1 ts_think2 ts_think3 ts_think4 ts_trybest1 ts_trybest2 ts_trybest3 ts_trybest4 ts_tryexp1 ts_tryexp2 ts_tryexp3 ts_tryexp4 ts_under1 ts_under2 ts_under3 ts_under4 ts_verify_1 ts_verify_2 ts_verify_3 ts_verify_4 unwelcome_11_TEXT voice_end voice_intr weakness_TEXT whydrop_11_TEXT year_TEXT

*Rename variables whose names in Qualtrics dataset do not match those in final dataset.*
rename (V1 V4 expect whydrop_1 whydrop_2 whydrop_3 whydrop_4 whydrop_5 whydrop_6 whydrop_7 whydrop_8 whydrop_9 whydrop_10 whydrop_11 hardbest_1 hardbest_2 hardbest_3 hardbest_4 hardbest_5 hardbest_6 hardbest_7 hardbest_8 hardbest_9 hardbest_10 hardbest_11 hardbest_12 bully_1 bully_2 bully_3 bully_4 bully_5 bully_6 unwelcome_1 unwelcome_2 unwelcome_3 unwelcome_6 unwelcome_7 unwelcome_8 unwelcome_9 unwelcome_10 unwelcome_11 unwelcome_12 classtype_1 classtype_2 classtype_3 classtype_4 classtype_5 classtype_6 gh_think_1) (responseid pin expect_next whydrop_safe whydrop_safeto whydrop_cared whydrop_helplife whydrop_failed whydrop_behind whydrop_work whydrop_personal whydrop_students whydrop_discouraged whydrop_other hardbest_family hardbest_work hardbest_home hardbest_drugs hardbest_crimeout hardbest_crimein hardbest_social hardbest_picked hardbest_mental hardbest_extra hardbest_other hardbest_none bully_phy bully_verb bully_soc bully_elec bully_dk bully_none un_gender un_race un_from un_look un_religion un_orient un_finance un_disabil un_other un_prefer classtype_gen classtype_spec classtype_ell classtype_honors classtype_career classtype_dk gh_think)

*Remove incomplete responses from dataset.*
drop if SchoolCode==""

drop if year==. | gender==. | enjoy==. | rel_help==. | exp_best==. | engage_pride==. | trydobest==. | options==. | engage_qual==. | strength==. | weakness==.

*Recode "year" values before running subsequent syntax if necessary as result of *
*non-response bias check                                                         *
label define gradel 1 "Freshmen" 2 "Sophomores" 3 "Juniors" 4 "Seniors" 77 "Others"
label values year gradel

gen str10 Grade_Level = string(year)
replace Grade_Level="Freshmen" if Grade_Level=="1"
replace Grade_Level="Sophomores" if Grade_Level=="2"
replace Grade_Level="Juniors" if Grade_Level=="3"
replace Grade_Level="Seniors" if Grade_Level=="4"
replace Grade_Level="Others" if Grade_Level=="77"
label variable Grade_Level "grade level string"

*Replace SchoolCode with School_Short to allow for merge with Python dataset.*
rename SchoolCode School_Short
replace School_Short="ACReynolds13X" if School_Short=="ACREY"
replace School_Short="AikenCCHS13X" if School_Short=="AIKEN"
replace School_Short="AnsonHigh13X" if School_Short=="ANSHS"
replace School_Short="AnsonNewTech13X" if School_Short=="ANSNT"
replace School_Short="Avery13X" if School_Short=="AVERY"
replace School_Short="BCECHS13X" if School_Short=="BCEC"
replace School_Short="BCEC13X" if School_Short=="BCECHS"
replace School_Short="BertieSTEM13X" if School_Short=="BERTIE"
replace School_Short="BREC13X" if School_Short=="BREC"
replace School_Short="CascoBay13X" if School_Short=="CAS"
replace School_Short="CorettaScottKing13X" if School_Short=="KING"
replace School_Short="DECHS13X" if School_Short=="DEC"
replace School_Short="ECEHS13X" if School_Short=="ECE"
replace School_Short="EasternWayne13X" if School_Short=="EWHS"
replace School_Short="HHLSHS13X" if School_Short=="HHLS"
replace School_Short="Hudson13X" if School_Short=="HUDSON"
replace School_Short="HughesSTEM13X" if School_Short=="HUGHES"
replace School_Short="LPSHayward13X" if School_Short=="LPS"
replace School_Short="LPSCollegePark13X" if School_Short=="LPSO"
replace School_Short="LPSRichmond13X" if School_Short=="LPSR"
replace School_Short="LMHS13X" if School_Short=="LSHS"
replace School_Short="MST13X" if School_Short=="MCHSTR"
replace School_Short="MC2STEM13X" if School_Short=="MCS"
replace School_Short="NewBern13X" if School_Short=="NBHS"
replace School_Short="SACAD13X" if School_Short=="SACAD"
replace School_Short="SALaw13X" if School_Short=="SALAW"
replace School_Short="SouthCaldwell13X" if School_Short=="SCALD"
replace School_Short="SouthCreek13X" if School_Short=="SCRK"
replace School_Short="SILSA13X" if School_Short=="SILSA"
replace School_Short="SouthView13X" if School_Short=="SVHS"
replace School_Short="TechValley13X" if School_Short=="TVHS"
replace School_Short="Wake13X" if School_Short=="WAKE"
replace School_Short="WestBrunswick13X" if School_Short=="WBRUN"
replace School_Short="Warren13X" if School_Short=="WCHS"
replace School_Short="WNTHS13X" if School_Short=="WNT"

*Generate Grade_Segment to allow for merge with Python dataset.              *
**Concatenate School_Short and Grade_Level in Python dataset prior to import.*
gen str30 Grade_Segment = School_Short + Grade_Level
label variable Grade_Segment "grade segementation identifier"

*Generate factor variables.*
egen engage_fact = rowmean(enjoy rel_help exp_best engage_pride trydobest) if enjoy !=. & rel_help !=. & exp_best !=. & engage_pride !=. & trydobest !=.
label variable engage_fact "student engagement factor"
egen adult_fact = rowmean(ad_fair rel_connec ad_extra exp_satisfied exp_believe ad_under) if ad_fair !=. & rel_connec !=. & ad_extra !=. & exp_satisfied !=. & exp_believe !=. & ad_under !=.
label variable adult_fact "student-teacher relationships factor"
egen climate_fact = rowmean(clim_dowell clim_studresp clim_adultresp clim_discipline) if clim_dowell !=. & clim_studresp !=. & clim_adultresp !=. & clim_discipline !=.
label variable climate_fact "school culture factor"
egen rigor_fact = rowmean(rig_workhard rig_think rig_teachundr rig_teachassign) if rig_workhard !=. & rig_think !=. & rig_teachundr !=. & rig_teachassign !=.
label variable rigor_fact "academic rigor factor"
egen prep_fact = rowmean(prep_skills_col prep_steps_col prep_skills_car prep_steps_car) if prep_skills_col !=. & prep_steps_col !=. & prep_skills_car !=. & prep_steps_car !=.
label variable prep_fact "preparedness factor"

*Consolidate srgrades1 and srgrades2 into single srgrades variable.*
gen srgrades = srgrades1
replace srgrades = srgrades2 if srgrades1==.
label variable srgrades "self-reported grades"
drop srgrades1 srgrades2
tab srgrades, gen(srgrades)
rename srgrades14 srgrades77

*Run describe command to determine whether the variable type must change*
*for any categorical variables that will become dummy variables.        *
describe

*Recode original race variables from Qualtrics into dummy variables by replacing*
*blanks with zeros.                                                             *
gen r_aframb = real(race_1)
recode r_aframb (.=0)
drop race_1
rename (race_2 race_3 race_4 race_5 race_6 race_7) (r_nativeal r_asianind r_white r_sphislat r_oth r_prefer)
recode r_nativeal r_asianind r_white r_sphislat r_oth r_prefer (.=0)
*Generate r_multi.*
gen r_multi=r_aframb+r_nativeal+r_asianind+r_white+r_sphislat+r_oth
recode r_multi (0 1 = 0) (2/6=1)
**Create single categorical race varible with 8 levels for subsequent,**
**"corrected" recode. 
gen racen = r_multi
recode racen (1=7)
recode racen (0=1) if r_aframb==1 & r_multi==0
recode racen (0=2) if r_nativeal==1 & r_multi==0
recode racen (0=3) if r_asianind==1 & r_multi==0
recode racen (0=4) if r_white==1 & r_multi==0
recode racen (0=5) if r_sphislat==1 & r_multi==0
recode racen (0=6) if r_oth==1 & r_multi==0
recode racen (0=8) if r_prefer==1

*Create gender dummy variables.*
tab gender, gen (gender)
replace gender = .m if gender==3

*Create strength, weakness, college and expect_next*
*dummy variables. Recode strength and weakness values first.                    *
recode strength (61 62 = 6)
recode weakness (21 22 = 2) (31 32 = 3) (121 122 = 12)

foreach var of varlist strength weakness college expect_next {
tab `var', gen (`var')
}

rename (college1 college2 college3 expect_next6) (college0 college1 college88 expect_next88)

*Recode blanks as zeros for whydrop_, hardbest_, bully_ and un_.*
foreach var of varlist whydrop_safe-un_prefer {
recode `var' (.=0)
}

foreach var of varlist whydrop_safe-whydrop_other {
recode `var' (1=0) if drophs==0
}

foreach var of varlist hardbest_family-hardbest_other {
recode `var' (1=0) if hardbest_none==1
}

foreach var of varlist bully_phy-bully_elec un_gender-un_prefer {
recode `var' (1=0) if bully_dk==1 | bully_none==1
}

*Create sup_ dummy variables.*
foreach var of varlist sup_examprep-sup_career sup_aftertutor-sup_makeup {
tab `var', gen(`var')
}

rename (sup_examprep1 sup_examprep2 sup_examprep3 sup_collegepay1 sup_collegepay2 sup_collegepay3 sup_collegeapply1 sup_collegeapply2 sup_collegeapply3 sup_admissions1 sup_admissions2 sup_admissions3 sup_career1 sup_career2 sup_career3 sup_aftertutor1 sup_aftertutor2 sup_aftertutor3 sup_onetutor1 sup_onetutor2 sup_onetutor3 sup_class1 sup_class2 sup_class3 sup_advisory1 sup_advisory2 sup_advisory3 sup_choosegrad1 sup_choosegrad2 sup_choosegrad3 sup_makeup1 sup_makeup2 sup_makeup3) (sup_examprep0 sup_examprep1 sup_examprep88 sup_collegepay0 sup_collegepay1 sup_collegepay88 sup_collegeapply0 sup_collegeapply1 sup_collegeapply88 sup_admissions0 sup_admissions1 sup_admissions88 sup_career0 sup_career1 sup_career88 sup_aftertutor0 sup_aftertutor1 sup_aftertutor88 sup_onetutor0 sup_onetutor1 sup_onetutor88 sup_class0 sup_class1 sup_class88 sup_advisory0 sup_advisory1 sup_advisory88 sup_choosegrad0 sup_choosegrad1 sup_choosegrad88 sup_makeup0 sup_makeup1 sup_makeup88)

*Recode blanks as zeros for classtype_.*
foreach var of varlist classtype_gen-classtype_dk {
recode `var' (.=0)
}

*Create srgrades_eng and sr_grades_math dummy variables.*
tab srgrades_eng, gen (srgrades_eng)
rename (srgrades_eng5 srgrades_eng6) (srgrades_eng77 srgrades_eng88)

tab srgrades_math, gen (srgrades_math)
rename (srgrades_math5 srgrades_math6) (srgrades_math77 srgrades_math88)

*Create pbl_ dummy variables.*
foreach var of varlist pbl_issues_oth-pbl_present pbl_math-pbl_soc {
tab `var', gen(`var')
}

rename (pbl_math1 pbl_math2 pbl_math3 pbl_eng1 pbl_eng2 pbl_eng3 pbl_sci1 pbl_sci2 pbl_sci3 pbl_soc1 pbl_soc2 pbl_soc3) (pbl_math0 pbl_math1 pbl_math88 pbl_eng0 pbl_eng1 pbl_eng88 pbl_sci0 pbl_sci1 pbl_sci88 pbl_soc0 pbl_soc1 pbl_soc88)

*Create stem_ dummy variables.*
foreach var of varlist stem_intern-stem_partother stem_grpproj-stem_out_other {
tab `var', gen(`var')
}

rename (stem_intern1 stem_intern2 stem_intern3 stem_prof1 stem_prof2 stem_prof3 stem_mentor1 stem_mentor2 stem_mentor3 stem_fldtrp1 stem_fldtrp2 stem_fldtrp3 stem_fairs1 stem_fairs2 stem_fairs3 stem_partother1 stem_partother2 stem_partother3) (stem_intern0 stem_intern1 stem_intern88 stem_prof0 stem_prof1 stem_prof88 stem_mentor0 stem_mentor1 stem_mentor88 stem_fldtrp0 stem_fldtrp1 stem_fldtrp88 stem_fairs0 stem_fairs1 stem_fairs88 stem_partother0 stem_partother1 stem_partother88)

*Create gh_ dummy variables.*
foreach var of varlist gh_checkup-gh_absent {
tab `var', gen(`var')
}

rename (gh_checkup1 gh_checkup2 gh_checkup3 gh_dentist1 gh_dentist2 gh_dentist3 gh_absent1 gh_absent2 gh_absent3 gh_absent4 gh_absent5) (gh_checkup0 gh_checkup1 gh_checkup88 gh_dentist0 gh_dentist1 gh_dentist88 gh_absent0 gh_absent1 gh_absent2 gh_absent3 gh_absent4)

*Create ne_ dummy variables.*
foreach var of varlist ne_dairy-ne_comp ne_weight {
tab `var', gen (`var')
}

rename (ne_dairy1 ne_dairy2 ne_dairy3 ne_dairy4 ne_dairy5 ne_dairy6 ne_soda1 ne_soda2 ne_soda3 ne_soda4 ne_soda5 ne_soda6 ne_potato1 ne_potato2 ne_potato3 ne_potato4 ne_potato5 ne_potato6 ne_fruit1 ne_fruit2 ne_fruit3 ne_fruit4 ne_fruit5 ne_fruit6 ne_veg1 ne_veg2 ne_veg3 ne_veg4 ne_veg5 ne_veg6 ne_tv1 ne_tv2 ne_tv3 ne_tv4 ne_tv5 ne_tv6 ne_comp1 ne_comp2 ne_comp3 ne_comp4 ne_comp5 ne_comp6 ne_weight1 ne_weight2 ne_weight3 ne_weight4 ne_weight5 ne_weight6) (ne_dairy0 ne_dairy1 ne_dairy2 ne_dairy3 ne_dairy4 ne_dairy5 ne_soda0 ne_soda1 ne_soda2 ne_soda3 ne_soda4 ne_soda5 ne_potato0 ne_potato1 ne_potato2 ne_potato3 ne_potato4 ne_potato5 ne_fruit0 ne_fruit1 ne_fruit2 ne_fruit3 ne_fruit4 ne_fruit5 ne_veg0 ne_veg1 ne_veg2 ne_veg3 ne_veg4 ne_veg5 ne_tv0 ne_tv1 ne_tv2 ne_tv3 ne_tv4 ne_tv5 ne_comp0 ne_comp1 ne_comp2 ne_comp3 ne_comp4 ne_comp5 ne_weight1 ne_weight2 ne_weight3 ne_weight4 ne_weight5 ne_weight77)

*Create da_ dummy variables.*
foreach var of varlist da_tobacco-da_mari {
tab `var', gen (`var')
}

rename (da_tobacco1 da_tobacco2 da_tobacco3 da_tobacco4 da_tobacco5 da_tobacco6 da_alcohol1 da_alcohol2 da_alcohol3 da_alcohol4 da_alcohol5 da_alcohol6 da_mari1 da_mari2 da_mari3 da_mari4 da_mari5 da_mari6 da_meds1 da_meds2 da_meds3 da_meds4 da_meds5 da_meds6 da_illegal1 da_illegal2 da_illegal3 da_illegal4 da_illegal5 da_illegal6 da_legal1 da_legal2 da_legal3 da_legal4 da_legal5 da_legal6) (da_tobacco0 da_tobacco1 da_tobacco2 da_tobacco3 da_tobacco4 da_tobacco5 da_alcohol0 da_alcohol1 da_alcohol2 da_alcohol3 da_alcohol4 da_alcohol5 da_mari0 da_mari1 da_mari2 da_mari3 da_mari4 da_mari5 da_meds0 da_meds1 da_meds2 da_meds3 da_meds4 da_meds5 da_illegal0 da_illegal1 da_illegal2 da_illegal3 da_illegal4 da_illegal5 da_legal0 da_legal1 da_legal2 da_legal3 da_legal4 da_legal5)

*Create em_ dummy variables.*
foreach var of varlist em_visit-em_attempt {
tab `var', gen (`var')
}

rename (em_visit1 em_visit2 em_visit3 em_sad1 em_sad2 em_sad3 em_attempt1 em_attempt2 em_attempt3) (em_visit0 em_visit1 em_visit88 em_sad0 em_sad1 em_sad88 em_attempt0 em_attempt1 em_attempt88)
