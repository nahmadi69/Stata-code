


use "raw data.dta", clear

rename id familymemberid
*label variable imoscooperate "imosCooperate"
*label variable i07 "province"
*label variable familymemberid "Family member_ID"
label variable familymemberid "Family member_ID"
label variable parentid "Parent_ID"
label variable clusterid "Cluster_ID"
label variable i07 "State_ID"
label variable cityid "City_ID"
label variable urine "24-h urine"
label variable universityid "University_ID"
*label variable postcode "PostCode"
label variable addressid "Address_ID"
label variable firstname "Firstname"
label variable lastname "Lastname"
label variable livinginaddress "Living In Address"
label variable c1 "Sex"
label variable physicaldisability "Physical disability"
label variable birthdate "Birthdate"
label variable birthdatestate "Birth date status"
label variable marriagestatus "Marriage status"
label variable pregnant "Pregnant"
label variable nationalid "National_ID"
label variable nationalidstatus "National Id Status"
label variable memberavailability "Member Availability"
label variable accepttocooperate "Accept to cooperate"
*label variable familymarriage "Cousin marriage"
label variable parentfamilymarriage "Parent cousin marriage"
label variable relationshipwithhead "Relationship with head"
label variable i4d3a "Telephone"
label variable i4d4 "Mobile"
label variable smph "Connection phone to internet"
label variable i4d5a "Name of relative (first)"
label variable i4d5b "Relative to the participant (first)"
label variable i4d5c "Relative number (first)"
label variable i4d6a "Name of relative (second)"
label variable i4d6b "Relative to the participant (second)"
label variable i4d6c "Relative number (second)"
label variable i4d7a "Name of relative (third)"
label variable i4d7b "Relative to the participant (third)"
label variable i4d7c "Relative number (third)"
label variable i20 "Education"
label variable i22 "Year education"
label variable i21 "Job situation"
label variable x3d1 " Basic health insurance"
label variable x4d1_1 "Type of insurance\ Iran Health Insurance Organization"
label variable x4d1_2 "Type of insurance\ Iranian Social Security Organization"
label variable x4d1_3 "Type of insurance\ Military Insurance Agency"
label variable x4d1_4 "Type of insurance\ Imam Khomeini Relief Foundation"
label variable x4d1_5 "Type of insurance\ Other Insurance"
label variable x4 "Complementary health insurance"
label variable d20 "Number of meals per day"
label variable d21 "Number of snacks per day"
label variable d22 "Frequency of eating breakfast"
label variable d1 "Days eat fruit per week"
label variable d2 "Number of fruits servings per day"
label variable d3 "Days eat vegetable per week"
label variable d4 "Number of vegetables servings per day"
label variable d9a "Frequency of consuming dairy products"
label variable d9b "Type of dairy products intake often"
label variable d8m "Frequency of eating red meat"
label variable d11a "Frequency of consuming fish"
label variable d8n "Frequency of eating processed meats"
label variable d20r "Frequency of eating rice"
label variable d20b "Frequency of eating bread"
label variable d20n "Frequency of eating whole-grains"
label variable d19 "Frequency of drinking sugar-sweetened beverage"
label variable d5n "Frequency of nuts and seeds intake"
label variable daa "Familiar with traffic light guide to food"
label variable d0aa "Pay attention to the traffic light guide to food"
label variable d0ab "Pay attention to the nutrition facts label "
label variable d13 "Using salt in last meal"
label variable dsf "Frequency of adding salt while eating"
label variable d12a "Frequency of adding salt while cooking or preparing food"
label variable d15a "Frequency of eating salty foods"
label variable d14a "Your impression about amount of salt consuming"
label variable d17 "Think that too much salty food cause a health problem"
label variable d18 "Importance of salt reduction"
label variable p1 "Vigorous activity at work"
label variable p2 "Days vigorous work-related activity per week"
label variable p3a "Time vigorous activity at work (hours)"
label variable p3b "Time vigorous activity at work (minutes)"
label variable p4 "Moderate activity at work"
label variable p5 "Days moderate activity at work per week"
label variable p6a "Time moderate activity at work in day (hours)"
label variable p6b "Time moderate activity at work in day (minutes)"
label variable p7 "Walk or use bicycle per week"
label variable p8 "Days walk or use bicycle per week"
label variable p9a "Time walking or bicycling in day (hours)"
label variable p9b "Time walking or bicycling in day (minutes)"
label variable p10 "Vigorous activity for recreation"
label variable p11 "Days vigorous activity for recreation per week"
label variable p12a "Time vigorous activity for recreation (hours)"
label variable p12b "Time vigorous activity for recreation (minutes)"
label variable p13 "Moderate activity for recreation"
label variable p14 "Days moderate activity for recreation per week"
label variable p15a "Time moderate activity for recreation (hours)"
label variable p15b "Time moderate activity for recreation (minutes)"
label variable p16a "Time spent sitting/reclining (hours)"
label variable p16b "Time spent sitting/reclining (minutes)"
label variable ph_1 "Reasons not for exercising\ my exercise is enough"
label variable ph_2 "Reasons not for exercising\ inappropriate physical conditions"
label variable ph_3 "Reasons not for exercising\ busy due to job"
label variable ph_4 "Reasons not for exercising\ lack of time"
label variable ph_5 "Reasons not for exercising\ computer games, watching TV"
label variable ph_6 "Reasons for not exercising\ poor economic"
label variable ph_7 "Reasons for not exercising\ no good place"
label variable ph_8 "Reasons for not exercising\ not safe"
label variable ph_9 "Reasons for not exercising\ I don't know how to do"
label variable ph_10 "Reasons for not exercising\ useless"
label variable ph_11 "Reasons for not exercising\ social beliefs"
label variable ph_12 "Reasons for not exercising\ I have no friends"
label variable ph_13 "Reasons for not exercising\ air pollution"
*label variable ph_14 "Reasons for not exercising\ other"
label variable h0e "Ever had blood pressure measured by doctor or healthcare worker"
label variable h2e "Ever doctor or healthcare worker told hypertension or raised BP"
label variable h2y "Hypertension or raised BP past 12 months for the first time"
label variable h3aa "Ever received medication for raised BP"
label variable h3c "Currently taking drug to control blood pressure"
label variable h3ca_1 "Type of drug for blood pressure\ Diuretics"
label variable h3ca_2 "Type of drug for blood pressure\ Sympathic Blockers "
label variable h3ca_3 "Type of drug for blood pressure\ Vasodilators"
label variable h3ca_4 "Type of drug for blood pressure\ Angiotensin converting enzyme inhibitor"
label variable h3ca_5 "Type of drug for blood pressure\ Methyldopa"
label variable h3ca_6 "Type of drug for blood pressure\ Combined drugs"
label variable h3ca_7 "Type of drug for blood pressure\ Other "
label variable h3ca_8 "Type of drug for blood pressure\ Unable to read drug name "
label variable h4 "Ever visited traditional healer for hypertension"
label variable h5 "Current use traditional remedy for blood pressure"
label variable h3b "Have barometer in home"
label variable h6 "Ever doctor measured your blood sugar"
label variable x9 "Ever doctor told that your blood sugar raised"
label variable h7c "High blood sugar or diabetes past 12 months for the first time"
label variable h88n "Ever doctor order drugs for high blood sugar"
label variable h88ma "Currently taking drugs for high blood sugar"
label variable h8b "Take non-insulin drugs (edible or injectable) to reduce blood sugar"
label variable h8b_1 "Type of edible drugs for blood sugar\ Biguanides "
label variable h8b_2 "Type of edible drugs for blood sugar\ Second generation sulfonylureas"
label variable h8b_3 "Type of edible drugs for blood sugar\ Meglitinides"
label variable h8b_4 "Type of edible drugs for blood sugar\ Thiazolidinediones "
label variable h8b_5 "Type of edible drugs for blood sugar\ Alpha-glucosidase inhibitors"
label variable h8b_6 "Type of edible drugs for blood sugar\ Peptide analog "
label variable h8b_7 "Type of edible drugs for blood sugar\ Glucagon-like peptide-1"
label variable h8b_8 "Type of edible drugs for blood sugar\ Unable to read drug name "
label variable h8a "Insulin use"
label variable h9a_1 "Type of insulin\ Efficacious"
label variable h9a_2 "Type of insulin\ Short effect "
label variable h9a_3 "Type of insulin\ Moderate effect "
label variable h9a_4 "Type of insulin\ Long effect"
label variable h9a_5 "Type of insulin\ Mixed"
label variable h8aa "Insulin pen use"
label variable h8r "Age at diabetes detection"
label variable hypg "Ever had hypoglycemia"
label variable h8w "Ever visited traditional healer for diabetes"
label variable h8g "Current use traditional remedy for diabetes"
label variable h8c "Have glucometer in home"
label variable ffmbs "Diabetic relative"
label variable ffmbs_n "Num diabetic relative"
label variable h12 "Ever doctor measured your cholesterol"
label variable h13a "Ever doctor told that you have cholesterol"
label variable h13b "High cholesterol past 12 months for the first time"
label variable h14n "Ever doctor order drugs for high cholesterol"
label variable h14a "Currently taking drugs for high blood cholesterol"
label variable h14_1 "Type of drugs for cholesterol\ Bile acid-binding drugs "
label variable h14_2 "Type of drugs for cholesterol\ Nicotinic Acid "
label variable h14_3 "Type of drugs for cholesterol\ Inhibitors of HMG-CoA Reductase "
label variable h14_4 "Type of drugs for cholesterol\ Unable to read drug name"
label variable h15 "Ever visited traditional healer for high cholesterol"
label variable h16 "Current use traditional remedy for high cholesterol"
label variable h17ae "Ever had a heart attack "
label variable h17ac "Heart attack happened during the past 12 months "
label variable h17be "Ever had a stroke"
label variable h17bc "Stroke happened during the past 12 months "
label variable h19 "Currently taking statins to prevent or treat heart disease"
label variable h18 "Currently taking aspirin to prevent or treat heart disease"
label variable h18n "Experience of heart attack, stroke or sudden death in family"
label variable h18n_n "Num of heart attack, stroke or sudden death in family"
label variable ca5 "Doctor told that you have cancer in past 12 months"
label variable r12 "Ever had lung diseases"
label variable r1 "Doctor told that you have lung diseases in past 12 months"
label variable rm "Menopause"
label variable rm_g "Age of menopause"
label variable od "Ever had toothache or pain in your mouth"
label variable toothless "Complete edentulism"
label variable odc_1 "Oral hygiene\ Toothbrush"
label variable odc_2 "Oral hygiene\ Dental floss"
label variable odc_3 "Oral hygiene\ Mouthwash"
label variable odc_4 "Oral hygiene\ None"
label variable od_b "Gums bleeding while eating or brushing or using toothpaste"
label variable h20a "Doctor's advice\ quit tobacco"
label variable h20b "Doctor's advice\ decrease salt"
label variable h20c "Doctor's advice\ usage fruits or vegetables daily"
label variable h20d "Doctor's advice\ decrease oil"
label variable h20m "Doctor's advice\ decrease consumption of red meat"
label variable h20j "Doctor's advice\ usage fish"
label variable h20i "Doctor's advice\ increase whole grain bread"
label variable h20v "Doctor's advice\ decrease sugar"
label variable h20e "Doctor's advice\ do exercise"
label variable h20f "Doctor's advice\ lose weight"
label variable eq_1 "Mobility"
label variable eq_2 "Self-care"
label variable eq_3 "Usual activities"
label variable eq_4 "Pain\ discomfort "
label variable eq_5 "Anxiety\ depression"
label variable eq_6 "General comment about health"
label variable sc_co "Ever had screening colorectal cancer (men)"
label variable sc_pr "Ever had screening prostate"
label variable sccx1 "Ever had screening cervical cancer"
label variable scbr "Ever had mammography"
label variable scco "Ever had screening colorectal cancer (women)"
label variable vcx "Ever received HPV vaccination for cervical cancer"
label variable a1 "happened physical injured during past 12 months"
label variable a1_o "Injury lead to medical services"
label variable a1_i "Injury lead to inpatient services"
label variable a4a "Type of accident"
label variable a11h "When injury happened"
label variable a11a "How injury go on"
label variable a7_1 "Use car intercity travel during past 12 months"
label variable a7_f "fast belt in front seats in last time (intercity)"
label variable a7_b "fast belt in rear seats in last time (intercity)"
label variable a9t "Use car in countryside during past 12 months"
label variable a9_f "fast belt in front seats in last time (countryside)"
label variable a9_b "fast belt in rear seats in last time (countryside)"
label variable a19 "Use child safety seat"
label variable a8g "Use motorcycle during past 12 months"
label variable a8 "Helmet compliance in last time using motorcycle during past 12 months"
label variable a8t "Type of helmet"
label variable s1a "Ever tobacco smoking"
label variable s1a_1 "Ever tobacco smoking\ cigarette"
label variable s1a_2 "Ever tobacco smoking\ hookah"
label variable s1a_3 "Ever tobacco smoking\ pipe"
label variable s1a_4 "Ever tobacco smoking\ smokeless tobacco"
label variable s1a_5 "Ever tobacco smoking\ electronic cigarette"
label variable s1b "Currently tobacco smoking"
label variable s1_1 "Current tobacco smoking\ cigarette"
label variable s1_2 "Current tobacco smoking\ hookah"
label variable s1_3 "Current tobacco smoking\ pipe"
label variable s1_4 "Current tobacco smoking\ smokeless tobacco"
label variable s1_5 "Current tobacco smoking\ electronic cigarette"
label variable t5ad "Number of current cigarette smoking per day"
label variable t5aw "Number of current cigarette smoking per week"
label variable t5am "Number of current cigarette smoking per month"
label variable t5dd "Number of current hookah smoking per day"
label variable t5dw "Number of current hookah smoking per week"
label variable t5dm "Number of current hookah smoking per month"
label variable t5cd  "Number of current pipe smoking per day"
label variable t5cw "Number of current pipe smoking per week"
label variable t5cm "Number of current pipe smoking per month"
label variable t5ed "Number of current smokeless tobacco using per day"
label variable t5ew "Number of current smokeless tobacco using per week"
label variable t5em "Number of current smokeless tobacco using per month"
label variable t5fd "Number of current electronic cigarette using per day"
*label variable t5fw "Number of current electronic cigarette using per week"
label variable t5fm "Number of current electronic cigarette using per month"
label variable s1y_1 "Age at initiation of cigarette smoking (current)"
label variable s1y_2 "Age at initiation of hookah smoking (current)"
label variable s1y_3 "Age at initiation of pipe smoking (current)"
label variable s1y_4 "Age at initiation of smokeless tobacco using (current)"
label variable s1y_5 "Age at initiation of electronic cigarette using (current)"
label variable t4a "Years since cigarette smoking initiation (current)"
label variable t4b "Months since cigarette smoking initiation (current)"
label variable ts6_1 "Tried to stop smoking cigarette in past 12 months"
label variable ts6_2 "Tried to stop hookah smoking in past 12 months"
label variable ts6_3 "Tried to stop pipe smoking in past 12 months"
label variable ts6_4 "Tried to stop smokeless tobacco using in past 12 months "
label variable ts6_5 "Tried to stop electronic cigarette using in past 12 months "
label variable ts7  "Advised by health worker to stop cigarette smoking in past 12 months"
label variable s5ad "Number of cigarette smoke per day in past"
label variable s5aw "Number of cigarette smoke per week in past"
label variable s5am "Number of cigarette smoke per month in past"
label variable s5dd "Number of hookah smoke per day in past"
label variable s5dw "Number of hookah smoke per week in past"
label variable s5dm "Number of hookah smoke per month in past"
label variable s5cd "Number of pipe smoke per day in past"
label variable s5cw "Number of pipe smoke per week in past"
label variable s5cm "Number of pipe smoke per month in past"
label variable s5ed "Number of smokeless tobacco use per day in past"
label variable s5ew "Number of smokeless tobacco use per week in past"
label variable s5em "Number of smokeless tobacco use per month in past"
*label variable s5fd "Number of electronic cigarette use per day in past"
*label variable s5fw "Number of electronic cigarette use per week in past"
label variable s5fm "Number of electronic cigarette use per month in past"
label variable s1p_1 "Age at initiation of cigarette smoking (past)"
label variable s1p_2 "Age at initiation of hookah smoking (past)"
label variable s1p_3 "Age at initiation of pipe smoking (past)"
label variable s1p_4 "Age at initiation of smokeless tobacco using (past)"
label variable s1p_5 "Age at initiation of electronic cigarette using (past)"
label variable t4pa "Years since cigarette smoking initiation (past)"
label variable t4pb "Months since cigarette smoking initiation (past)"
label variable t11 "How long ago quit smoking"
label variable t17 "Secondhand smoke at home"
label variable t18 "Secondhand smoke at workplace"
label variable ad_1 "Exposure to direct smoking advertisement in past 12 months"
label variable ad_2 "Exposure to indirect smoking advertisement in past 12 months"
label variable al1 "Ever consumed any alcoholic"
label variable al2 "Ever consumed alcoholic during past 12 months"
label variable al3 "Frequently drinking alcohol during past 12 months"
label variable al12 "How many times consumed alcohol"
label variable al4n1 "How much drink in last drinking\ typical glass of beer"
label variable al4n2 "How much drink in last drinking\ typical glass of wine"
label variable al4n3 "How much drink in last drinking\ small glass"
label variable al4m "Had at least six or more standard drinks in past 12 months"
label variable al4 "Frequently drinking alcohol at least six or more standard drinks in past 12 months"
label variable al7 "Consumed alcohol in last month"
label variable al8n "Had at least six or more standard drinks in last month"
label variable al11 "How many times had at least six or more standard drinks in last month"
label variable al9 "Drunk driving within the last year"
label variable al10 "Been passenger of a drunk driver within the last year"
label variable i8 "Materials house"
label variable i9 "Possession house"
label variable i9r "Num room"
label variable i11 "Car"
label variable i11n "Num car"
label variable i111_1 "Car type\ Pride"
label variable i111_2 "Car type\ Peugeot"
label variable i111_3 "Car type\ Samand"
label variable i111_4 "Car type\ Pickup"
label variable i111_5 "Car type\ Other cars are made in Iran"
label variable i111_6 "Car type\ Other cars are not made in Iran"
label variable i112_1 "Use car for\ Personal and family"
label variable i112_2 "Use car for\ Work (Like taxi, …)"
label variable i112_3 "Use car for\ I do not use"
label variable x5a "Facilities\ Piped water"
label variable x5b "Facilities\ Piped gas"
label variable x5c "Facilities\ Electricity"
label variable x5d "Facilities\ Bathroom"
label variable x5e "Facilities\ Landline phone"
label variable x5f "Facilities\ Kitchen"
label variable x5g "Facilities\ Air conditioner"
label variable x5h "Facilities\ Split air conditioner"
label variable x5i "Facilities\ Radiator or central heating system"
label variable x5j "Facilities\ Internet"
label variable xx5k "Home appliance\ Color television"
label variable xx5l "Home appliance\ LCD \ LED"
label variable xx5m "Home appliance\ Refrigerator"
label variable xx5n "Home appliance\ Freezer"
label variable xx5o "Home appliance\ Side by side refrigerator "
label variable xx5p "Home appliance\ Oven"
label variable xx5q "Home appliance\ Vacuum cleaner"
label variable xx5r "Home appliance\ Twin washing machine"
label variable xx5s "Home appliance\ Automatic washing machine"
label variable xx5t "Home appliance\ Dishwasher"
label variable xx5u "Home appliance\ Dryer machine"
label variable xx5v "Home appliance\ Personal computer"
label variable xx5w "Home appliance\ Laptop"
label variable xx5x "Home appliance\ Mobile phone"
label variable xx5y "Home appliance\ Microwave"
label variable x5wa "Fuel cooking"
label variable x5wb "Fuel heating home"
label variable x5wc "Fuel heating water"
label variable mt "How many hours ago had food"
label variable m11a "Systolic measure for first time"
label variable m11b "Diastolic measure for first time"
label variable m12a "Systolic measure for second time"
label variable m12b "Diastolic measure for second time"
label variable m13a "Systolic measure for third time"
label variable m13b "Diastolic measure for third time"
label variable m3 "Height"
label variable m4 "Weight"
label variable m7 "Waist circumference"
label variable m15 "Hip circumference"
label variable m16a "Number of pulse rate in 1 minute"
label variable m16d "Pedometer"
label variable name_nq1 "Phlebotomist first name"
label variable name_nq2 "Phlebotomist surname"
label variable date_b "The date of blood sampling"
label variable hours_b "The time of blood sampling"
label variable fasting1 "Fasting duration\ from (time)"
label variable fasting2 "Fasting duration\ up to (time)"
label variable b41 "Take medication"
*label variable b30_1 "Name medications\ Anti-diabetic drugs"
*label variable b30_2 "Name medications\ Lipid-lowering drugs"
*label variable b30_3 "Name medications\ Cardiovascular drugs"
*label variable b30_4 "Name medications\ Hormones"
*label variable b30_5 "Name medications\ Vitamins"
*label variable b30_6 "Name medications\ Antibiotics"
*label variable b30_7 "Name medications\ Anticonvulsants drugs"
*label variable b30_8 "Name medications\ Antipsychotic"
*label variable b30_9 "Name medications\ Anti-inflammatory steroid drugs"
*label variable b30_10 "Name medications\ Antiviral drugs"
*label variable b31_1 "Type of anti-diabetic\ Insulin"
*label variable b31_2 "Type of anti-diabetic\ Chlorpropamide"
*label variable b31_3 "Type of anti-diabetic\ Glibenclamide"
*label variable b31_4 "Type of anti-diabetic\ Metformin"
*label variable b31_5 "Type of anti-diabetic\ Repaglinide"
label variable time_b31 "Last time anti-diabetic drugs"
*label variable b32_1 "Tape of fat-lowering\ Atorvastatin"
*label variable b32_2 "Tape of fat-lowering\ Fluvastatin"
*label variable b32_3 "Tape of fat-lowering\ Lovastatin"
*label variable b32_4 "Tape of fat-lowering\ Simvastatin"
*label variable b32_5 "Tape of fat-lowering\ Cholestyramine"
*label variable b32_6 "Tape of fat-lowering\ Gemfibrozil"
*label variable b32_7 "Tape of fat-lowering\ Ezetimibe"
label variable time_b32 "Last time fat-lowering drugs"
*label variable b33_1 "Type of cardiovascular\ Celiprolol"
*label variable b33_2 "Type of cardiovascular\ Atenolol"
*label variable b33_3 "Type of cardiovascular\ Metoprolol"
*label variable b33_4 "Type of cardiovascular\ Captopril"
*label variable b33_5 "Type of cardiovascular\ Hydrochlorothiazide"
*label variable b33_6 "Type of cardiovascular\ Spironolactone"
*label variable b33_7 "Type of cardiovascular\ Indapamide"
*label variable b33_8 "Type of cardiovascular\ Valsartan"
*label variable b33_9 "Type of cardiovascular\ Acetazolamide"
label variable time_b33 "Last time cardiovascular drugs"
*label variable b34_1 "Type of hormones\ Contraceptives drugs"
*label variable b34_2 "Type of hormones\ Tamoxifen"
*label variable b34_3 "Type of hormones\ Growth Hormone"
*label variable b34_4 "Type of hormones\ Levothyroxine"
*label variable b34_5 "Type of hormones\ Progesterone"
*label variable b34_6 "Type of hormones\ Estrogen"
label variable time_b34 "Last time hormones drugs"
*label variable b35_1 "Type of vitamins\ Vitamin C (ascorbic acid)"
*label variable b35_2 "Type of vitamins\ Calcitriol"
*label variable b35_3 "Type of vitamins\ Vitamin E"
*label variable b35_4 "Type of vitamins\ Isotretinoin (retinoid)"
label variable time_b35 "Last time vitamins"
*label variable b36_1 "Type of antibiotics\ Gentamicin"
*label variable b36_2 "Type of antibiotics\ Amoxicillin"
*label variable b36_3 "Type of antibiotics\ Ampicillin"
*label variable b36_4 "Type of antibiotics\ Trimethoprim"
label variable time_b36 "Last time antibiotics drugs"
*label variable b37_1 "Type of anticonvulsant\ Carbamazepine"
*label variable b37_2 "Type of anticonvulsant\ Phenytoin "
*label variable b37_3 "Type of anticonvulsant\ Valproic acid"
label variable time_b37 "Last time anticonvulsant drugs"
*label variable b38_1 "Type of antipsychotic\ Risperidone"
*label variable b38_2 "Type of antipsychotic\ Buspirone"
*label variable b38_3 "Type of antipsychotic\ Clozapine"
label variable time_b38 "Last time antipsychotic drugs"
*label variable b39_1 "Type of anti-inflammatory steroid\ Dexamethasone"
*label variable b39_2 "Type of anti-inflammatory steroid\ Hydrocortisone"
*label variable b39_3 "Type of anti-inflammatory steroid\ Betamethasone"
*label variable b39_4 "Type of anti-inflammatory steroid\ Methylprednisolone"
label variable time_b39 "Last time anti-inflammatory steroid drugs"
*label variable b40_1 "Type of antiviral\ Ritonavir"
label variable time_b40 "Last time antiviral drugs"
label variable b42 "Exercise during 14 hours age"
label variable b43 "Abnormalities while sampling"
label variable b59 "What happened & solution"
label variable b46 "Urine color"
label variable b47 "Urine appearance"
label variable b48 "Urine bilirubin"
label variable b49 "Urine urobilinogen"
label variable b50 "Urine ketone bodies"
label variable b51 "Urine ascorbic acid"
label variable b52 "Urine glucose"
label variable b53 "Urine protein"
label variable b54 "Urine blood\ Hgb"
label variable b55 "Urine blood\ Ery/µl"
label variable b56 "Urine pH"
label variable b57 "Urine nitrite"
label variable b58 "Urine leukocyte"
label variable b60 "Urine specific gravity"
label variable b61 "24-h urine color"
label variable b62 "24-h urine appearance"
label variable b63 "24-h urine bilirubin"
label variable b64 "24-h urine urobilinogen (mg/dl)"
label variable b65 "24-h urine ketone bodies"
label variable b66 "24-h urine ascorbic acid"
label variable b67 "24-h urine glucose"
label variable b68 "24-h urine protein"
label variable b69 "24-h urine blood\ Hgb"
label variable b70 "24-h urine blood\ Ery/µl"
label variable b71 "24-h urine pH"
label variable b72 "24-h urine nitrite"
label variable b73 "24-h urine leukocyte (leuko/ µl)"
label variable b74 "24-h urine specific gravity"
label variable name_naf1 "Naf_responsible_family"
label variable name_naf2 "Naf_responsible_name"
label variable date_naf "Naf date"
label variable hours_naf "Naf hour"
label variable serum_hour "Serum hour"
label variable naf_temperature "Naf temperature"
label variable serum_temperature "Serum temperature"
label variable naf_volume "Naf volume"
label variable serum_volume "Serum volume"
label variable time_biobank "Time biobank"
label variable lose_sample "Lose sample"
label variable aware_laboratory "Aware laboratory"
label variable considerations "Considerations"

