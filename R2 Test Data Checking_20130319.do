*Before importing Qualtrics dataset from Excel, remove row 2 from the Excel file.*

cd "C:\Users\an-lih\Dropbox\YouthTruth\2012-13 YouthTruth\Data\Data Checking\R3 HS Data Checking\Prep\Syntax Writing & Testing"

clear

set mem 300m

set more off, permanently

log using "testlog.log", replace

capture log close

use "qualtricstestdata(R2).dta", clear

*Remove unnecessary variables from dataset.*
drop DrugsAlcohol EMHealth EarlyCollege GenHealth LearningStyles MERig NutritionExercise PBL STEM Safety SchoolName StudentVoice SurveyLanguage TM V10 V2 V3 V5 V6 V7 V8 V9 adult attend culture da_end dem drugsalch earlycoll ec_intro eceng emhealth end endmsg endmsgES eng_campus engagetxt1 engagetxt2 engagetxt3 engagetxt4 engmodule environtxt1 environtxt2 environtxt3 environtxt4 expect_TEXT feelschool fut genhealth gh_end hardbest_11_TEXT incorrect interactxt1 interactxt2 interactxt3 interactxt4 language learnexp1 learnexp2 learnexp3 learnexp4 lenmonth_1_TEXT lenyear_1_TEXT ls_end ls_intro math_campu mathmodule ne_end ne_intro pbl_end pbl_intro qual_opt qual_oth qualstreng1 qualstreng10 qualstreng19 qualstreng2 qualstreng21 qualstreng22 qualstreng23 qualstreng24 qualstreng25 qualstreng26 qualstreng3 qualstreng4 qualstreng5 qualstreng6 qualstreng7 qualweakne1 qualweakne10 qualweakne16 qualweakne18 qualweakne19 qualweakne2 qualweakne20 qualweakne21 qualweakne22 qualweakne23 qualweakne24 qualweakne25 qualweakne26 qualweakne3 qualweakne4 qualweakne5 qualweakne6 qualweakne7 race_6_TEXT rigor safe_end safe_intro safe_text stem_end stem_expstem_partother_TEXT stem_instem_in_other_TEXT stem_intro stem_outstem_out_other_TEXT strength_TEXT strngweak support tm_end1 tm_end2 tm_end3 tm_end4 tm_nodk1 tm_nodk2 tm_nodk3 tm_nodk4 tmintro ts_adultresp1 ts_adultresp2 ts_adultresp3 ts_adultresp4 ts_askexpl1 ts_askexpl2 ts_askexpl3 ts_askexpl4 ts_askqns1 ts_askqns2 ts_askqns3 ts_askqns4 ts_believe1 ts_believe2 ts_believe3 ts_believe4 ts_bevcontrol1 ts_bevcontrol2 ts_bevcontrol3 ts_bevcontrol4 ts_bevwants1 ts_bevwants2 ts_bevwants3 ts_bevwants4 ts_classbusy1 ts_classbusy2 ts_classbusy3 ts_classbusy4 ts_connect1 ts_connect2 ts_connect3 ts_connect4 ts_correct1 ts_correct2 ts_correct3 ts_correct4 ts_discipline1 ts_discipline2 ts_discipline3 ts_discipline4 ts_dowell1 ts_dowell2 ts_dowell3 ts_dowell4 ts_enjoy1 ts_enjoy2 ts_enjoy3 ts_enjoy4 ts_expbest1 ts_expbest2 ts_expbest3 ts_expbest4 ts_explain1 ts_explain2 ts_explain3 ts_explain4 ts_extra1 ts_extra2 ts_extra3 ts_extra4 ts_fair1 ts_fair2 ts_fair3 ts_fair4 ts_feelcare1 ts_feelcare2 ts_feelcare3 ts_feelcare4 ts_fulleffort1 ts_fulleffort2 ts_fulleffort3 ts_fulleffort4 ts_helpout1 ts_helpout2 ts_helpout3 ts_helpout4 ts_learnlot1 ts_learnlot2 ts_learnlot3 ts_learnlot4 ts_nogiveup1 ts_nogiveup2 ts_nogiveup3 ts_nogiveup4 ts_nomem1 ts_nomem2 ts_nomem3 ts_nomem4 ts_pride1 ts_pride2 ts_pride3 ts_pride4 ts_studresp1 ts_studresp2 ts_studresp3 ts_studresp4 ts_teachassign1 ts_teachassign2 ts_teachassign3 ts_teachassign4 ts_teachundr1 ts_teachundr2 ts_teachundr3 ts_teachundr4 ts_think1 ts_think2 ts_think3 ts_think4 ts_trybest1 ts_trybest2 ts_trybest3 ts_trybest4 ts_tryexp1 ts_tryexp2 ts_tryexp3 ts_tryexp4 ts_under1 ts_under2 ts_under3 ts_under4 ts_verify_1 ts_verify_2 ts_verify_3 ts_verify_4 unwelcome_11_TEXT voice_end voice_intr weakness_TEXT whydrop_11_TEXT year_TEXT subjectend LJ_intro lj_connected lj_challenge lj_know lj_invite lj_current lj_ever lj_secure_1 lj_secure_2 lj_secure_3 lj_secure_4 lj_secure_5 lj_end Miami LaJoya Custom mia_academ mia_academ_TEXT mcustend kent_acad kcustend
drop Reyn_Acad

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
replace School_Short="NCHSHS13S" if School_Short=="DISC"
replace School_Short="PHS13S" if School_Short=="PERKHS"

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

