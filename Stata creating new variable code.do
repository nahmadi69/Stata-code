		use "cleaned data.dta", clear	
*Generation phase/ make new variables
	***Demographic***
	***covid***
	gen co_15_n=.
	replace co_15_n=5 if co_15==1
	replace co_15_n=20 if co_15==2
	replace co_15_n=40 if co_15==3
	replace co_15_n=75 if co_15==4


	*** screening***
	gen colorectal_screening=.
	replace colorectal_screening= scco if c1==0
	replace colorectal_screening= sc_co if c1==1
		label variable colorectal_screening "cholerectal  screening"
		
label define colorectal_screening 0 "No"1 "Yes" 
label value colorectal_screening colorectal_screening 

	gen colorectal_screening50=.
	replace colorectal_screening50 =colorectal_screening if age>=50
		label variable colorectal_screening50 "cholerectal  screening  in pepole  aged >= 50 years"
		
label define colorectal_screening50 0 "No"1 "Yes" 
label value colorectal_screening50 colorectal_screening50 

	***sc_cx1
	gen sc_cx30to50=.
	replace sc_cx30to50 =sc_cx1 if age>=30 & age<50
	label variable sc_cx30to50 "Cervical screening in women aged 30 to 50 years"

label define sc_cx30to50 0 "No"1 "Yes" 
label value sc_cx30to50 sc_cx30to50 

	gen sc_cxMarried=.
	replace sc_cxMarried =sc_cx1 if  marriagestatus ==1
	label variable sc_cxMarried "Cervical screening in married women"

label define sc_cxMarried 0 "No"1 "Yes" 
label value sc_cxMarried sc_cxMarried 

	***sc_br
	gen sc_br50to70=.
	replace sc_br50to70 =sc_br if age>=50 & age<70
	label variable sc_br50to70 "Cervical screening in women aged 50 to 70 years"
	
label define sc_br50to70 0 "No"1 "Yes" 
label value sc_br50to70 sc_br50to70 
	*** vcx
	gen vcxunder26=.
	replace vcxunder26 =vcx if  age<26
	label variable vcxunder26 "HPV vaccine in women aged 26 years"

label define vcxunder26 0 "No"1 "Yes" 
label value vcxunder26 vcxunder26 
	***sc_pr
	gen sc_pr55to70=.
	replace sc_pr55to70 =sc_pr if  age>=55 & age<70
	label variable sc_pr55to70 "Prostate screening in men aged 55 to 70 years"

label define sc_pr55to70 0 "No"1 "Yes" 
label value sc_pr55to70 sc_pr55to70 
	***teraffic_injury***
	gen teraffic_injury=0
	replace teraffic_injury=1 if a4a=="1"
	replace teraffic_injury=-555 if a4a=="-555"
	replace teraffic_injury=. if a4a==""
	label variable teraffic_injury "traffic injuries"
	
label define teraffic_injury 0 "No"1 "Yes" 
label value teraffic_injury teraffic_injury 	
	*** quality of life **
	gen quality_1=.
	replace quality_1=1 if eq_1==1
	replace quality_1=0 if eq_1==2 | eq_1==3
	label variable quality_1 "Quality of life/ mobility "
label define quality_1 0 "No"1 "Yes" 
label value quality_1 quality_1 
	gen quality_2=.
	replace quality_2=1 if eq_2==1
	replace quality_2=0 if eq_2==2 | eq_2==3
	label variable quality_2 "Quality of life/ self care "
label define quality_2 0 "No"1 "Yes" 
label value quality_2 quality_2 
	gen quality_3=.
	replace quality_3=1 if eq_3==1
	replace quality_3=0 if eq_3==2 | eq_3==3
	label variable quality_3 "Quality of life/ usual activity "

label define quality_3 0 "No"1 "Yes" 
label value quality_3 quality_3 
	
	gen quality_4=.
	replace quality_4=1 if eq_4==1
	replace quality_4=0 if eq_4==2 | eq_4==3
	label variable quality_4 "Quality of life/pain"

label define quality_4 0 "No"1 "Yes" 
label value quality_4 quality_4 
	
	gen quality_5=.
	replace quality_5=1 if eq_5==1
	replace quality_5=0 if eq_5==2 | eq_5==3
	label variable quality_5 "Quality of life/aniexty or depression"

label define quality_5 0 "No"1 "Yes" 
label value quality_5 quality_5 
	
	***Diets/Generation Phase***
		*Fruit
		gen d2_2serving = .
		label variable d2_2serving "atleast 2 serving fruit in week"	
		replace d2_2serving = 0 if (d2 * d1)/7 < 2 & (d2 * d1) !=.
		replace d2_2serving = 1 if (d2 * d1)/7 >= 2 & (d2 * d1)! = .

label define d2_2serving 0 "No"1 "Yes" 
label value d2_2serving d2_2serving 	
		*Vegetable
		gen d4_3serving = .
		label variable d4_3serving "atleast 3 serving vegetable in week"	
		replace d4_3serving = 0 if (d4 * d3)/7 < 3 & (d4 * d3) !=.
		replace d4_3serving = 1 if (d4 * d3)/7 >= 3 & (d4 * d3) ! = .	

label define d4_3serving 0 "No"1 "Yes" 
label value d4_3serving d4_3serving 	

		*Fruit and Vegetable (اگر یکی میس بود و دیگری صفر ایا 0 در نظر گرفتن درست است؟)
		gen fruveg = .
		replace fruveg = 0 if d2_2serving == 0 | d4_3serving == 0
		replace fruveg = 1 if d2_2serving == 1 & d4_3serving == 1
		label variable fruveg "atleast 3 serving vegetable and 2 serving friut in week"	

label define fruveg 0 "No"1 "Yes" 
label value fruveg fruveg 	

		*** fish***
		gen fish=.
		replace fish=0 if d11a<3
		replace fish=1 if d11a>=3 & d11a!=.
		label variable fish "appropriate fish consumption"	