label define area 1 "urban" 0 "rural"


label define a1 1 "Yes" 0 "No"
label define a11a 1 "The ingury got well in less than one month" 2 "The ingury got well in one month to 6 months" 4 "The ingury didn\'t get well"
label define a11h 1 "Less than a month" 2 "1 to less than 6 months" 3 "6 months and less than 12 months" 4 "More than 12 months"
label define a19 1 "Yes" 0 "No" 2 "I don\'t have any children"
label define a4a 1 "Traffic" 2 "Burn" 3 "Falling" 4 "Drown" 5 "Shock" 6 "Poison" 7 "Suicide" 8 "Harshness" 9 "Scorpion or snake sting" 10 "Animal attack" 11 "Stroke" 12 "Other"
label define a8t 1 "Full-fledged hat" 2 "Tricot hat (front)" 3 "Hats with less than three-quarters cover"
label define a9_b 1 "Yes" 0 "No" 2 "I have always been a driver"
label define a9t 1 "Yes" 0 "No" 9999 "I have not traveled countryside"
label define al1 1 "Yes" 0 "No" 2 "I don’t like to answer"
label define al3 1 "Daily" 2 "Weekly" 3 "Monthly" 4 "Seasonal" 5 "6 months or more"
label define al4 1 "Daily" 2 "Weekly" 3 "Monthly" 4 "more than once a month"
label define b30_1 0 "No" 1 "Yes"
label define b40_1 1 "Ritonavir"
label define b46 1 "Yellow" 2 "Dark yellow" 3 "Red" 4 "Brown " 5 "Dark brown"
label define b47 1 "Clear" 2 "Semiclear" 3 "Turbid"
label define b48 1 "Negative" 2 "Pos +" 3 "Pos ++" 4 "Pos +++"
label define b49 1 "Negative" 2 "2" 3 "4" 4 "8" 5 "12"
label define b50 1 "Negative" 2 "Trace" 3 "Pos +" 4 "Pos ++" 5 "Pos +++" 6 "Pos ++++"
label define b51 1 "Negative" 2 "Pos +" 3 "Pos ++"
label define b52 1 "Negative" 2 "50" 3 "100" 4 "250" 5 "500" 6 "1000>"
label define b53 1 "Negative" 2 "Trace" 3 "30" 4 "100" 5 "500"
label define b54 1 "Negative" 2 "Trace" 3 "Pos +" 4 "Pos ++" 5 "Pos +++"
label define b55 1 "Negative" 2 "43961" 3 "50" 4 "300"
label define b56 1 "5" 2 "6" 3 "6.5" 4 "7" 5 "8" 6 "9"
label define b57 1 "Negative" 2 "Pos +"
label define b58 1 "Negative" 2 "25" 3 "75" 4 "500"
label define birthdatestate 1 "Self-report" 2 "Based on documents"
label define c1 0 "Female" 1 "Male"
label define d0aa 1 "Always" 2 "Often" 3 "Sometimes" 4 "Rarely" 5 "Never"
label define d1 99 "Never"
label define d11a 1 "Less than 1 time a month or never" 2 "1 to 3 times a month" 3 "1 to 3 times a week" 4 "4 to 6 times a week" 5 "1 or 2 times a day" 6 "More than 3 times a day"
label define d14a 1 "Very much" 2 "Much" 3 "Average" 4 "Little" 5 "Very little"
label define d18 1 "Very important " 2 "Slightly important " 3 "Not important " 4 "I don\'t know"
label define d22 1 "Always" 2 "5 to 6 days" 3 "3 to 4 days" 4 "1 to 2 days" 5 "Never"
label define d9b 1 "Low fat" 2 "High fat" 3 "2.5% fat" 4 "Native dairy"
label define eq_1 1 "I have No problem moving around" 2 "I have some difficulty moving around" 3 "I\'m paralytic and can\'t move around"
label define eq_2 1 "I have No problem taking care of myself" 2 "I\'m having a bit of a problem with my own bathing and changing of my clothes" 3 "I can\'t wash myself (bathe) and change my clothes"
label define eq_3 1 "I have No problem doing my usual activities" 2 "I have some difficulty doing my usual activities" 3 "I can\'t do my usual activities"
label define eq_4 1 "I have No pain or discomfort" 2 "I have some pain and discomfort" 3 "I have too much pain and discomfort"
label define eq_5 1 "I\'m Not anxious or depressed" 2 "I\'m somewhat anxious or depressed" 3 "I\'m too anxious or depressed"
label define ffmbs 1 "Yes" 0 "No" 9999 "I don\'t know"
label define h18n 1 "Yes" 0 "No" 9999 "I don’t know"
label define i07 0 "Markazi" 1 "Gilan" 2 "Mazandaran" 3 "Azerbaijan, East " 4 "Azerbaijan, West" 5 "Kermanshah" 6 "Khuzestan" 7 "Fars" 8 "Kerman" 9 "Khorasan, Razavi" 10 "Isfahan" 11 "Sistan and Baluchistan" 12 "Kurdistan" 13 "Hamadan" 14 "Chahar Mahaal and Bakhtiari" 15 "Lorestan" 16 "Ilam" 17 "Kohgiluyeh and Boyer-Ahmad" 18 "Bushehr" 19 "Zanjan" 20 "Semnan" 21 "Yazd" 22 "Hormozgan" 23 "Tehran" 24 "Ardabil" 25 "Qom" 26 "Qazvin" 27 "Golestan" 28 "Khorasan, North" 29 "Khorasan, South" 30 "Alborz"
label define i20 1 "Illiterate" 2 "Elementary" 3 "Secondary School" 4 "Middle school" 5 "High school" 6 "Diploma" 7 " Bachelor Degree" 8 "Master of Science / MD" 9 "Phd" 10 "Seminary"
label define i21 1 "Public sector employee" 10 "Retired" 11 "Unemployed due to disability" 12 "Unemployed seeker job" 13 "Unemployed Not seeking work" 2 "Public sector labor" 3 "Private Sector Employee" 4 "Private Sector labor" 5 "Freelance job or self-employed" 6 "Unpaid work" 7 "Student" 8 "Soldier" 9 "Housewife"
label define i4d5b 1 "Householder" 2 "Spouse (wife / husband)" 3 "Boy / girl" 4 "Bride and groom" 5 "\xa0Grandchild" 6 "Parent-guardian or spouse" 7 "Brother / sister guardian or spouse" 8 "Uncle / Aunt" 9 "Nephew / niece" 10 "Adoptive child / Spouse / Adopted child" 11 "Other relatives / Non-relatives" 12 " Doesn\'t know"
label define i8 1 "Steel Frame Structure or Reinforced concrete" 2 "Brick building with beam roof" 3 "Clay or mud" 4 "Tent-dweller,hut, Conex"
label define i9 1 "Personal" 2 "Leased" 3 "Organizational" 4 "Other"
label define marriagestatus 0 "Single" 1 "Married" 2 "Divorced/seprate with partner" 3 "Widow"
label define nationalidstatus 1 "Complete National Code" 0 "National code is being completed"
label define relationshipwithhead 1 "Householder" 2 "Spouse (wife / husband)" 3 "Boy / girl" 4 "Bride and groom" 5 "\xa0Grandchild" 6 "Parent-guardian or spouse" 7 "Brother / sister guardian or spouse" 8 "Uncle / Aunt" 9 "Nephew / niece" 10 "Adoptive child / Spouse / Adopted child" 11 "Other relatives / Non-relatives"
label define rm 1 "Yes" 0 "No" 2 "I have had the surgery to remove the uterus"
label define sc_co 1 "Yes" 0 "No" 9999 "I do Not know"
label define smph 1 "Yes and I would like to submit a link to a health certificate" 2 "Yes and I would like Not to submit a link to a health certificate" 0 "No"
label define toothless 1 "Yes, I am a complete toothless and I use dentures" 2 "Yes, I am completely toothless and do Not use dentures" 3 "No, I don\'t have a complete tooth"
label define ts7  1 "Yes" 0 "No" 2 "I haven\'t met a doctor or health worker in the past 12 months"
label define universityid 1 "Arak" 2 "Khomein" 3 "Saveh" 4 "Guilan" 5 "Mazandaran" 6 "Babol" 7 "Tabriz" 8 "Maragheh" 9 "Urmia" 10 "Khoy" 11 "Kermanshah" 12 "Abadan" 13 "Ahvaz" 14 "Behbahan" 15 "Dezful" 16 "Shooshtar" 17 "Shiraz" 18 "Jahrom" 19 "Fasa" 20 "Larestan" 21 "Gerash" 22 "Kerman" 23 "Bam" 24 "Jiroft" 25 "Rafsanjan" 26 "Sirjan" 27 "Mashhad" 28 "Torbat Heydariyeh" 29 "Torbat Jam" 30 "Sabzevar" 31 "Gonabad" 32 "Neyshabur" 33 "Isfahan" 34 "Kashan" 35 "Iranshahr" 36 "Zahedan" 37 "Zabol" 38 "Kurdistan" 39 "Hamadan" 40 "Assadabad" 41 "Shahrekord" 42 "Lorestan" 43 "Ilam" 44 "Yasuj" 45 "Bushehr" 46 "Zanjan" 47 "Semnan" 48 "Shahroud" 49 "Yazd" 50 "Hormozgan" 51 "Shahid Beheshti" 52 "Tehran" 53 "Iran" 54 "Ardabil" 55 "Khalkhal" 56 "Qom" 57 "Qazvin" 58 "Golestan" 59 "Esfarayen" 60 "Khorasan, North" 61 "Birjand" 62 "Alborz" 63 "Sarab"
label define x5wa 1 "Oil" 2 "Gas" 3 "Electricity" 4 "Firewood and wood" 5 "Other"