*Run describe command to determine whether the variable type must change*
*for any categorical variables that will become dummy variables.        *
describe

*Recode original race variables from Qualtrics into dummy variables by replacing*
*blanks with zeros.                                                             *
rename (race_1 race_2 race_3 race_4 race_5 race_6 race_7) (r_aframb r_nativeal r_asianind r_white r_sphislat r_oth r_prefer)
recode r_aframb r_nativeal r_asianind r_white r_sphislat r_oth r_prefer (.=0)
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
***Creat race dummy variables for school-level and grade segnment proportions.***
gen r_aframb_agg = r_aframb
recode r_aframb_agg (1=0) if r_multi==1
gen r_nativeal_agg = r_nativeal
recode r_nativeal_agg (1=0) if r_multi==1
gen r_asianind_agg = r_asianind
recode r_asianind_agg (1=0) if r_multi==1
gen r_white_agg = r_white
recode r_white_agg (1=0) if r_multi==1
gen r_sphislat_agg = r_sphislat
recode r_sphislat_agg (1=0) if r_multi==1
gen r_oth_agg = r_oth
recode r_oth_agg (1=0) if r_multi==1

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

foreach var of varlist classtype_gen-classtype_dk {
recode `var' (.=0)
}

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

*Add suffix to names of variables to be compared in AH dataset.*
foreach var of varlist year-racen {
rename `var' `var'_AH
}

*Before merging with AH dataset, add suffixes to names of variables to be compared in MN*
*dataset.                                                                               *

cd "C:\Users\an-lih\Dropbox\YouthTruth\2012-13 YouthTruth\Data\Data Checking\R3 HS Data Checking\Prep\Syntax Writing & Testing"

clear

set mem 300m

set more off, permanently

log using "testlog.log", replace

capture log close

use "sqltestdata(R2 student-level)v2.dta", clear

*Drop variables for testing.*
drop UniqueID New Big_School_Name FMS Kenton LaJoya MiamiDade NCNS OSLN OUSD STEM WestCovina Round School_Year repeat r_text race gender_text lenyear lenmonth satisfac LANG

*Rename ID to to allow for merge on key variable responseid".*
rename ID responseid

*Add suffix to names of variables to be compared in AH dataset.*
foreach var of varlist School_Short-stem_out_other {
rename `var' `var'_MN
}

save "sqltestdata(R2 student-level)v3.dta"
sort responseid

use "sqltestdata(R2 student-level)v3.dta"
recode hardbest_extra (0=.)


*Merge AH and MN datasets.*
use "qualtricstestdata(R2).dta", clear
sort responseid
merge 1:1 responseid using "sqltestdata(R2 student-level)v3.dta", assert(match)
save "mergedtestdata(R2 student-level)"

*rounding*
foreach var of varlist engage_fact_AH-prep_fact_AH engage_fact-prep_fact {
replace `var'=round(`var',.0001)
}

*Display discrepancies by variable, listing each observation for which value does not*
*match for each variable.                                                            *
foreach var of varlist year-em_self {
list responseid `var' `var'_AH if `var' != `var'_AH, abbreviate(15)
}

recode hardbest_extra (0=.)

foreach var of varlist gender-stem_out_other {
list responseid `var' `var'_AH if `var' != `var'_AH, abbreviate(15)
}

rename drophighschool drophs

foreach var of varlist gender-stem_out_other {
list responseid `var' `var'_AH if (`var'-`var'_AH>0.01), abbreviate(15)
}

foreach var of varlist year-em_self {
list responseid `var' `var'_AH if `var' != `var'_AH, abbreviate(15)
}

use "mergedtestdata(R2 student-level)"

foreach var of varlist year-em_self {
list responseid `var'_AH if (`var' != `var'_AH), abbreviate(15)
}

collapse year-em_self, by(School_Short)
save "qualtricstestdata_school.dta"

*Prepare school-level data from Python for checking after combining runprop and runmean*
*Python files and importing consolidated file into Stata.                              *
cd "C:\Users\an-lih\Dropbox\YouthTruth\2012-13 YouthTruth\Data\Data Checking\R3 HS Data Checking\Prep\Syntax Writing & Testing"

clear

use "pythontestdata(R2)_school.dta", clear
sort School_Short
save "pythontestdata(R2)_school_cleaned.dta"

*Merge AH and MN school-level datasets.*
use "qualtricstestdata_school.dta", clear
sort School_Short
merge 1:1 School_Short using "pythontestdata(R2)_school_cleaned.dta", assert(match)
save "mergedtestdata(R2 school-level)"