label define fish 0 "No"1 "Yes" 
label value fish fish 	
		
		***meals
		replace d20=.  if d20==0 
		
		gen d20_cat=""
		replace d20_cat="1" if  d20==1
		replace d20_cat="2" if  d20==2
		replace d20_cat="3+" if  d20>=3 & d20!=.
		label variable d20_cat "meals per day"	


		
	***Physical activity/Generation phase***	
	
		*MET 
		gen p3_met22 = 60*p3a + p3b
		gen work_vigorous22 = p3_met22 * 8 * p2
		
		gen p6_met22 = 60*p6a + p6b
		gen work_moderate22 = p6_met22 * 4 * p5
	
		gen p7_met22 = 60*p9a + p9b
		gen transport_met22 = p7_met22 * 4 * p8
	
		gen p12_met22 = 60*p12a + p12b
		gen recreation_vigorous22 = p12_met22 * 8 * p11
	
		gen p15_met22 = 60*p15a + p15b
		gen recreation_moderate22  = p15_met22 * 4 * p14

		gen totalmin = p3_met22 + p6_met22 + p7_met22 + p12_met22 + p15_met22
		recode totalmin (480/max = .)
		gen exclude = 0
		replace exclude = 1 if totalmin == .

		gen METadj=(work_vigorous22+work_moderate22+transport_met22+recreation_vigorous22+recreation_moderate22)
		*drop  work_vigorous22 work_moderate22 transport_met22 recreation_vigorous22 recreation_moderate22
	
		recode METadj (0/600 = 1) (600/max = 0) , gen(low_activity)

		gen PAmin =METadj/4

		replace low_activity = . if exclude == 1
		replace METadj = . if exclude == 1
		replace PAmin=. if exclude == 1
	
		drop totalmin p3_met22 work_vigorous22 p6_met22 work_moderate22 p7_met22 transport_met22 p12_met22 recreation_vigorous22 p15_met22 recreation_moderate22 exclude 
		label variable low_activity "low phisical activity"

label define low_activity 0 "No"1 "Yes" 
label value low_activity  low_activity 	

	***Hypertension History/Generation Phase***
	***Diabetes History/Generation Phase***

	***cholesterol History/Generation Phase***
	***Cardiovascular History/Generation Phase***
	replace h18n_n=. if h18n_n>10
	
	gen ASA_primary=.
	replace ASA_primary= h18 if h17ae==0 & h17be==0
	
	label variable ASA_primary "Primary use of ASA for prevention "	
label define ASA_primary 0 "No"1 "Yes" 
label value ASA_primary  ASA_primary 


	gen ASA_secondary=.
	replace ASA_secondary= h18 if h17ae==1 | h17be==1
		label variable ASA_secondary "Secondary use of ASA for treatment"	
label define ASA_secondary 0 "No"1 "Yes" 
label value ASA_secondary  ASA_secondary 


	gen Statin_primary=.
	replace Statin_primary=1   if   (h19==1 & (h14_3==0 | h14_3==-555) )&  (h17ae==0 & h17be==0)
	replace Statin_primary=0   if   (h19==0 )&  (h17ae==0 & h17be==0)
		label variable Statin_primary "Primary use of Statin for prevention "	

label define Statin_primary 0 "No"1 "Yes" 
label value Statin_primary  Statin_primary 
			
	gen Statin_secondary=.
	replace Statin_secondary=1 if (h19==1 | h14_3==1	) & (h17ae==1 | h17be==1 )
	replace Statin_secondary=0 if (h19==0 & h14_3==0	) & (h17ae==1 | h17be==1 )
		label variable Statin_secondary "Secondary use of Statin for treatment "	