***********************************label by MN




label define urine 1 "Yes" 0 "No"


label define livinginaddress 1 "Yes" 0 "No"

label define physicaldisability 1 "Yes" 0 "No"



label define pregnant 1 "Yes" 0 "No"


label define memberavailability 1 "Yes" 0 "No"
label define accepttocooperate 1 "Yes" 0 "No"
label define familymarriage 1 "Yes" 0 "No"
label define parentfamilymarriage 1 "Yes" 0 "No"






label define i4d6b 1 "Householder" 2 "Spouse (wife / husband)" 3 "Boy / girl" 4 "Bride and groom" 5 " Grandchild " 6 "Parent-guardian or spouse" 7 "Brother / sister guardian or spouse" 8 "Uncle / Aunt" 9 "Nephew / niece" 10 "Adoptive child / Spouse / Adopted child" 11 "Other relatives / Non-relatives" 12 " Doesn't know"

label define i4d7b 1 "Householder" 2 "Spouse (wife / husband)" 3 "Boy / girl" 4 "Bride and groom" 5 " Grandchild " 6 "Parent-guardian or spouse" 7 "Brother / sister guardian or spouse" 8 "Uncle / Aunt" 9 "Nephew / niece" 10 "Adoptive child / Spouse / Adopted child" 11 "Other relatives / Non-relatives" 12 " Doesn't know"



