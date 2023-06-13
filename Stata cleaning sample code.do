**********************
********** Edit by Moein Yoosefi
********** Date: 
**********
******Definition/ -555 known as a Jump code
**********************
*cd "E:\1moein\F\STEPS_2019\Data\Dataset\Data-V02"
use "data labelled.dta",clear
keep if accepttocooperate == 1
keep if pregnant != 1
*Cleaning phase
	***Demographic***
			
		/*gen c2y = substr(birthdate, 1, 4)
		destring c2y,replace
		replace age = 1399 - c2y
		replace age = 1399 - 1300 - c2y if age>120
		drop if age<18*/
		*drop if age>120	
		recode age (18/24=18) (25/34=25) (35/44=35) (45/54=45) (55/64=55) ///
						(65/74=65) (75/115=75),gen(age_cat)

		drop i20 
		recode i22 (0/.999 = 0) (1/6.999 = 1) (7/11.999=2) (12/max =3) , gen(i20)
		drop i22
		label drop i20
		label define i20 0"0" 1"1-7" 2"7-12" 3"12+"
		label value	i20 i20
		*i21 = 6 >>> unpaid (students & home worker & retired & solidier)
		replace i21 = 6 if i21 < 10 & i21 > 5 
					
	***Diets***
		foreach i in d1 d3  {
		replace `i' = 0 if `i' == 99
		}
		
		replace d2 = 0 if d1 == 0
		replace d4 = 0 if d3 == 0 
		replace d0aa = 5 if daa == 0
		replace d18 = . if d18 == 9999

				***plausible Range
				replace d20 = . if d20 < 0 | (d20 > 9 & d20 != .)
				replace d21 = . if d21 < 0 | (d21 > 9 & d21 != .)
				replace d1 = . if d1 < 0 | (d1 > 7 & d1 != .)
				replace d2 = . if d2 < 0 | (d2 > 20 & d2 != .)
				replace d3 = . if d3 < 0 | (d3 > 7 & d3 != .)
				replace d4 = . if d4 < 0 | (d4 > 20 & d4 != .)
			
    ***Physical activity/Cleaning phase***
		foreach i in p2 p3a p3b {
		replace `i'=0 if p1==0
		}
		replace p3a = 0 if p3a == . & p3b != . &  p1 == 1
		replace p3b = 0 if p3b == . & p3a != . &  p1 == 1

		foreach i in p5 p6a p6b {
		replace `i'=0 if p4==0
		}
		replace p6a = 0 if p6a == . & p6b != . &  p4 == 1
		replace p6b = 0 if p6b == . & p6a != . &  p4 == 1	
		
		foreach i in p8 p9a p9b {
		replace `i'=0 if p7==0
		}
		replace p9a = 0 if p9a == . & p9b != . &  p7 == 1
		replace p9b = 0 if p9b == . & p9a != . &  p7 == 1
		
		foreach i in p11 p12a p12b {
		replace `i'=0 if p10==0
		}
		replace p12a = 0 if p12a == . & p12b != . &  p10 == 1
		replace p12b = 0 if p12b == . & p12a != . &  p10 == 1
		
		foreach i in p14 p15a p15b {
		replace `i'=0 if p13==0
		}
		replace p15a = 0 if p15a == . & p15b != . &  p13 == 1
		replace p15b = 0 if p15b == . & p15a != . &  p13 == 1
		
		foreach i in p1 p2 p3a p3b p4 p5 p6a p6b p7 p8 p9a p9b p10 p11 p12a p12b ///
					p13 p14 p15a p15b p16a p16b {
		replace `i'=. if (p3a==. & p3b==.) |( p6a==. & p6b==. ) ///
				|( p9a==. & p9b==. ) | ( p12a==. & p12b==. ) | ( p15a==. & p15b==. )
		}

				***plausible Range
				foreach i in p2 p5 p8 p11 p14 {
				replace `i' = . if (`i' < 0 | `i' > 7) & `i' !=.
				}
				
				foreach i in p3a p6a p9a p12a p15a p16a {
				replace `i' = . if (`i' < 0 | `i' > 16) & `i' !=.
				}
				
				foreach i in p3b p6b p9b p12b p15b p16b {
				replace `i' = . if (`i' < 0 | `i' > 59) & `i' !=.
				}
				
	***Hypertension History***
		replace h2e = -555 if h0e == 0
			
		foreach i in h2y h3aa h3c h4 h5 {
		replace `i' = -555 if h2e == 0 | h2e==-555
		}
		
		replace h3c = -555 if h3aa == 0

		forvalues i=1/8 {
		replace h3ca_`i' = -555 if h3c == 0 | h3c==-555
		}
		forvalues i=1/8 {
		replace h3ca_`i' = . if h0e==.
		}
		replace h3ca_ = "-555" if h3c == 0 | h3c==-555
		replace h3ca_ = "" if h0e == .

		*replace h3c = 0 if h3aa == 0
		
	***Diabetes History***
		replace x9 = -555 if h6 == 0
		
		destring h8aa,replace
		foreach i in h7c h88n h88ma h8b h8a h8aa hypg h8w h8g {
		replace `i' = -555 if x9 == 0 | x9==-555
		}
		
		replace h88ma = -555 if h88n == 0
		
		foreach i in h8b h8a {
		replace `i' = -555 if h88ma == 0 | h88ma==-555
		}
		
		forvalues i = 1/8 {
		replace h8b_`i' = -555 if h8b == 0 | h8b == -555
		}
		forvalues i = 1/8 {
		replace h8b_`i' =. if h6==.
		}
		replace h8b_ = "-555" if h8b == 0 | h8b == -555
		replace h8b_ =""  if h6==.

		forvalues i = 1/5 {
		replace h9a_`i' = -555 if h8a == 0 | h8a == -555
		}
		forvalues i = 1/5 {
		replace h9a_`i' = . if h6==.
		}
		replace h9a_ = "-555" if h8a == 0 | h8a == -555
		replace h9a_ ="" if h6==.

		replace h8aa = -555 if h8a == 0 | h8a == -555
		replace h8r = -555 if x9 == 0 | x9==-555
		replace ffmbs = 0 if ffmbs==2 
		replace ffmbs = . if ffmbs==9999 
		replace ffmbs = 0 if ffmbs_n == 0 
		replace ffmbs = 1 if ffmbs_n == 3 & ffmbs==0 
		*replace hypg = 0 if h88ma == 0
		replace ffmbs_n = 0 if ffmbs == 0 
		
	***cholesterol History***
		replace h13a = -555 if h12 == 0

		foreach i in h13b h14n h14a h15 h16 {
		replace `i' = -555 if h13a == 0 | h13a == -555
		}
		
		replace h14a = -555 if h14n == 0 | h14n == -555
		
		forvalues i = 1/4 {
		replace h14_`i' = -555 if h14a == 0 | h14a == -555
		}
		forvalues i = 1/4 {
		replace h14_`i' =. if h12==.
		}
		replace h14_ = "-555" if h14a == 0 | h14a == -555 
		replace h14_ = "" if h12==.
		
	***Cardiovascular History***
		replace h17ac = -555  if h17ae == 0
		
		replace h17bc = -555 if h17be == 0
		
		replace h18n = . if h18n == 9999
		replace h18n = 0 if h18n_n == 0

		replace h18n_n = 0 if h18n == 0
		replace h18n_n = . if h18n == .

	***Other Diseases History***
		replace r1 = -555 if r12 == 0
		replace rm = -555 if c1 == 1
		
		replace rm_g = -555 if rm == 0 | rm == 2 | rm == -555
		
		replace odc_="1|2|3" if odc_=="1|2|3|4"
		replace odc_="1|2" if odc_=="1|2|4"
		replace odc_="1|3" if odc_=="1|3|4"
		replace odc_="1" if odc_=="1|4"
		replace odc_="2" if odc_=="2|4"
		replace odc_="3" if odc_=="3|4"
		
		replace odc_4=0 if odc_1==1  | odc_2==1 | odc_3==1

		
	***Life Style***

	***Cancer Screening***
		rename (sccx1  scbr) (sc_cx1  sc_br)
		replace sc_cx1 = -555 if c1 == 1
		replace sc_co = -555 if c1 == 0
		replace sc_pr = -555 if c1 == 0
		replace sc_br = -555 if c1 == 1
		replace vcx = -555 if c1 == 1
		replace scco = -555 if c1 == 1

		replace sc_cx1 = . if sc_cx1 == 9999
		replace sc_co = . if sc_co == 9999
		replace sc_pr = . if sc_pr == 9999
		replace sc_br = . if sc_br == 9999
		replace vcx = . if vcx == 9999
		replace scco = . if scco == 9999
		
		
	***Injuries/Cleaning phase***
		
		foreach i in a1_o a1_i {
		replace `i' = -555 if a1 == 0
		}
		
		replace a4a = "-555" if a1 == 0

		foreach i in a11a a11h {
		replace `i' = -555 if a1 == 0
		}
		
		foreach i in a7_f a7_b {
		replace `i' = -555 if a7_1 == 0
		}
		
		foreach i in a9_f a9_b {
		replace `i' = -555 if a9t == 0
		}

		replace a8 = -555 if a8g == 0
		replace a8t = -555 if a8 == 0 | a8 == -555

			***plausible Range
		
	***Tobacco and Smoking/Cleaning phase***
	***CURRENT
	gen t5fw=.
		destring t5em,replace
		foreach i in s1b s1a_1 s1a_2 s1a_3 s1a_4 s1a_5 {
			replace `i' = -555 if s1a == 0
			replace `i' = . if s1a == .
		}
		replace s1a_ = "-555" if s1a == 0
	*** 
		forvalue i = 1/5 {
			 replace s1_`i'=-555 if s1a_`i'==0 | s1a_`i'==-555
		 }
		 replace s1_ = "-555" if s1a == 0 | s1b == 0 
		 
		 foreach i in s1_1 s1_2 s1_3 s1_4 s1_5 {
		replace `i' = -555 if s1b == 0 | s1b == -555 
		replace `i' = . if s1a == . | s1b == .
		}
		
		
		/*			 t5ad t5aw t5am ///
					 t5dd t5dw t5dm ///
					 t5cd t5cw t5cm ///
					 t5ed t5ew t5em ///
					 t5fd t5fw t5fm ///
					 */
		replace t5ad=0 if s1_1==0 | s1_1==-555
		replace t5aw=0 if s1_1==0 | s1_1==-555
		replace t5am=0 if s1_1==0 | s1_1==-555

		replace t5dd=0 if s1_2==0 | s1_2==-555
		replace t5dw=0 if s1_2==0 | s1_2==-555
		replace t5dm=0 if s1_2==0 | s1_2==-555

		replace t5cd=0 if s1_3==0 | s1_3==-555
		replace t5cw=0 if s1_3==0 | s1_3==-555
		replace t5cm=0 if s1_3==0 | s1_3==-555

		replace t5ed=0 if s1_4==0 | s1_4==-555
		replace t5ew=0 if s1_4==0 | s1_4==-555
		replace t5em=0 if s1_4==0 | s1_4==-555

		replace t5fd=0 if s1_5==0 | s1_5==-555
		replace t5fw=0 if s1_5==0 | s1_5==-555
		replace t5fm=0 if s1_5==0 | s1_5==-555

		/***********
		foreach i in t5ad t5aw t5am{
			replace `i' = . if t5ad==0 & t5am==0 & t5aw==0
		}
		foreach i in t5dd t5dw t5dm{
			replace `i' = . if t5dd==0 & t5dm==0 & t5dw==0
		}
		foreach i in t5cd t5cw t5cm{
			replace `i' = . if t5cd==0 & t5cm==0 & t5cw==0
		}
		foreach i in t5ed t5ew t5em{
			replace `i' = . if t5ed==0 & t5em==0 & t5ew==0
		}
		foreach i in t5fd t5fw t5fm{
			replace `i' = . if t5fd==0 & t5fm==0 & t5fw==0
		}
		
	***********/
		forvalue i = 1/5 {
		format %10.0g s1y_`i' ts6_`i'
		replace ts6_`i' = -555 if s1_`i' == 0 | s1_`i'==-555
		replace s1y_`i' = -555 if s1_`i' == 0 | s1_`i'==-555 
		}
		
	/***	
		foreach i in t5ad t5aw t5am {
		replace `i' = 0 if s1_1 == 0
		}
	
		foreach i in t5dd t5dw t5dm {
		replace `i' = 0 if s1_2 == 0
		}
		
		foreach i in t5cd t5cw t5cm {
		replace `i' = 0 if s1_3 == 0
		}
		
		foreach i in t5ed t5ew t5em {
		replace `i' = 0 if s1_4 == 0
		}
		
		foreach i in t5fd t5fw t5fm {
		replace `i' = 0 if s1_5 == 0
		}
	*/		
		foreach i in t4a t4b {
		replace `i' = -555 if s1_1 == 0 | s1_1 == -555 
		}
		
		replace ts7 = -555 if s1b == 0 | s1b == -555
	***PAST
	gen s5fd=.
	gen s5fw=.
		foreach i in s5ad s5aw s5am ///
					 s5dd s5dw s5dm ///
					 s5cd s5cw s5cm ///
					 s5ed s5ew s5em ///
					 s5fd s5fw s5fm 	{
		replace `i' = 0 if s1a == 0 | (s1a == 1 & s1b == 1)
		}
				foreach i in  s1p_1 s1p_2 s1p_3 s1p_4 s1p_5 ///
					 t4pa t4pb t11a ///
									{
		replace `i' = -555 if s1a == 0 | (s1a == 1 & s1b == 1)
		}
		replace s5ad=0 if s1a_1==0 | s1a_1==-555
		replace s5aw=0 if s1a_1==0 | s1a_1==-555
		replace s5am=0 if s1a_1==0 | s1a_1==-555

		replace s5dd=0 if s1a_2==0 | s1a_2==-555
		replace s5dw=0 if s1a_2==0 | s1a_2==-555
		replace s5dm=0 if s1a_2==0 | s1a_2==-555

		replace s5cd=0 if s1a_3==0 | s1a_3==-555
		replace s5cw=0 if s1a_3==0 | s1a_3==-555
		replace s5cm=0 if s1a_3==0 | s1a_3==-555

		replace s5ed=0 if s1a_4==0 | s1a_4==-555
		replace s5ew=0 if s1a_4==0 | s1a_4==-555
		replace s5em=0 if s1a_4==0 | s1a_4==-555

		replace s5fd=0 if s1a_5==0 | s1a_5==-555
		replace s5fw=0 if s1a_5==0 | s1a_5==-555
		replace s5fm=0 if s1a_5==0 | s1a_5==-555
		
		
		/***********
		foreach i in s5ad s5aw s5am{
			replace `i' = . if s5ad==0 | s5am==0 | s5aw==0
		}
		foreach i in s5dd s5dw s5dm{
			replace `i' = . if s5dd==0 | s5dm==0 | s5dw==0
		}
		foreach i in s5cd s5cw s5cm{
			replace `i' = . if s5cd==0 | s5cm==0 | s5cw==0
		}
		foreach i in s5ed s5ew s5em{
			replace `i' = . if s5ed==0 | s5em==0 | s5ew==0
		}
		foreach i in s5fd s5fw s5fm{
			replace `i' = . if s5fd==0 | s5fm==0 | s5fw==0
		}
		
		**************/
		
		/*		
		foreach i in s5ad s5aw s5am {
		replace `i' = 0 if s1a == 1 & s1a_1 == 0 & s1b == 0
		}
		
		foreach i in s5dd s5dw s5dm {
		replace `i' = 0 if s1a == 1 & s1a_2 == 0 & s1b == 0
		}
		
		foreach i in s5cd s5cw s5cm {
		replace `i' = 0 if s1a == 1 & s1a_3 == 0 & s1b == 0
		}
		
		foreach i in s5ed s5ew s5em {
		replace `i' = 0 if s1a == 1 & s1a_4 == 0 & s1b == 0
		}
		
		foreach i in s5fd s5fw s5fm {
		replace `i' = 0 if s1a == 1 & s1a_5 == 0 & s1b == 0
		}
		*/
		forvalue i = 1/5 {
		replace s1p_`i' = -555 if s1a_`i' == 0 | s1a_`i'==-555 | s1b==1
		}
		foreach i in t4pa t4pb {
		replace `i' = -555 if s1a_1 == 0 | s1a_1 == -555 
		}
		
			***plausible Range	
				replace s1y_1 = .  if s1y_1<5 | (s1y_1-age > 0 & s1y_1-age != .)
				replace s1y_2 = .  if s1y_2<5 | (s1y_2-age > 0 & s1y_2-age != .)
				replace s1y_3 = .  if s1y_3<5 | (s1y_3-age > 0 & s1y_3-age != .)
				replace s1y_4 = .  if s1y_4<5 | (s1y_4-age > 0 & s1y_4-age != .)
				replace s1y_5 = .  if s1y_5<5 | (s1y_5-age > 0 & s1y_5-age != .)
				
				replace t4a = .  if t4a-age > -5 & t4a-age != . & t4a != -555
		*		replace t4b = .  if t4a-age > -5 & t4a-age != . & t4a != -555

				
				
				replace s1p_1 = .  if s1p_1<5 | ( s1p_1-age >0 & s1p_1-age != .)
				replace s1p_2 = .  if s1p_2<5 | ( s1p_2-age >0 & s1p_2-age != .)
				replace s1p_3 = .  if s1p_3<5 | ( s1p_3-age >0 & s1p_3-age != .)
				replace s1p_4 = .  if s1p_4<5 | ( s1p_4-age >0 & s1p_4-age != .)
				replace s1p_5 = .  if s1p_5<5 | ( s1p_5-age >0 & s1p_5-age != .)
				
				replace t4pa = .  if t4pa-age > -5 & t4pa-age != . & t4pa != -555
				*replace t4pb = .  if t4pa-age > -5 & t4pa-age != . & t4pa != -555
	
		******************		
		foreach i in t17 t18 {
		replace `i' = -555 if s1a == 1 & s1b == 1
		}
		
	***Alcohol/Cleaning phase***
		replace al1 = . if al1 == 2
		replace al2 = -555 if al1 == 0
		
		foreach i in al3 al12 al4m al4 al7 al9{
		replace `i' = -555 if al2 == 0 | al2==-555
		}
		
		foreach i in al4n1 al4n2 al4n3  {
		replace `i' = 0 if al2 == 0 | al2==-555
		}
		
		*replace al7 = 0 if al2 == 0
		replace al8n = -555 if al7 == 0 | al7 == -555
		replace al11 = 0 if al7 == 0 | al7 == -555  

				***plausible Range
				replace al12 = . if  al12 > 180
				*replace al4n1 = . if al4n1 < 0 | al4n1 > 15
				*replace al4n2 = . if al4n2 < 0 | al4n2 > 20
				replace al11 = . if al11 < 0 | al11 > 100
				
	***Assets***
		replace i11n = 0 if i11 == 0
		
		forvalue i = 1/6 {
		replace i111_`i' = -555 if i11 == 0
		}
		
		forvalue i = 1/3 {
		replace i112_`i' = -555 if i11 == 0
		}
			***plausible Range	
				replace i9r = . if i9r > 15 | i9r < 0
				replace i11n = . if i11n > 10 | i11n < 0

	***Anthropometries***
	
			***plausible Range	
			replace mt = . if mt > 24 | mt < 0
			
			foreach i in m11a m12a m13a {
			replace `i' = . if `i' > 300 | `i' < 40
			}
			
			foreach i in m11b m12b m13b {
			replace `i' = . if `i' > 200 | `i' < 30
			}			
			
			replace m3 = . if m3 > 270 | m3 < 100
			replace m4 = . if m4 > 350 | m4 < 20
			replace m7 = . if m7 > 200 | m7 < 30
			replace m15 = . if m15 > 300 | m15 < 45	
			replace m16a = . if m16a > 200 | m16a < 30	

			