label define Statin_secondary 0 "No"1 "Yes" 
label value Statin_secondary  Statin_secondary 
		
		
	***Other Diseases History/Generation Phase***
	***Life Style***
	***Cancer Screening***
	***Injuries/Generation Phase***
	***Tobacco and Smoking/Generation phase***
		*Current
				
		replace t5aw = t5aw / 7
		replace t5am = t5am / 30
		replace t5dw = t5dw / 7
		replace t5dm = t5dm / 30
		replace t5cw = t5cw / 7
		replace t5cm = t5cm / 30
		replace t5ew = t5ew / 7
		replace t5em = t5em / 30
		replace t5fw = t5fw / 7
		replace t5fm = t5fm / 30
				
		egen t5a_day=rowtotal(t5ad t5aw t5am)
		replace  t5a_day=. if t5ad==. &  t5aw==.  &  t5am==.
				label variable t5a_day "Current consumption per day / cigarettes"	

		egen t5d_day=rowtotal(t5dd t5dw t5dm)
		replace  t5d_day=. if t5dd==. &  t5dw==.  &  t5dm==.
				label variable t5d_day "Current consumption per day / hookah"	

		egen t5c_day=rowtotal(t5cd t5cw t5cm)
		replace  t5c_day=. if t5cd==. &  t5cw==.  &  t5cm==.
				label variable t5c_day "Current consumption per day / pipe"	

		egen t5e_day=rowtotal(t5ed t5ew t5em)
		replace  t5e_day=. if t5ed==. &  t5ew==.  &  t5em==.
				label variable t5e_day "Current consumption per day / smokless tobacco	 "	

		egen t5f_day=rowtotal(t5fd t5fw t5fm)
		replace  t5f_day=. if t5fd==. &  t5fw==.  &  t5fm==.
			label variable t5f_day "Current consumption per day / electronic cigarettes"	

		
		foreach i in t5a_day t5d_day t5c_day t5e_day t5f_day {
		replace `i'=-555 if s1_1==0 | s1_1==-555
		}
		*Past
		gen s6_1 = 0
		replace s6_1 = 1 if (s1a_1 == 1 & (s1_1 == 0 | s1_1==-555)) 
		*|(s1a_1 == 1 & s1_1 == 1 & (age - s1y_1) > 1 & (age - s1y_1)!= .) 
		replace s6_1 = . if s1a == .
			label variable s6_1 "past  smoking /cigarettes"	

label define s6_1 0 "No"1 "Yes" 
label value s6_1  s6_1 
			
			
		gen s6_2 = 0
		replace s6_2 = 1 if (s1a_2 == 1 & (s1_2 == 0 | s1_2==-555))
		*|(s1a_2 == 1 & s1_2 == 1 & (age - s1y_2) > 1 & (age - s1y_2)!= .) 
		replace s6_2 = . if s1a == .
			label variable s6_2 "past  smoking /hookah"	
label define s6_2 0 "No"1 "Yes" 
label value s6_2  s6_2 

		gen s6_3 = 0
		replace s6_3 = 1 if (s1a_3 == 1 & (s1_3 == 0 | s1_3==-555)) 
		*|(s1a_3 == 1 & s1_3 == 1 & (age - s1y_3) > 1 & (age - s1y_3)!= .) 
		replace s6_3 = . if s1a == .
			label variable s6_3 "past  smoking /pipe"	
label define s6_3 0 "No"1 "Yes" 
label value s6_3  s6_3 

		gen s6_4 = 0
		replace s6_4 = 1 if (s1a_4 == 1 & (s1_4 == 0 | s1_4==-555)) 
		*|(s1a_4 == 1 & s1_4 == 1 & (age - s1y_4) > 1 & (age - s1y_4)!= .) 
		replace s6_4 = . if s1a == .
			label variable s6_4 "past  smoking /smokless tobacco"	

label define s6_4 0 "No"1 "Yes" 
label value s6_4  s6_4 

		gen s6_5 = 0
		replace s6_5 = 1 if (s1a_5 == 1 & (s1_5 == 0 | s1_5==-555)) 
		*|(s1a_5 == 1 & s1_5 == 1 & (age - s1y_5) > 1 & (age - s1y_5)!= .) 
		replace s6_5 = . if s1a == .
			label variable s6_5 "past  smoking /electronic cigarettes"	
label define s6_5 0 "No"1 "Yes" 
label value s6_5  s6_5 
		
		
		replace s5aw = s5aw / 7
		replace s5am = s5am / 30
		replace s5dw = s5dw / 7
		replace s5dm = s5dm / 30
		replace s5cw = s5cw / 7
		replace s5cm = s5cm / 30
		replace s5ew = s5ew / 7
		replace s5em = s5em / 30
		replace s5fw = s5fw / 7
		replace s5fm = s5fm / 30		
				
		egen s5a_count=rowtotal(s5ad s5aw s5am)
		replace  s5a_count=. if s5ad==. &  s5aw==.  &  s5am==.
			label variable s5a_count "Current consumption per day / cigarettes"	

		egen s5d_count=rowtotal(s5dd s5dw s5dm)
		replace  s5d_count=. if s5dd==. &  s5dw==.  &  s5dm==.
			label variable s5d_count "Current consumption per day / hookah"	

		egen s5c_count=rowtotal(s5cd s5cw s5cm)
		replace  s5c_count=. if s5cd==. &  s5cw==.  &  s5cm==.
			label variable s5c_count "Current consumption per day / pipe"	

		egen s5e_count=rowtotal(s5ed s5ew s5em)
		replace  s5e_count=. if s5ed==. &  s5ew==.  &  s5em==.
			label variable s5e_count "Current consumption per day / smokless tobacco"	

		egen s5f_count=rowtotal(s5fd s5fw s5fm)
		replace  s5f_count=. if s5fd==. &  s5fw==.  &  s5fm==.
			label variable s5f_count "Current consumption per day / electronic cigarettes"	

	
		foreach i in s5a_count s5d_count s5c_count s5e_count s5f_count {
		replace `i'=-555 if s1a_1==0 | s1a_1==-555
		}
		
		replace s5a_count =-555 if s1_1==1 | s1a_1!=1
		replace s5d_count =-555 if s1_2==1 | s1a_2!=1
		replace s5c_count =-555 if s1_3==1
		replace s5e_count =-555 if s1_4==1
		replace s5f_count =-555 if s1_5==1
		
		replace s5a_count =-555 if s5a_count==0
		replace s5d_count =-555 if s5d_count==0
    ***Alcohol/Generation Phase***
	***Assets***
		*Wealth Index 
			tabulate i8, gen(i8i)
			tabulate i9, gen(i9i)
			tabulate x5wa, gen(x5wai)
			tabulate x5wb, gen(x5wbi)
			tabulate x5wc, gen(x5wci)
			
			*pca i8i1- x5wci5 i9r-xx5y  [aweight = weight_Q]
			pca i8i1 i8i2 i8i3 i8i4 i9i1 i9i2 i9i3 x5wai1 x5wai2 x5wai3 x5wai4 ///
			x5wai5 x5wbi1 x5wbi2 x5wbi3 x5wbi4 x5wbi5 x5wci1 x5wci2 x5wci3 x5wci4 ///
			x5wci5  i9r i11 i11n i111_1 i111_2 i111_3 i111_4 i111_5 i111_6 i112_1 ///
			i112_2 i112_3 x5a x5b x5c x5d x5e x5f x5g x5h x5i x5j xx5k xx5l xx5m ///
			xx5n xx5o xx5p xx5q xx5r xx5s xx5t xx5u xx5v xx5w xx5x xx5y

			predict pca1
			
			xtile WI_National=pca1 , nq(5)
				label variable WI_National "Wealth index / Noational"	

			gen WI = .
			foreach i of numlist 0/30 {
			*pca i8i1- x5wci5 i9r-xx5y [aweight = weight_Q] if i07 == `i'
			pca i8i1 i8i2 i8i3 i8i4 i9i1 i9i2 i9i3 x5wai1 x5wai2 x5wai3 x5wai4 ///
			x5wai5 x5wbi1 x5wbi2 x5wbi3 x5wbi4 x5wbi5 x5wci1 x5wci2 x5wci3 x5wci4 ///
			x5wci5  i9r i11 i11n i111_1 i111_2 i111_3 i111_4 i111_5 i111_6 i112_1 ///
			i112_2 i112_3 x5a x5b x5c x5d x5e x5f x5g x5h x5i x5j xx5k xx5l xx5m ///
			xx5n xx5o xx5p xx5q xx5r xx5s xx5t xx5u xx5v xx5w xx5x xx5y if i07 == `i'

			
			predict pca
			replace pca = . if i07 != `i'
			xtile WI_M=pca if i07 == `i' , nq(5)
			replace WI = WI_M if i07 == `i'
			drop pca WI_M
			}
			
			*drop i8i1 - x5wci5
				label variable WI "Wealth index / provential"	

	***Anthropometries***
		* BMI (1=Under Weight , 2=Normal Weight , 3=Over Weight , 4=Obesity)
		gen bmi=m4/((m3/100)^2)
			label variable bmi "Body mass index"	

		replace bmi=. if bmi>60 | bmi<=12
		recode bmi (0/18.499999=1) (18.5/24.99999=2) (25/29.99999=3) (30/100=4), gen(bmi_cat)
		label variable bmi_cat "Body mass index categories"	
		
label define bmi_cat  1"under wigth" 2"normal weigth" 3 "over weigth" 4 "obesity"
label value bmi_cat  bmi_cat 


		gen abdominalObesity=.
		replace abdominalObesity=1 if c1==1 & m7>=102 & m7!=.
		replace abdominalObesity=1 if c1==0 & m7>=88 & m7!=.
		replace abdominalObesity=0 if abdominalObesity!=1 & m7!=.
		label variable abdominalObesity "abdominal Obesity Waist>88 in female  Waist>102 in male"	
label define abdominalObesity 0 "No"1 "Yes" 
label value abdominalObesity  abdominalObesity 
		
		*
		gen WHR = m7/m15
			label variable WHR " Waist to hip ratio"	

		gen abdominalobesityWHR = 0
		replace abdominalobesityWHR = 1 if (c1 == 0 & WHR > 0.849999 & WHR != .) | (c1 == 1 & WHR > 0.89999 & WHR != .)
		replace abdominalobesityWHR =. if m15==. | m7==.
 			label variable abdominalobesityWHR "abdominal Obesity WHR>=0.85  in female  Waist>=0.90 in male)"	
label define abdominalobesityWHR 0 "No"1 "Yes" 
label value abdominalobesityWHR  abdominalobesityWHR 
		*
		gen BMI_UnderWeight=1 if bmi_cat==1
		replace BMI_UnderWeight=0 if bmi_cat!=1 & bmi_cat!=.
			label variable BMI_UnderWeight " UnderWeight(bmi< 18.5)"	
label define BMI_UnderWeight 0 "No"1 "Yes" 
label value BMI_UnderWeight  BMI_UnderWeight 
	
		*
		gen BMI_normal=1 if bmi_cat==2
		replace BMI_normal=0 if bmi_cat!=2 & bmi_cat!=.
			label variable BMI_normal " normal weight(bmi>= 18.5 and bmi<25)"	
label define BMI_normal 0 "No"1 "Yes" 
label value BMI_normal  BMI_normal 
		*
		gen BMI_OverWeight=1 if bmi_cat==3 
		replace BMI_OverWeight=0 if bmi_cat!=3& bmi_cat!=.
			label variable BMI_OverWeight " over weight(bmi>= 25and bmi<30)"	
label define BMI_OverWeight 0 "No"1 "Yes" 
label value BMI_OverWeight  BMI_OverWeight 
		*
		gen BMI_Obesity=1 if bmi_cat==4
		replace BMI_Obesity=0 if bmi_cat!=4 & bmi_cat!=.
			label variable BMI_Obesity "  obesity (bmi>= 30)"			
label define BMI_Obesity 0 "No"1 "Yes" 
label value BMI_Obesity  BMI_Obesity 
		*
		gen UpoverWeight=1 if bmi>=24.99999 & bmi!=.
		replace UpoverWeight=0 if bmi<24.99999 & bmi!=.
			label variable UpoverWeight " up and  over weight (bmi>= 25)"			
label define UpoverWeight 0 "No"1 "Yes" 
label value UpoverWeight  UpoverWeight 			
		* Mean Systolic Time 2&3
		gen MeanSys= (m12a+ m13a)/2
		replace MeanSys= m12a if m12a!=. & m13a==.
		replace MeanSys= m13a if m13a!=. & m12a==.
		replace MeanSys= m11a if m13a==. & m12a==.
			label variable MeanSys " Mean Systolic blood pressure"			
		* Mean Diastolic Time 2&3
		gen MeanDias= (m12b+ m13b)/2
		replace MeanDias= m12b if m12b!=. & m13b==.
		replace MeanDias= m13b if m13b!=. & m12b==.
		replace MeanDias= m11b if m13b==. & m12b==.
		
			label variable MeanSys " Mean diastolic blood pressure"			

***********************************************************
**********hypertension			

gen HTn=.
replace HTn=0 if (MeanSys<140 & MeanDias<90 & (h3aa == -555 | h3aa == 0 ))
replace HTn=1 if ((MeanSys>=140 & MeanSys!=.) | (MeanDias>=90 & MeanDias!=.)| h3aa==1)

label variable HTn " Hypertenssion  Sys>=140 or dias >=90 or drug usage"			

label define HTn 0 "NormalBP"1 "HighBP" 
label value HTn HTn 


******
/*gen HTn_ISHGH_drug=.
replace  HTn_ISHGH_drug=1 if ((MeanSys<130) | (MeanDias<85 )) & (h3aa == -555 | h3aa == 0 )
replace  HTn_ISHGH_drug=2 if ((MeanSys>=130 & MeanSys<140) | (MeanDias>=85 & MeanDias<90 )) & (h3aa == -555 | h3aa == 0 )
replace  HTn_ISHGH_drug=3 if  h3aa==1
replace  HTn_ISHGH_drug=3 if (MeanSys>=140 & MeanSys<160)|(MeanDias>=90 & MeanDias<100) 
replace  HTn_ISHGH_drug=4 if (MeanSys>=160 & MeanSys!=.) | (MeanDias>=100 & MeanDias!=.) 

label define HTn_ISHGH_drug 1 "NormalBP" 2 "HighNormalBP" 3 "HTNstage1" 4 "HTNstage2"
label value HTn_ISHGH_drug HTn_ISHGH_drug 
*/
gen HTn_ISHGH=.
replace  HTn_ISHGH=1 if ((MeanSys<130) | (MeanDias<85 ))
replace  HTn_ISHGH=2 if ((MeanSys>=130 & MeanSys<140) | (MeanDias>=85 & MeanDias<90 )) 
replace  HTn_ISHGH=3 if (MeanSys>=140 & MeanSys<160)|(MeanDias>=90 & MeanDias<100) 
replace  HTn_ISHGH=4 if (MeanSys>=160 & MeanSys!=.) | (MeanDias>=100 & MeanDias!=.) 

label variable HTn_ISHGH " Hypertenssion ISHGH guideline"			

label define HTn_ISHGH 1 "NormalBP" 2 "HighNormalBP" 3 "HTNstage1" 4 "HTNstage2"
label value HTn_ISHGH HTn_ISHGH 
******
/*gen HTn_AHA_drug=.
replace  HTn_AHA_drug=1 if ((MeanSys<120) & (MeanDias<80 )) & (h3aa == -555 | h3aa == 0 )
replace  HTn_AHA_drug=2 if ((MeanSys>=120 & MeanSys<130) & (MeanDias<80 )) & (h3aa == -555 | h3aa == 0 )
replace  HTn_AHA_drug=3 if  h3aa==1
replace  HTn_AHA_drug=3 if (MeanSys>=130 & MeanSys<140)|(MeanDias>=80 & MeanDias<90) 
replace  HTn_AHA_drug=4 if (MeanSys>=140 & MeanSys!=.) | (MeanDias>=90 & MeanDias!=.) 
replace  HTn_AHA_drug=5 if (MeanSys>=180 & MeanSys!=.) | (MeanDias>=160 & MeanDias!=.) 

label define HTn_AHA_drug 1 "NormalBP" 2 "Elevated" 3 "HTNstage1" 4 "HTNstage2" 5 "Crisis"
label value HTn_AHA_drug HTn_AHA_drug 
*/
gen HTn_AHA=.
replace  HTn_AHA=1 if ((MeanSys<120) & (MeanDias<80 )) 
replace  HTn_AHA=2 if ((MeanSys>=120 & MeanSys<130) & (MeanDias<80 )) 
replace  HTn_AHA=3 if (MeanSys>=130 & MeanSys<140)|(MeanDias>=80 & MeanDias<90) 
replace  HTn_AHA=4 if (MeanSys>=140 & MeanSys!=.) | (MeanDias>=90 & MeanDias!=.) 
replace  HTn_AHA=5 if (MeanSys>=180 & MeanSys!=.) | (MeanDias>=160 & MeanDias!=.) 

label variable HTn_AHA " Hypertenssion AHA guideline"			

label define HTn_AHA 1 "NormalBP" 2 "Elevated" 3 "HTNstage1" 4 "HTNstage2" 5 "Crisis"
label value HTn_AHA HTn_AHA 
********
/*gen HTn_ESC_drug=.
replace  HTn_ESC_drug=1 if ((MeanSys<120) & (MeanDias<80 )) & (h3aa == -555 | h3aa == 0 )
replace  HTn_ESC_drug=2 if ((MeanSys>=120 & MeanSys<130) | (MeanDias>=80 & MeanDias<85 )) & (h3aa == -555 | h3aa == 0 )
replace  HTn_ESC_drug=3 if ((MeanSys>=130 & MeanSys<140) | (MeanDias>=85 & MeanDias<90 )) & (h3aa == -555 | h3aa == 0 )
replace  HTn_ESC_drug=4 if  h3aa==1
replace  HTn_ESC_drug=4 if (MeanSys>=140 & MeanSys<160)|(MeanDias>=90 & MeanDias<100) 
replace  HTn_ESC_drug=5 if (MeanSys>=160 & MeanSys<180)|(MeanDias>=100 & MeanDias<110) 
replace  HTn_ESC_drug=6 if (MeanSys>=180 & MeanSys!=.) | (MeanDias>=110 & MeanDias!=.) 
replace  HTn_ESC_drug=7 if (MeanSys>=140 & MeanSys!=.) & (MeanDias<90 ) 

label define HTn_ESC_drug 1 "Optimal" 2 "NormalBP" 3 "HighNormalBP" 4 "HTNstage1" 5 "HTNstage2" 6 "HTNstage3" 7 "HTNisolated "
label value HTn_ESC_drug HTn_ESC_drug 
*/
gen HTn_ESC=.
replace  HTn_ESC=1 if ((MeanSys<120) & (MeanDias<80 )) 
replace  HTn_ESC=2 if ((MeanSys>=120 & MeanSys<130) | (MeanDias>=80 & MeanDias<85 )) 
replace  HTn_ESC=3 if ((MeanSys>=130 & MeanSys<140) | (MeanDias>=85 & MeanDias<90 )) 
replace  HTn_ESC=4 if (MeanSys>=140 & MeanSys<160)|(MeanDias>=90 & MeanDias<100) 
replace  HTn_ESC=5 if (MeanSys>=160 & MeanSys<180)|(MeanDias>=100 & MeanDias<110) 
replace  HTn_ESC=6 if (MeanSys>=180 & MeanSys!=.) | (MeanDias>=110 & MeanDias!=.) 
replace  HTn_ESC=7 if (MeanSys>=140 & MeanSys!=.) & (MeanDias<90 ) 

label variable HTn_ESC " Hypertenssion ESC guideline"			

label define HTn_ESC 1 "Optimal" 2 "NormalBP" 3 "HighNormalBP" 4 "HTNstage1" 5 "HTNstage2" 6 "HTNstage3" 7 "HTNisolated "
label value HTn_ESC HTn_ESC 
**********************************************************	
		*aware_HTN	
		recode HTn (0=.) (1=0), gen (htn_aware)	
		replace htn_aware=1 if (h2e==1 ) & htn_aware!=.	
		replace htn_aware=. if  h2e==.
		
		label variable htn_aware " Hypertenssion awareness"			

		*Coverage_HTN
		recode HTn (0=.) (1=0), gen (htn_cover)
		replace htn_cover=1 if h3c==1 & htn_cover!=.
		replace htn_cover=. if  h3c==.
		label variable htn_aware " Hypertenssion coverage"			

		*ecare_HTN
		*for those treated individuals with HTN
		*140/90
		
		*effective care	
		recode htn_cover (0=.) (1=0), gen (htn_ecare14090)	
		replace htn_ecare14090=1 if MeanDias<90 & MeanSys<140 & htn_ecare14090!=. 
		label variable htn_ecare14090 " Hypertenssion effective care (sys<140 & dias<90)"			

		*120/80
		*intensive effective care
		recode htn_cover (0=.) (1=0), gen (htn_ecare12080)
		replace htn_ecare12080=1 if MeanDias<80 & MeanSys<120 & htn_ecare12080!=.
		label variable htn_ecare12080 " Hypertenssion effective care (sys<120 & dias<80)"			

	***Laboratories Index***	
		replace ALTL=. if ALTL<=1
		gen ALTL_ind = .
		replace ALTL_ind = 0 if ALTL > 41 & c1 == 1
		replace ALTL_ind = 1 if ALTL <= 41 & c1 == 1
		replace ALTL_ind = 0 if ALTL > 33 & c1 == 0
		replace ALTL_ind = 1 if ALTL <= 33 & c1 == 0
		replace ALTL_ind = . if ALTL == .
		label variable ALTL_ind "ALTL categories"			

		label define ALTL_ind 0 "Normal" 1 "Abnormal"
		label values ALTL_ind ALTL_ind
		recode ALTL (0/34.999 = 0) (35/max = 1) (miss = .) , gen(ALT_F_liver)
		label variable ALT_F_liver "ALTL faty liver"			

		*
		recode TRIGL (0/9.99999 = .) (miss = .) 
		recode TRIGL (10/149.999 = 1) (150/199.9 = 2) (200/499 = 3) (500/max = 4) /// 
		(miss = .) , gen(TRIGL_ind)
		label variable TRIGL_ind "TRIGL categories"			
		label define  TRIGL_ind 1 "Desirable" 2 "Borderline"  3 "High" 4 "Very high"
		label values TRIGL_ind TRIGL_ind
		recode TRIGL (0/149.999 = 0) (150/max = 1) (miss = .) , gen(TRIGL150)
	
		*
		rename HDLC4 HDLC3
		replace HDLC3=. if HDLC3<15.5
		recode HDLC3 (0/9.9999= .) (194/max = .) (miss = .) 
		recode HDLC3 (10/40.99 = 1) (41/59.99 = 2) (60/max = 3) (miss = .) , gen(HDLC3_ind)
		
		label variable HDLC3_ind "HDL categories"			
		label define HDLC3_ind 1 "High risk" 2 "Borderline" 3 "Low risk"
		label values HDLC3_ind HDLC3_ind
		
		gen HDL_low=.
		replace HDL_low=1 if (HDLC3<40 & c1==1 ) |  (HDLC3<50 & c1==0)
		replace HDL_low=0 if (HDLC3>=40  & HDLC3!=.  & c1==1 ) |  (HDLC3>=50 &  HDLC3!=. & c1==0)

		
		rename CHo2I CH02l
		*recode CH02l (0/66.999 = .) (772.999/max = .) (miss = .)
		recode CH02l  (miss = .)

		gen chol170 = .
		replace chol170 =1 if (CH02l >=170 & CH02l !=. ) | h14a==1
		replace chol170 =0 if CH02l <170  & (h14a==0 | h14a==-555)
		replace chol170 = . if CH02l==.	
		label variable chol170 "High cholesterol (choleterol>=170 or drug usage)  "			

		gen chol200 = .
		replace chol200 =1 if (CH02l >=200 & CH02l !=. ) | h14a==1
		replace chol200 =0 if CH02l <200  & (h14a==0 | h14a==-555)
		replace chol200 = . if CH02l==.	
		label variable chol200 "High cholesterol (choleterol>=200 or drug usage)  "			

		
		gen chol240 = .
		replace chol240 =1 if (CH02l >=240 & CH02l !=. ) | h14a==1
		replace chol240 =0 if CH02l <240  & (h14a==0 | h14a==-555)
		replace chol240 = . if CH02l==.	
		label variable chol240 "High cholesterol (choleterol>=240 or drug usage)  "			

		*****
		recode CH02l (0/67 = .) (67/169.99 = 1) (170/200.99 = 2) (201/239.99 = 3) ///
		(240/773 = 4) (773/max = .) (miss = .) , gen(CH02l_ind)
		label variable CH02l_ind " cholesterol categories  "			
		label define CH02l_ind 1  "No risk" 2 "Low risk" 3 "Medium risk" 4 "High risk"
		label values CH02l_ind CH02l_ind
		
		*aware_TC
		recode chol240 (0=.) (1=0), gen (chol240_aware)
		replace chol240_aware=1 if (h13a==1 ) & chol240_aware!=.
		replace chol240_aware=.  if (h13a==. ) & chol240==1
		label variable chol240_aware "high cholesterol awareness  "			

		*Coverage_TC
		recode chol240 (0=.) (1=0), gen (chol240_cover)
		replace chol240_cover=1 if h14a==1 & chol240_cover!=.
		replace chol240_cover=.  if (h14a==. ) & chol240==1
		label variable chol240_cover "high cholesterol coverage (Cholesterol >240) "			

		recode chol200 (0=.) (1=0), gen (chol200_cover)
		replace chol200_cover=1 if h14a==1 & chol200_cover!=.
		replace chol200_cover=.  if (h14a==. ) & chol200==1
		label variable chol200_cover "high cholesterol coverage (Cholesterol >200)  "			

		*ecare_TC
		*for those treated individuals with TC
		recode chol240_cover (0=.) (1=0), gen (chol240_ecare)
		replace chol240_ecare=1 if CH02l<240 & chol240_ecare!=.
		label variable chol200_cover "high cholesterol effective care (Cholesterol 240)  "			

		****
		*gen LDL =  CH02l - HDLC3 - ( TRIGL / 5 )
		replace LDL=. if LDL<0
		*replace LDL = . if LDL > 386.9 & LDL != .
		
		gen LDL160 = .
		replace LDL160 =1 if (LDL >=160 & LDL !=. ) | h14a==1
		replace LDL160 =0 if LDL <160  & (h14a==0 | h14a==-555)
		label variable LDL160 "High cholesterol (LDL>=160 or drug usage)  "			

		recode LDL160 (0=.) (1=0), gen (LDL160_cover)
		replace LDL160_cover=1 if h14a==1 & LDL160_cover!=.
		replace LDL160_cover=.  if (h14a==. ) & LDL160==1
		label variable LDL160_cover "high LDL cholesterol coverage (LDL >=160)  "			

		recode LDL160_cover (0=.) (1=0), gen (LDL160_ecare)
		replace LDL160_ecare=1 if LDL<100 & LDL160_ecare!=.
		label variable LDL160_ecare "high LDL cholesterol effective care (LDL >= 160)  "			

		
		recode LDL (-100/100 = 0) (100/130 = 1) (130/160 = 2) (160/189 = 3) ///
		(189/max = 4) (miss = .) , gen(LDL_ind) 
		label variable LDL_ind "LDL categories "			

		label define LDL_ind 0 "Optimal" 1 "Near Optimal" 2 "Borderline high" ///
		3 "High" 4 "Very high"
		label values LDL_ind LDL_ind


		
		
		**
		recode GLUC3 (0/40 = .) (40/69.9 = 0) (70/100.99 = 1) (101/125.99 = 2) ///
		(126/630 = 3) (630/max = .) (miss = .) , gen(GLUC3_ind)
		replace GLUC3 = . if GLUC3 <40

		label define GLUC3_ind 0 "Low Fasting Glucose" 1 "Normal Fasting Glucose" ///
		2 "Impaired  Fasting Glucose" 3 "Diabetes" 
		label values GLUC3_ind GLUC3_ind
		** replace diabetes = 1 if GLUC3_ind == 3
		gen diabetes_FBS = 0
		replace diabetes_FBS = 1 if GLUC3_ind == 3
		replace diabetes_FBS=. if GLUC3==.
		replace diabetes_FBS = 1 if h88ma == 1
		replace diabetes_FBS = . if h88ma == . & GLUC3<126
		replace diabetes_FBS =. if  GLUC3==.	
		label variable diabetes_FBS "high FPG (GLUC3>=126 or drug usage)"			
label define diabetes_FBS 0 "No"1 "Yes" 
label value diabetes_FBS  diabetes_FBS
		recode GLUC3 (99.99999/125.99999 = 1) (miss = .) (nonmiss = 0), gen(prediabetes_FBS)
		replace prediabetes_FBS=0 if diabetes_FBS==1 & prediabetes_FBS==1
		replace prediabetes_FBS = 0 if h88ma == 1
		*replace prediabetes_FBS = . if  h88ma == . &  GLUC3<126
		label variable prediabetes_FBS "prediabetes based on FPG (GLUC3<126 GLUC3>=100)"			
label define prediabetes_FBS 0 "No"1 "Yes" 
label value prediabetes_FBS  prediabetes_FBS
		***
		recode HbA1C (18/max = .)
		recode HbA1C (0/4.79 = 0) (4.8/5.6999 = 1) (5.7/6.49999 = 2) (6.5/max = 3) ///
		(miss = .) , gen(HbA1C_ind)
		label define HbA1C_ind 0 "Low HbA1C" 1 "Normal" 2 "Pre diabetes" 3 "Diabetes"
		label values HbA1C_ind HbA1C_ind
		label variable HbA1C_ind "HbA1C categories"			

		*rename RWD3 HbA1c
		*******
		gen diabetes_HbA1c = 0
		replace diabetes_HbA1c = 1 if HbA1C_ind == 3
		replace diabetes_HbA1c=. if HbA1C==.
		replace diabetes_HbA1c = 1 if h88ma == 1
		replace diabetes_HbA1c = . if h88ma == . & HbA1C<6.5
		replace diabetes_HbA1c = . if HbA1C == . 
		label variable diabetes_HbA1c "high HbA1C (HbA1C>=6.5 or drug usage)"			
label define diabetes_HbA1c 0 "No"1 "Yes" 
label value diabetes_HbA1c  diabetes_HbA1c
		recode HbA1C (5.7/6.499999 = 1) (miss = .) (nonmiss = 0), gen(prediabetes_HbA1c)
		replace prediabetes_HbA1c=0 if h88ma==1
		replace prediabetes_HbA1c = . if HbA1C >=5.7 & HbA1C <6.5 & h88ma ==.
		label variable prediabetes_HbA1c "prediabetes based on HbA1C (HbA1C>=6.5 or drug usage)"			
label define prediabetes_HbA1c 0 "No"1 "Yes" 
label value prediabetes_HbA1c  prediabetes_HbA1c
		**** 
		*aware_DM
		recode diabetes_FBS (0=.) (1=0), gen (diabetes_aware)
		replace diabetes_aware=1 if (x9==1 ) & diabetes_aware!=.
		replace diabetes_aware=. if x9==. 
		label variable diabetes_aware "diabetes awareness"			
label define diabetes_aware 0 "No"1 "Yes" 
label value diabetes_aware  diabetes_aware
		*Coverage_DM
		recode diabetes_FBS (0=.) (1=0), gen (diabetes_cover)
		replace diabetes_cover=1 if (h88ma==1 ) & diabetes_cover!=.
		replace diabetes_cover=. if h88ma==. 
		label variable diabetes_cover "diabetes coverage"			
label define diabetes_cover 0 "No"1 "Yes" 
label value diabetes_cover  diabetes_cover
		* insulinCoverage_DM
		recode diabetes_FBS (0=.) (1=0), gen (insulin_cover)
		replace insulin_cover=1 if (h8a==1 ) & insulin_cover!=.
		replace insulin_cover=. if h8a==. 
		label variable insulin_cover "diabetes  insulin coverage"			
label define insulin_cover 0 "No"1 "Yes" 
label value insulin_cover  insulin_cover
		*oral drug Coverage_DM
		recode diabetes_FBS (0=.) (1=0), gen (oraldrug_cover)
		replace oraldrug_cover=1 if (h8b==1 ) & oraldrug_cover!=.
		replace oraldrug_cover=. if h8b==. 
		label variable oraldrug_cover "diabetes  oral teatment  coverage"			
label define oraldrug_cover 0 "No"1 "Yes" 
label value oraldrug_cover  oraldrug_cover
		*Pen Coverage_DM
		recode diabetes_FBS (0=.) (1=0), gen (pen_cover)
		replace pen_cover=1 if (h8aa==1 ) & pen_cover!=.
		replace pen_cover=. if h8aa==. 
		replace pen_cover=-555 if h8a==0 | h8a==-555
		label variable pen_cover "diabetes  pen  coverage"			
label define pen_cover 0 "No"1 "Yes" 
label value pen_cover  pen_cover
		***
		
		

		
		*ecare_DM
		*for those treated individuals with DM
		recode diabetes_cover (0=.) (1=0), gen (diabetes_ecare_GLUC)
		replace diabetes_ecare_GLUC=1 if GLUC3<126 & diabetes_ecare_GLUC!=.
		label variable diabetes_ecare_GLUC "diabetes effective care (FPG<126)"		
		
		recode diabetes_cover (0=.) (1=0), gen (diabetes_ecare_HbA1C)
		replace diabetes_ecare_HbA1C=1 if HbA1C<7 & diabetes_ecare_HbA1C!=.
		label variable diabetes_ecare_HbA1C "diabetes effective care (HbA1C<7)"			
label define diabetes_ecare_HbA1C 0 "No"1 "Yes" 
label value diabetes_ecare_HbA1C  diabetes_ecare_HbA1C
		
		gen ffmbs_n_diabetes=.
		replace ffmbs_n_diabetes=ffmbs_n if diabetes_FBS==1
		label variable ffmbs_n_diabetes "diabetic relative in diabetic patients"			

	***
	
	
		rename 	CREA2 CRJ2U
		
		gen eGFR=.
		replace eGFR=141*1*(CRJ2U/0.7)^-1.209*0.993^age*1.018 if c1==0 & CRJ2U/0.7>=1
		replace eGFR=141*1*(CRJ2U/0.9)^-1.209*0.993^age if c1==1 & CRJ2U/0.9>=1
		replace eGFR=141*(CRJ2U/0.7)^-0.329*1*0.993^age*1.018 if c1==0 & CRJ2U/0.7<1
		replace eGFR=141*(CRJ2U/0.9)^-0.411*1*0.993^age if c1==1 & CRJ2U/0.9<1		
				label variable eGFR "Estimated Glomerular Filtration Rate "			

		gen CKD=.
		replace CKD=1 if eGFR<60   | (microalbumine_creat>=30   &microalbumine_creat!=.)
		replace CKD=0 if eGFR>=60 & eGFR!=. & microalbumine_creat<30
				label variable CKD "chronic kidney disease"			
label define CKD 0 "No"1 "Yes" 
label value CKD  CKD

		drop K_ Na_24
		
		merge m:m SpecimenID using "D:\e\STEPS 2020\STEPs2020 cod`s\data steps\NA_24.dta"
		replace Na_24=Na_24*Liter*22.9897
		reg Na_24 Na age c1
		predict NA_24_pred
		gen salt_24_pred= NA_24_pred*2.5
		
		
		
		*gen sodium_24 = 23*21.98*(NA_24_pred/(CREA2U*10)*(-2.04*age+14.89*m4+16.14*m3-2244.45))^.392
		gen sodium_24 = 23*21.98*((Na/(CREA2U*10))*(-2.04*age+14.89*m4+16.14*m3-2244.45))^.392
	    replace sodium_24 = 1.1 * sodium_24
				label variable sodium_24 "Sodium predicted based on tanaka formula"			
		gen salt_24=sodium_24*2.5/1000
				label variable salt_24 "salt intake predicted based on tanaka formula"			
		/*recode CRJ2U (0/3.999 = .)
		recode CRJ2U (600/max = .) if c1 == 1
		recode CRJ2U (550/max = .) if c1 == 0
		replace CRJ2U =. if CRJ2U<=4
		gen CRJ2U_ind = .
		replace CRJ2U_ind = 0 if CRJ2U >= 39 & CRJ2U <= 259 & c1 == 1
		replace CRJ2U_ind = 0 if CRJ2U >= 28 & CRJ2U <= 217 & c1 == 0
		replace CRJ2U_ind = 1 if CRJ2U > 259 & c1 == 1
		replace CRJ2U_ind = 1 if CRJ2U > 217 & c1 == 0
		replace CRJ2U_ind = 2 if CRJ2U < 39 & c1 == 1
		replace CRJ2U_ind = 2 if CRJ2U < 28 & c1 == 0
		replace CRJ2U_ind = . if CRJ2U == .
		label define CRJ2U_ind 0 "Normal" 1 "High" 2 "Low"
		label values CRJ2U_ind CRJ2U_ind
	*/
save "Data final.dta",replace