label define x3d1 0 "No" 1 "Yes"
label define x4d1_1 1 "Yes" 0 "No"
label define x4d1_2 1 "Yes" 0 "No"
label define x4d1_3 1 "Yes" 0 "No"
label define x4d1_4 1 "Yes" 0 "No"
label define x4d1_5 1 "Yes" 0 "No"
label define x4 1 "Yes" 0 "No"



 
label define d3 99 "Never"

label define d9a 1 "Less than 1 time a month or never" 2 "1 to 3 times a month" 3 "1 to 3 times a week" 4 "4 to 6 times a week" 5 "1 or 2 times a day" 6 "More than 3 times a day"

label define d8m 1 "Less than 1 time a month or never" 2 "1 to 3 times a month" 3 "1 to 3 times a week" 4 "4 to 6 times a week" 5 "1 or 2 times a day" 6 "More than 3 times a day"

label define d8n 1 "Less than 1 time a month or never" 2 "1 to 3 times a month" 3 "1 to 3 times a week" 4 "4 to 6 times a week" 5 "1 or 2 times a day" 6 "More than 3 times a day"
label define d20r 1 "Less than 1 time a month or never" 2 "1 to 3 times a month" 3 "1 to 3 times a week" 4 "4 to 6 times a week" 5 "1 or 2 times a day" 6 "More than 3 times a day"
label define d20b 1 "Less than 1 time a month or never" 2 "1 to 3 times a month" 3 "1 to 3 times a week" 4 "4 to 6 times a week" 5 "1 or 2 times a day" 6 "More than 3 times a day"
label define d20n 1 "Less than 1 time a month or never" 2 "1 to 3 times a month" 3 "1 to 3 times a week" 4 "4 to 6 times a week" 5 "1 or 2 times a day" 6 "More than 3 times a day"
label define d19 1 "Less than 1 time a month or never" 2 "1 to 3 times a month" 3 "1 to 3 times a week" 4 "4 to 6 times a week" 5 "1 or 2 times a day" 6 "More than 3 times a day"
label define d5n 1 "Less than 1 time a month or never" 2 "1 to 3 times a month" 3 "1 to 3 times a week" 4 "4 to 6 times a week" 5 "1 or 2 times a day" 6 "More than 3 times a day"
 
