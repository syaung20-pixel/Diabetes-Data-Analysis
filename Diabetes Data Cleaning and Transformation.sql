Select *
From dbo.[Healthcare-Diabetes];

Alter Table dbo.[Healthcare-Diabetes] --- Add BMI condition column
Add BMI_Condition Varchar;

Alter Table dbo.[Healthcare-Diabetes] ---Add BMI condition Column
Alter column BMI_Condition Varchar(10);

Update dbo.[Healthcare-Diabetes] --- Add data to BMI condition
Set BMI_Condition = 
	Case 
		When BMI < 18.8 Then 'Below'
		When BMI >=18.8 and BMI <=24.9 Then 'Normal'
		Else 'Above'
	End;

Select * From dbo.[Healthcare-Diabetes];

SELECT * --- Age over 70 is not enough data to analyse
FROM dbo.[Healthcare-Diabetes]
WHERE Age NOT BETWEEN 20 AND 70;