***Laboratory***	
replace HbA1C=. if HbA1C==-99
replace ALTL=. if ALTL==-99
replace CREA2=. if CREA2==-99
replace CHo2I=. if CHo2I==-99
replace CREA2U=. if CREA2U==-99
replace GLUC3=. if GLUC3==-99
replace HDLC4=. if HDLC4==-99
replace K=. if K==-99
replace Na=. if Na==-99
replace LDL=. if LDL==-99
replace TRIGL=. if TRIGL==-99
replace U_BUN=. if U_BUN==-99



		
replace HbA1C=. if age<25
replace ALTL=. if age<25
replace CREA2=. if age<25
replace CHo2I=. if age<25
replace CREA2U=. if age<25
replace GLUC3=. if age<25
replace HDLC4=. if age<25
replace K=. if age<25
replace Na=. if age<25
replace LDL=. if age<25
replace TRIGL=. if age<25
replace U_BUN=. if age<25
replace igg=. if age<25
replace igg_rec="" if age<25

***covid***


order co_1 co_2 co_3 co_3f co_3cf_d co_3cf_st co_3cf_ft co_3c co_3c_d co_3c_st ///
		co_3c_ft co_3r co_3r_d co_3r_st co_3r_ft co_3d co_3d_d co_3d_st co_3d_ft co_3s ///
		co_3s_d co_3s_st co_3s_ft co_3p co_3p_d co_3p_st co_3p_ft co_3m co_3m_d ///
		co_3m_st co_3m_ft co_3ch co_3ch_d co_3ch_st co_3ch_ft co_3sa co_3sa_d co_3sa_st ///
		co_3sa_ft co_3h co_3h_d co_3h_st co_3h_ft co_3v co_3v_d co_3v_st co_3v_ft co_3dia /// 
		co_3dia_d co_3dia_st co_3dia_ft co_3n co_3n_d co_3n_st co_3n_ft co_3cf co_3cf_d ///
		co_3cf_st co_3cf_ft co_3o co_3o_d co_3o_st co_3o_ft co_4 co_5 co_6 co_7 co_8 co_9 ///
		co_9_1 co_11 co_12 co_13 co_14 co_15 co_16 co_17 co_18 co_19 co_20 ,after( ca5)

	tostring co_2- co_8,replace
	foreach i of varlist co_2- co_8 {
		replace `i' = "-555" if co_1==0
	}			
	foreach i of varlist co_2- co_8 {
		replace `i' = "" if co_1==.
	}
	foreach i of varlist co_3- co_3o_ft {
		replace `i' = "-555" if co_2=="0" | co_2=="-555"
	}
	destring co_2- co_8,replace
	replace co_6 = -555 if co_5 == 0 | co_5 == -555
	replace co_7 = -555 if co_5 == 0 | co_5 == -555
	
	replace co_9=-555 if co_1==0
	replace co_9_1=-555 if co_1==0
	
save "data cleaned.dta",replace