label define daa 1 "Yes" 0 "No"
label define d0ab 1 "Always" 2 "Often" 3 "Sometimes" 4 "Rarely" 5 "Never " 
label define d13 1 "Yes" 0 "No"
label define dsf 1 "Always" 2 "Often" 3 "Sometimes" 4 "Rarely" 5 "Never " 
label define d12a 1 "Always" 2 "Often" 3 "Sometimes" 4 "Rarely" 5 "Never " 
label define d15a 1 "Always" 2 "Often" 3 "Sometimes" 4 "Rarely" 5 "Never " 
label define d17 1 "Yes" 0 "No"
label define p1 1 "Yes" 0 "No"

label define p4 1 "Yes" 0 "No"

label define p7 1 "Yes" 0 "No"

label define p10 1 "Yes" 0 "No"

label define p13 1 "Yes" 0 "No"

label define ph_1 1 "Yes" 0 "No"
label define ph_2 1 "Yes" 0 "No"
label define ph_3 1 "Yes" 0 "No"
label define ph_4 1 "Yes" 0 "No"
label define ph_5 1 "Yes" 0 "No"
label define ph_6 1 "Yes" 0 "No"
label define ph_7 1 "Yes" 0 "No"
label define ph_8 1 "Yes" 0 "No"
label define ph_9 1 "Yes" 0 "No"
label define ph_10 1 "Yes" 0 "No"   
label define ph_11 1 "Yes" 0 "No"   
label define ph_12 1 "Yes" 0 "No"   
label define ph_13 1 "Yes" 0 "No"   
label define ph_14 1 "Yes" 0 "No"   
label define h0e 1 "Yes" 0 "No"   
label define h2e 1 "Yes" 0 "No"   
label define h2y 1 "Yes" 0 "No"   
label define h3aa 1 "Yes" 0 "No"   
label define h3c 1 "Yes" 0 "No"   
label define h3ca_1 1 "Yes" 0 "No"   
label define h3ca_2 1 "Yes" 0 "No"   
label define h3ca_3 1 "Yes" 0 "No"   
label define h3ca_4 1 "Yes" 0 "No"   
label define h3ca_5 1 "Yes" 0 "No"   
label define h3ca_6 1 "Yes" 0 "No"   
label define h3ca_7 1 "Yes" 0 "No"   
label define h3ca_8 1 "Yes" 0 "No"   
label define h4 1 "Yes" 0 "No"   
label define h5 1 "Yes" 0 "No"   
label define h3b 1 "Yes" 0 "No"   
label define h6 1 "Yes" 0 "No"   
label define x9 1 "Yes" 0 "No"   
label define h7c 1 "Yes" 0 "No"   
label define h88n 1 "Yes" 0 "No"   
label define h88ma 1 "Yes" 0 "No"   
label define h8b 1 "Yes" 0 "No"   
label define h8b_1 1 "Yes" 0 "No"   
label define h8b_2 1 "Yes" 0 "No"   
label define h8b_3 1 "Yes" 0 "No"   
label define h8b_4 1 "Yes" 0 "No"   
label define h8b_5 1 "Yes" 0 "No"   
label define h8b_6 1 "Yes" 0 "No"   
label define h8b_7 1 "Yes" 0 "No"   
label define h8b_8 1 "Yes" 0 "No"   
label define h8a 1 "Yes" 0 "No"   
label define h9a_1 1 "Yes" 0 "No"   
label define h9a_2 1 "Yes" 0 "No"   
label define h9a_3 1 "Yes" 0 "No"   
label define h9a_4 1 "Yes" 0 "No"   
label define h9a_5 1 "Yes" 0 "No"   
label define h8aa 1 "Yes" 0 "No"   
  
label define hypg 1 "Yes" 0 "No"   
label define h8w 1 "Yes" 0 "No"   
label define h8g 1 "Yes" 0 "No"   
label define h8c 1 "Yes" 0 "No"   

label define h12 1 "Yes" 0 "No"   
label define h13a 1 "Yes" 0 "No"   
label define h13b 1 "Yes" 0 "No"   
label define h14n 1 "Yes" 0 "No"   
label define h14a 1 "Yes" 0 "No"   
label define h14_1 1 "Yes" 0 "No"   
label define h14_2 1 "Yes" 0 "No"   
label define h14_3 1 "Yes" 0 "No"   
label define h14_4 1 "Yes" 0 "No"   
label define h15 1 "Yes" 0 "No"   
label define h16 1 "Yes" 0 "No"   
label define h17ae 1 "Yes" 0 "No"   
label define h17ac 1 "Yes" 0 "No"   
label define h17be 1 "Yes" 0 "No"   
label define h17bc 1 "Yes" 0 "No"   
label define h19 1 "Yes" 0 "No"   
label define h18 1 "Yes" 0 "No"   
 
label define ca5 1 "Yes" 0 "No"   
label define r12 1 "Yes" 0 "No"   
label define r1 1 "Yes" 0 "No"   

label define od 1 "Yes" 0 "No"
label define odc_1 1 "Yes" 0 "No"   
label define odc_2 1 "Yes" 0 "No"   
label define odc_3 1 "Yes" 0 "No"   
label define odc_4 1 "Yes" 0 "No"   
label define od_b 1 "Yes" 0 "No"   
label define h20a 1 "Yes" 0 "No"   
label define h20b 1 "Yes" 0 "No"   
label define h20c 1 "Yes" 0 "No"   
label define h20d 1 "Yes" 0 "No"   
label define h20m 1 "Yes" 0 "No"   
label define h20j 1 "Yes" 0 "No"   
label define h20i 1 "Yes" 0 "No"   
label define h20v 1 "Yes" 0 "No"   
label define h20e 1 "Yes" 0 "No"   
label define h20f 1 "Yes" 0 "No"   


label define sc_pr 1 "Yes" 0 "No" 9999 "I don’t know"  
label define sccx1 1 "Yes" 0 "No" 9999 "I don’t know"  
label define scbr 1 "Yes" 0 "No" 9999 "I don’t know"  
label define scco 1 "Yes" 0 "No" 9999 "I don’t know"  
label define vcx 1 "Yes" 0 "No" 9999 "I don’t know"  
label define a1_o 1 "Yes" 0 "No"   
label define a1_i 1 "Yes" 0 "No"   




label define a7_1 1 "Yes" 0 "No"   
label define a7_f 1 "Yes" 0 "No"   
label define a7_b 1 "Yes" 0 "No"   
label define a9_f 1 "Yes" 0 "No"   
label define a8g 1 "Yes" 0 "No"   
label define a8 1 "Yes" 0 "No"   
label define s1a 1 "Yes" 0 "No"   
label define s1a_1 1 "Yes" 0 "No"   
label define s1a_2 1 "Yes" 0 "No"   
label define s1a_3 1 "Yes" 0 "No"   
label define s1a_4 1 "Yes" 0 "No"   
label define s1a_5 1 "Yes" 0 "No"   
label define s1b 1 "Yes" 0 "No"   
label define s1_1 1 "Yes" 0 "No"   
label define s1_2 1 "Yes" 0 "No"   
label define s1_3 1 "Yes" 0 "No"   
label define s1_4 1 "Yes" 0 "No"   
label define s1_5 1 "Yes" 0 "No"   

label define ts6_1 1 "Yes" 0 "No"   
label define ts6_2 1 "Yes" 0 "No"   
label define ts6_3 1 "Yes" 0 "No"   
label define ts6_4 1 "Yes" 0 "No"   
label define ts6_5 1 "Yes" 0 "No"   

  
label define t17 1 "Yes" 0 "No"   
label define t18 1 "Yes" 0 "No"   
label define ad_1 1 "Yes" 0 "No"   
label define ad_2 1 "Yes" 0 "No"   
label define al2 1 "Yes" 0 "No"   
 
label define al4m 1 "Yes" 0 "No"   
label define al7 1 "Yes" 0 "No"   
label define al8n 1 "Yes" 0 "No"   
 
label define al9 1 "Yes" 0 "No"   
label define al10 1 "Yes" 0 "No"   
  
label define i11 0 "No" 1 "Yes"   
 
label define i111_1 0 "No" 1 "Yes"   
label define i111_2 0 "No" 1 "Yes"   
label define i111_3 0 "No" 1 "Yes"   
label define i111_4 0 "No" 1 "Yes"   
label define i111_5 0 "No" 1 "Yes"   
label define i111_6 0 "No" 1 "Yes"   
label define i112_1 0 "No" 1 "Yes"   
label define i112_2 0 "No" 1 "Yes"   
label define i112_3 0 "No" 1 "Yes"   
label define x5a 1 "Yes" 0 "No"   
label define x5b 1 "Yes" 0 "No"   
label define x5c 1 "Yes" 0 "No"   
label define x5d 1 "Yes" 0 "No"   
label define x5e 1 "Yes" 0 "No"   
label define x5f 1 "Yes" 0 "No"   
label define x5g 1 "Yes" 0 "No"   
label define x5h 1 "Yes" 0 "No"   
label define x5i 1 "Yes" 0 "No"   
label define x5j 1 "Yes" 0 "No"   
label define xx5k 1 "Yes" 0 "No"   
label define xx5l 1 "Yes" 0 "No"   
label define xx5m 1 "Yes" 0 "No"   
label define xx5n 1 "Yes" 0 "No"   
label define xx5o 1 "Yes" 0 "No"   
label define xx5p 1 "Yes" 0 "No"   
label define xx5q 1 "Yes" 0 "No"   
label define xx5r 1 "Yes" 0 "No"   
label define xx5s 1 "Yes" 0 "No"   
label define xx5t 1 "Yes" 0 "No"   
label define xx5u 1 "Yes" 0 "No"   
label define xx5v 1 "Yes" 0 "No"   
label define xx5w 1 "Yes" 0 "No"   
label define xx5x 1 "Yes" 0 "No"   
label define xx5y 1 "Yes" 0 "No"  


label define x5wb 1 "Oil" 2 "Gas" 3 "Electricity" 4 "Firewood and wood" 5 "Other " 
label define x5wc 1 "Oil" 2 "Gas" 3 "Electricity" 4 "Firewood and wood" 5 "Other " 
 
 
label define m16d 1 "Yes" 0 "No" 

label define b41 0 "No" 1 "Yes" 
label define b30_2 0 "No" 1 "Yes"   
label define b30_3 0 "No" 1 "Yes"  
label define b30_4 0 "No" 1 "Yes" 
label define b30_5 0 "No" 1 "Yes"  
label define b30_6 0 "No" 1 "Yes"   
label define b30_7 0 "No" 1 "Yes"  
label define b30_8 0 "No" 1 "Yes" 
label define b30_9 0 "No" 1 "Yes"  
label define b30_10 0 "No" 1 "Yes" 
label define b31_1 0 "No" 1 "Yes"  
label define b31_2 0 "No" 1 "Yes"  
label define b31_3 0 "No" 1 "Yes"  
label define b31_4 0 "No" 1 "Yes"  
label define b31_5 0 "No" 1 "Yes"  

label define b32_1 0 "No" 1 "Yes"  
label define b32_2 0 "No" 1 "Yes"  
label define b32_3 0 "No" 1 "Yes"  
label define b32_4 0 "No" 1 "Yes"  
label define b32_5 0 "No" 1 "Yes"  
label define b32_6 0 "No" 1 "Yes"   
label define b32_7 0 "No" 1 "Yes"  

label define b33_1 0 "No" 1 "Yes"  
label define b33_2 0 "No" 1 "Yes"   
label define b33_3 0 "No" 1 "Yes"  
label define b33_4 0 "No" 1 "Yes"  
label define b33_5 0 "No" 1 "Yes"  
label define b33_6 0 "No" 1 "Yes"  
label define b33_7 0 "No" 1 "Yes"  
label define b33_8 0 "No" 1 "Yes"  
label define b33_9 0 "No" 1 "Yes"  

label define b34_1 1 "Yes" 0 "No"  
label define b34_2 1 "Yes" 0 "No"  
label define b34_3 1 "Yes" 0 "No"   
label define b34_4 1 "Yes" 0 "No"  
label define b34_5 1 "Yes" 0 "No"  
label define b34_6 1 "Yes" 0 "No"  

label define b35_1 1 "Yes" 0 "No"  
label define b35_2 1 "Yes" 0 "No"  
label define b35_3 1 "Yes" 0 "No"  
label define b35_4 1 "Yes" 0 "No"  
 
label define b36_1 1 "Yes" 0 "No"  
label define b36_2 1 "Yes" 0 "No"  
label define b36_3 1 "Yes" 0 "No"  
label define b36_4 1 "Yes" 0 "No"   

label define b37_1 1 "Yes" 0 "No"  
label define b37_2 1 "Yes" 0 "No"  
label define b37_3 1 "Yes" 0 "No" 

label define b38_1 1 "Yes" 0 "No"
label define b38_2 1 "Yes" 0 "No"
label define b38_3 1 "Yes" 0 "No"

label define b39_1 1 "Yes" 0 "No"
label define b39_2 1 "Yes" 0 "No"
label define b39_3 1 "Yes" 0 "No"
label define b39_4 1 "Yes" 0 "No"


label define b42 0 "No" 1 "Yes" 
label define b43 0 "No" 1 "Yes"  




label define b61 1 "Yellow" 2 "Dark yellow" 3 "Red" 4 "Brown" 5 "Dark brown " 
label define b62 1 "Clear" 2 "Semiclear" 3 "Turbid"
label define b63 1 "Negative" 2 "Pos +" 3 "Pos ++" 4 "Pos +++"
label define b64 1 "Negative" 2 "2" 3 "4" 4 "8" 5 "12 " 
label define b65 1 "Negative" 2 "Trace" 3 "Pos +" 4 "Pos ++" 5 "Pos +++ " 6 "Pos ++++"
label define b66 1 "Negative" 2 "Pos +" 3 "Pos ++"  
label define b67 1 "Negative" 2 "50" 3 "100" 4 "250" 5 "500 " 6 "1000>"
label define b68 1 "Negative" 2 "Trace" 3 "30" 4 "100" 5 "500 " 
label define b69 1 "Negative" 2 "Trace" 3 "Pos +" 4 "Pos ++" 5 "Pos +++ " 
label define b70 1 "Negative" 2 "43961" 3 "50" 4 "300" 
label define b71 1 "5" 2 "6" 3 "6.5" 4 "7" 5 "8 " 6 "9"
label define b72 1 "Negative" 2 "Pos +" 
label define b73 1 "Negative" 2 "25" 3 "75" 4 "500" 

label define lose_sample 1 "Yes" 0 "No"

label define co_1 1 "Yes" 0 "No"
label define co_2 1 "Yes" 0 "No"
label define co_3f 1 "Yes" 0 "No"
 
label define co_3c 1 "Yes" 0 "No"

label define co_3d 1 "Yes" 0 "No" 

label define co_3s 1 "Yes" 0 "No"

label define co_3p 1 "Yes" 0 "No"

label define co_3m 1 "Yes" 0 "No"

label define co_3ch 1 "Yes" 0 "No"
 
label define co_3sa 1 "Yes" 0 "No"

label define co_3h 1 "Yes" 0 "No" 

label define co_3v 1 "Yes" 0 "No" 

label define co_3dia 1 "Yes" 0 "No"

label define co_3n 1 "Yes" 0 "No"

label define co_3cf 1 "Yes" 0 "No"

label define co_3o 1 "Yes" 0 "No"

label define co_4 1 "Yes" 0 "No"
label define co_5 1 "Yes" 0 "No" 
label define co_6 1 "Yes" 0 "No" 
label define co_7 1 "Yes" 0 "No" 
label define co_8 1 "Yes" 0 "No"
label define co_9 1 "Yes" 0 "No"
*label define co_10 1 "They are still under treatment" 2 "Have fully recovered" 3 "Passed away" 
label define co_11 1 "Yes" 0 "No" 
label define co_12 1 "Yes" 0 "No"
label define co_13 1 "Yes" 0 "No"
label define co_14 1 "Yes" 0 "No"
label define co_15 1 "Under 10 people" 2 "Between 10 to 30 people" 3 "Between 30 to 50 people" 4 "More than 50 people"
label define co_16 1 "Yes" 0 "No"
label define co_17 1 "Daily" 2 "Weekly" 3 "Monthly" 
label define co_18 1 "Yes" 0 "No"
label define co_19 1 "Yes" 0 "No"
label define co_20 1 "Yes" 0 "No"


***********************************************************

label value area area

*label value imoscooperate imoscooperate
label value i07 i07
*label value familymemberid familymemberid
*label value parentid parentid
*label value clusterid clusterid
*label value stateid stateid
*label value cityid cityid
label value urine urine
label value universityid universityid
*label value postcode postcode
*label value addressid addressid
*label value firstname firstname
*label value lastname lastname
label value livinginaddress livinginaddress
label value c1 c1
label value physicaldisability physicaldisability
*label value birthdate birthdate
label value birthdatestate birthdatestate
label value marriagestatus marriagestatus
*label value pregnant pregnant
*label value nationalid nationalid
label value nationalidstatus nationalidstatus
label value memberavailability memberavailability
label value accepttocooperate accepttocooperate
label value parentfamilymarriage familymarriage
label value parentfamilymarriage parentfamilymarriage
label value relationshipwithhead relationshipwithhead
label value i4d3a i4d3a
*label value i4d4 i4d4
label value smph smph
*label value i4d5a i4d5a
*label value i4d5b i4d5b
*label value i4d5c i4d5c
*label value i4d6a i4d6a
*label value i4d6b i4d6b
*label value i4d6c i4d6c
*label value i4d7a i4d7a
*label value i4d7b i4d7b
*label value i4d7c i4d7c
label value i20 i20
label value i22 i22
label value i21 i21
label value x3d1 x3d1
label value x4d1_1 x4d1_1
label value x4d1_2 x4d1_2
label value x4d1_3 x4d1_3
label value x4d1_4 x4d1_4
label value x4d1_5 x4d1_5
label value x4 x4
label value d20 d20
label value d21 d21
label value d22 d22
label value d1 d1
label value d2 d2
label value d3 d3
label value d4 d4
label value d9a d9a
label value d9b d9b
label value d8m d8m
label value d11a d11a
label value d8n d8n
label value d20r d20r
label value d20b d20b
label value d20n d20n
label value d19 d19
label value d5n d5n
label value daa daa
label value d0aa d0aa
label value d0ab d0ab
label value d13 d13
label value dsf dsf
label value d12a d12a
label value d15a d15a
label value d14a d14a
label value d17 d17
label value d18 d18
label value p1 p1
label value p2 p2
label value p3a p3a
label value p3b p3b
label value p4 p4
label value p5 p5
label value p6a p6a
label value p6b p6b
label value p7 p7
label value p8 p8
label value p9a p9a
label value p9b p9b
label value p10 p10
label value p11 p11
label value p12a p12a
label value p12b p12b
label value p13 p13
label value p14 p14
label value p15a p15a
label value p15b p15b
label value p16a p16a
label value p16b p16b
label value ph_1 ph_1
label value ph_2 ph_2
label value ph_3 ph_3
label value ph_4 ph_4
label value ph_5 ph_5
label value ph_6 ph_6
label value ph_7 ph_7
label value ph_8 ph_8
label value ph_9 ph_9
label value ph_10 ph_10
label value ph_11 ph_11
label value ph_12 ph_12
label value ph_13 ph_13
label value ph_14 ph_14
label value h0e h0e
label value h2e h2e
label value h2y h2y
label value h3aa h3aa
label value h3c h3c
label value h3ca_1 h3ca_1
label value h3ca_2 h3ca_2
label value h3ca_3 h3ca_3
label value h3ca_4 h3ca_4
label value h3ca_5 h3ca_5
label value h3ca_6 h3ca_6
label value h3ca_7 h3ca_7
label value h3ca_8 h3ca_8
label value h4 h4
label value h5 h5
label value h3b h3b
label value h6 h6
label value x9 x9
label value h7c h7c
label value h88n h88n
label value h88ma h88ma
label value h8b h8b
label value h8b_1 h8b_1
label value h8b_2 h8b_2
label value h8b_3 h8b_3
label value h8b_4 h8b_4
label value h8b_5 h8b_5
label value h8b_6 h8b_6
label value h8b_7 h8b_7
label value h8b_8 h8b_8
label value h8a h8a
label value h9a_1 h9a_1
label value h9a_2 h9a_2
label value h9a_3 h9a_3
label value h9a_4 h9a_4
label value h9a_5 h9a_5
label value h8aa h8aa
label value h8r h8r
label value hypg hypg
label value h8w h8w
label value h8g h8g
label value h8c h8c
label value ffmbs ffmbs
label value ffmbs_n ffmbs_n
label value h12 h12
label value h13a h13a
label value h13b h13b
label value h14n h14n
label value h14a h14a
label value h14_1 h14_1
label value h14_2 h14_2
label value h14_3 h14_3
label value h14_4 h14_4
label value h15 h15
label value h16 h16
label value h17ae h17ae
label value h17ac h17ac
label value h17be h17be
label value h17bc h17bc
label value h19 h19
label value h18 h18
label value h18n h18n
label value h18n_n h18n_n
label value ca5 ca5
label value r12 r12
label value r1 r1
label value rm rm
label value rm_g rm_g
label value od od
label value toothless toothless
label value odc_1 odc_1
label value odc_2 odc_2
label value odc_3 odc_3
label value odc_4 odc_4
label value od_b od_b
label value h20a h20a
label value h20b h20b
label value h20c h20c
label value h20d h20d
label value h20m h20m
label value h20j h20j
label value h20i h20i
label value h20v h20v
label value h20e h20e
label value h20f h20f
label value eq_1 eq_1
label value eq_2 eq_2
label value eq_3 eq_3
label value eq_4 eq_4
label value eq_5 eq_5
label value eq_6 eq_6
label value sc_co sc_co
label value sc_pr sc_pr
label value sccx1 sccx1
label value scbr scbr
label value scco scco
label value vcx vcx
label value a1 a1
label value a1_o a1_o
label value a1_i a1_i
*label value a4a a4a
label value a11h a11h
label value a11a a11a
label value a7_1 a7_1
label value a7_f a7_f
label value a7_b a7_b
label value a9t a9t
label value a9_f a9_f
label value a9_b a9_b
label value a19 a19
label value a8g a8g
label value a8 a8
label value a8t a8t
label value s1a s1a
label value s1a_1 s1a_1
label value s1a_2 s1a_2
label value s1a_3 s1a_3
label value s1a_4 s1a_4
label value s1a_5 s1a_5
label value s1b s1b
label value s1_1 s1_1
label value s1_2 s1_2
label value s1_3 s1_3
label value s1_4 s1_4
label value s1_5 s1_5
label value t5ad t5ad
label value t5aw t5aw
label value t5am t5am
label value t5dd t5dd
label value t5dw t5dw
label value t5dm t5dm
label value t5cd  t5cd 
label value t5cw t5cw
label value t5cm t5cm
label value t5ed t5ed
label value t5ew t5ew
label value t5em t5em
label value t5fd t5fd
*label value t5fw t5fw
label value t5fm t5fm
label value s1y_1 s1y_1
label value s1y_2 s1y_2
label value s1y_3 s1y_3
label value s1y_4 s1y_4
label value s1y_5 s1y_5
label value t4a t4a
label value t4b t4b
label value ts6_1 ts6_1
label value ts6_2 ts6_2
label value ts6_3 ts6_3
label value ts6_4 ts6_4
label value ts6_5 ts6_5
label value ts7  ts7 
label value s5ad s5ad
label value s5aw s5aw
label value s5am s5am
label value s5dd s5dd
label value s5dw s5dw
label value s5dm s5dm
label value s5cd s5cd
label value s5cw s5cw
label value s5cm s5cm
label value s5ed s5ed
label value s5ew s5ew
label value s5em s5em
*label value s5fd s5fd
*label value s5fw s5fw
label value s5fm s5fm
label value s1p_1 s1p_1
label value s1p_2 s1p_2
label value s1p_3 s1p_3
label value s1p_4 s1p_4
label value s1p_5 s1p_5
label value t4pa t4pa
label value t4pb t4pb
label value t11 t11
label value t17 t17
label value t18 t18
label value ad_1 ad_1
label value ad_2 ad_2
label value al1 al1
label value al2 al2
label value al3 al3
label value al12 al12
label value al4n1 al4n1
label value al4n2 al4n2
label value al4n3 al4n3
label value al4m al4m
label value al4 al4
label value al7 al7
label value al8n al8n
label value al11 al11
label value al9 al9
label value al10 al10
label value i8 i8
label value i9 i9
label value i9r i9r
label value i11 i11
label value i11n i11n
label value i111_1 i111_1
label value i111_2 i111_2
label value i111_3 i111_3
label value i111_4 i111_4
label value i111_5 i111_5
label value i111_6 i111_6
label value i112_1 i112_1
label value i112_2 i112_2
label value i112_3 i112_3
label value x5a x5a
label value x5b x5b
label value x5c x5c
label value x5d x5d
label value x5e x5e
label value x5f x5f
label value x5g x5g
label value x5h x5h
label value x5i x5i
label value x5j x5j
label value xx5k xx5k
label value xx5l xx5l
label value xx5m xx5m
label value xx5n xx5n
label value xx5o xx5o
label value xx5p xx5p
label value xx5q xx5q
label value xx5r xx5r
label value xx5s xx5s
label value xx5t xx5t
label value xx5u xx5u
label value xx5v xx5v
label value xx5w xx5w
label value xx5x xx5x
label value xx5y xx5y
label value x5wa x5wa
label value x5wb x5wb
label value x5wc x5wc
label value mt mt
label value m11a m11a
label value m11b m11b
label value m12a m12a
label value m12b m12b
label value m13a m13a
label value m13b m13b
label value m3 m3
label value m4 m4
label value m7 m7
label value m15 m15
label value m16a m16a
label value m16d m16d
*label value name_nq1 name_nq1
*label value name_nq2 name_nq2
*label value date_b date_b
*label value hours_b hours_b
*label value fasting1 fasting1
*label value fasting2 fasting2
label value b41 b41
label value b42 b42
label value b43 b43
label value b46 b46
label value b47 b47
label value b48 b48
label value b49 b49
label value b50 b50
label value b51 b51
label value b53 b53
label value b54 b54
label value b55 b55
label value b56 b56
label value b57 b57
label value b58 b58
label value b61 b61
label value b62 b62
label value b63 b63
label value b64 b64
label value b65 b65
label value b66 b66
label value b67 b67
label value b68 b68
label value b69 b69
label value b70 b70
label value b71 b71
label value b72 b72
label value b73 b73


label value lose_sample lose_sample
label value aware_laboratory aware_laboratory


save "data labelled.dta",replace
