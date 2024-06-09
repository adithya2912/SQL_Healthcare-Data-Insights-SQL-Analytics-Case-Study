CREATE TABLE PatientRecords (

    PatientID INTEGER PRIMARY KEY,

    Name TEXT,

    Age INTEGER,

    Gender TEXT,

    DiabetesType TEXT,

    LastConsultation DATE,

    HbA1c FLOAT

);



INSERT INTO PatientRecords (PatientID, Name, Age, Gender, DiabetesType, LastConsultation, HbA1c)

VALUES

    (1, 'John Doe', 45, 'Male', 'Type 2', '2024-03-25', 7.2),

    (2, 'Jane Smith', 52, 'Female', 'Type 1', '2024-03-20', 6.5),

    (3, 'Emily Davis', 38, 'Female', 'Type 2', '2024-03-22', 8.1),

    (4, 'Michael Brown', 60, 'Male', 'Type 2', '2024-02-28', 7.5),

    (5, 'Jessica Wilson', 44, 'Female', 'Type 1', '2024-03-15', 6.8),

    (6, 'William Johnson', 35, 'Male', 'Type 1', '2024-03-30', 7.0),

    (7, 'Olivia Martin', 29, 'Female', 'Type 1', '2024-03-05', 7.3),

    (8, 'James Taylor', 48, 'Male', 'Type 2', '2024-01-29', 8.4),

    (9, 'Laura Anderson', 55, 'Female', 'Gestational', '2024-03-11', 5.9),

    (10, 'Robert Thomas', 50, 'Male', 'Type 2', '2024-03-18', 7.6);



CREATE TABLE AppointmentDetails (

    AppointmentID INTEGER PRIMARY KEY,

    PatientID INTEGER,

    AppointmentDate DATE,

    HealthcareProfessional TEXT,

    VisitPurpose TEXT,

    ConsultationNotes TEXT,

    FOREIGN KEY (PatientID) REFERENCES PatientRecords(PatientID)

);



INSERT INTO AppointmentDetails (AppointmentID, PatientID, AppointmentDate, HealthcareProfessional, VisitPurpose, ConsultationNotes)

VALUES

    (1, 1, '2024-04-05', 'Dr. Sarah Lee', 'Routine Check-up', 'Patient managing well, continue current medication'),

    (2, 2, '2024-04-03', 'Dr. Mike Brown', 'Routine Check-up', 'Adjust insulin dosage'),

    (3, 3, '2024-04-10', 'Dr. Sarah Lee', 'Follow-up', 'Check blood pressure and adjust medication'),

    (4, 4, '2024-03-29', 'Dr. Emily Clark', 'Routine Check-up', 'Recommend dietary changes'),

    (5, 5, '2024-04-15', 'Dr. Mike Brown', 'Emergency', 'Hypoglycemic event, provided treatment'),

    (6, 6, '2024-04-08', 'Dr. Sarah Lee', 'Follow-up', 'Good progress, keep up with the exercise'),

    (7, 7, '2024-04-12', 'Dr. Emily Clark', 'Routine Check-up', 'Adjust medication, monitor closely'),

    (8, 8, '2024-03-25', 'Dr. Mike Brown', 'Routine Check-up', 'Stable condition, continue treatment'),

    (9, 9, '2024-04-20', 'Dr. Sarah Lee', 'Follow-up', 'Gestational diabetes management'),

    (10, 10, '2024-04-18', 'Dr. Emily Clark', 'Routine Check-up', 'Encouraged weight management'),

    (11, 1, '2024-05-05', 'Dr. Sarah Lee', 'Follow-up', 'Continue with current plan, next checkup in 3 months'),

    (12, 2, '2024-05-03', 'Dr. Mike Brown', 'Emergency', 'Advised hospital visit for further tests'),

    (13, 3, '2024-05-10', 'Dr. Sarah Lee', 'Routine Check-up', 'Stable HbA1c, review in 6 months'),

    (14, 5, '2024-05-15', 'Dr. Mike Brown', 'Follow-up', 'Positive response to new insulin'),

    (15, 7, '2024-05-12', 'Dr. Emily Clark', 'Routine Check-up', 'Continue monitoring glucose levels');



CREATE TABLE HealthcareProfessionals (

    ProfessionalID INTEGER PRIMARY KEY,

    Name TEXT,

    Specialty TEXT,

    ContactInfo TEXT

);



INSERT INTO HealthcareProfessionals (ProfessionalID, Name, Specialty, ContactInfo)

VALUES

    (1, 'Dr. Sarah Lee', 'Endocrinology', 'sarah.lee@example.com'),

    (2, 'Dr. Mike Brown', 'General Practice', 'mike.brown@example.com'),

    (3, 'Dr. Emily Clark', 'Endocrinology', 'emily.clark@example.com'),

    (4, 'Dr. John Carter', 'Cardiology', 'john.carter@example.com'),

    (5, 'Dr. Olivia White', 'Nephrology', 'olivia.white@example.com'),

    (6, 'Dr. Lucas Graham', 'Endocrinology', 'lucas.graham@example.com'),

    (7, 'Dr. Sophia Taylor', 'General Practice', 'sophia.taylor@example.com'),

    (8, 'Dr. Mason Scott', 'Cardiology', 'mason.scott@example.com'),

    (9, 'Dr. Isabella Hall', 'Nephrology', 'isabella.hall@example.com'),

    (10, 'Dr. Ethan King', 'Endocrinology', 'ethan.king@example.com');



CREATE TABLE MedicationsPrescribed (

    PrescriptionID INTEGER PRIMARY KEY,

    AppointmentID INTEGER,

    MedicationName TEXT,

    Dosage TEXT,

    Instructions TEXT,

    FOREIGN KEY (AppointmentID) REFERENCES AppointmentDetails(AppointmentID)

);



INSERT INTO MedicationsPrescribed (PrescriptionID, AppointmentID, MedicationName, Dosage, Instructions)

VALUES

    (1, 1, 'Metformin', '500mg', 'Twice a day with meals'),

    (2, 2, 'Insulin Glargine', '20 units', 'Once a day at bedtime'),

    (3, 3, 'Lisinopril', '10mg', 'Once a day in the morning'),

    (4, 4, 'Atorvastatin', '40mg', 'Once a day in the evening'),

    (5, 5, 'Metformin', '850mg', 'Twice a day with meals'),

    (6, 6, 'Humalog', 'As per need', 'Before meals'),

    (7, 7, 'Metformin', '1000mg', 'Twice a day with meals'),

    (8, 8, 'Insulin Aspart', '25 units', 'Twice a day'),

    (9, 9, 'Simvastatin', '20mg', 'Once a day in the evening'),

    (10, 10, 'Amlodipine', '5mg', 'Once a day in the morning'),

    (11, 11, 'Metformin', '750mg', 'Twice a day with meals'),

    (12, 12, 'Insulin Detemir', '18 units', 'Once a day at bedtime'),

    (13, 13, 'Hydrochlorothiazide', '25mg', 'Once a day in the morning'),

    (14, 14, 'Glipizide', '10mg', 'Twice a day, 30 minutes before meals'),

    (15, 15, 'Insulin Lispro', 'As per need', 'Before meals');



CREATE TABLE Transactions (

    TransactionID INTEGER PRIMARY KEY,

    PatientID INTEGER,

    TransactionDate DATE,

    ServiceProvided TEXT,

    AmountCharged FLOAT,

    FOREIGN KEY (PatientID) REFERENCES PatientRecords(PatientID)

);



INSERT INTO Transactions (TransactionID, PatientID, TransactionDate, ServiceProvided, AmountCharged)

VALUES

    (1, 1, '2024-04-05', 'Consultation', 100.00),

    (2, 2, '2024-04-03', 'Lab Test: Blood Panel', 200.00),

    (3, 3, '2024-04-10', 'Medication: Insulin', 50.00),

    (4, 4, '2024-03-29', 'Consultation', 100.00),

    (5, 5, '2024-04-15', 'Emergency Service', 300.00),

    (6, 6, '2024-04-08', 'Consultation', 100.00),

    (7, 7, '2024-04-12', 'Lab Test: HbA1c', 150.00),

    (8, 8, '2024-03-25', 'Medication: Metformin', 30.00),

    (9, 9, '2024-04-20', 'Consultation', 100.00),

    (10, 10, '2024-04-18', 'Lab Test: Cholesterol', 180.00),

    (11, 1, '2024-05-05', 'Medication: Blood Pressure', 60.00),

    (12, 2, '2024-05-03', 'Emergency Service', 300.00),

    (13, 3, '2024-05-10', 'Consultation', 100.00),

    (14, 5, '2024-05-15', 'Medication: Insulin', 50.00),

    (15, 7, '2024-05-12', 'Lab Test: Kidney Function', 170.00);



CREATE TABLE Patients (

    PatientID INTEGER PRIMARY KEY,

    FullName TEXT,

    DateOfBirth DATE,

    Address TEXT,

    PhoneNumber TEXT,

    Email TEXT,

    MedicalHistorySummary TEXT

);



INSERT INTO Patients (PatientID, FullName, DateOfBirth, Address, PhoneNumber, Email, MedicalHistorySummary)

VALUES

    (1, 'John Doe', '1979-02-15', '123 Elm St, Springfield', '555-0101', 'johndoe@email.com', 'Type 2 Diabetes, Hypertension'),

    (2, 'Jane Smith', '1971-07-24', '456 Oak St, Rivertown', '555-0202', 'janesmith@email.com', 'Type 1 Diabetes'),

    (3, 'Emily Davis', '1985-05-30', '789 Pine St, Lakeview', '555-0303', 'emilydavis@email.com', 'Type 2 Diabetes, High Cholesterol'),

    (4, 'Michael Brown', '1964-04-12', '101 Maple Ave, Hillside', '555-0404', 'michaelbrown@email.com', 'Type 2 Diabetes, Cardiopathy'),

    (5, 'Jessica Wilson', '1976-08-09', '202 Birch Rd, Seaside', '555-0505', 'jessicawilson@email.com', 'Type 1 Diabetes, Thyroid disorder'),

    (6, 'William Johnson', '1988-03-15', '303 Cedar Ln, Greenwood', '555-0606', 'williamjohnson@email.com', 'Type 1 Diabetes'),

    (7, 'Olivia Martin', '1994-12-22', '404 Spruce St, Westfield', '555-0707', 'oliviamartin@email.com', 'Type 1 Diabetes, Asthma'),

    (8, 'James Taylor', '1975-06-05', '505 Elm St, Easton', '555-0808', 'jamestaylor@email.com', 'Type 2 Diabetes, Obesity'),

    (9, 'Laura Anderson', '1969-11-08', '606 Oak St, Brookside', '555-0909', 'lauraanderson@email.com', 'Gestational Diabetes'),

    (10, 'Robert Thomas', '1974-01-20', '707 Pine St, Cliffside', '555-1010', 'robertthomas@email.com', 'Type 2 Diabetes, Hypertension');


select * from patientrecords

select * from Patients

select * from Transactions

select * from AppointmentDetails

select * from HealthcareProfessionals

select * from MedicationsPrescribed



















Questions to Answer:

--Appointment and Patient Data

1.Can we see a list of all our patients along with the date of their last appointment?
Hint: Use a LEFT JOIN between the Patients and AppointmentDetails tables and aggregate to get the MAX of the appointment dates for each patient.
	
select 
p.fullname as patientname,
max(a.appointmentdate) as Lastappointmentdate
from
patients p
left join appointmentdetails a on p.patientid=a.patientid
group by
P.fullname;

2.--What's the total amount we've charged each patient?"
--Hint: Perform an INNER JOIN between Patients and Transactions to sum up the AmountCharged for each patient.
select * from transactions
select
p.fullname as patientname,
sum(t.amountcharged) as totalamountcharged
from 
patients p
inner join transactions t on p.patientid=t.patientid
group by
p.fullname;

--"Which medication do we prescribe the most, and how often?"
--Hint: Aggregate MedicationsPrescribed by MedicationName and count the instances.

select 
medicationname,
count(medicationname) as medicationcount
from medicationsprescribed
group by medicationname
order by medicationcount desc
limit 1;

3.--"How do we rank our patients by the number of their appointments?"
--Hint: Use a window function like ROW_NUMBER() over the count of appointments for each patient.
SELECT 
    P.FullName, 
    COUNT(A.AppointmentID) AS AppointmentCount,
    ROW_NUMBER() OVER (ORDER BY COUNT(A.AppointmentID) DESC) AS Rank
FROM 
    Patients P
LEFT JOIN 
    AppointmentDetails A ON P.PatientID = A.PatientID
GROUP BY 
    P.FullName;


4.--"Who are our patients that haven't booked any appointments yet?"
--Hint: Use a LEFT JOIN between Patients and AppointmentDetails and filter where appointment IDs are NULL.
SELECT 
    p.PatientID, 
    p.FullName
FROM 
    Patients p
LEFT JOIN 
    AppointmentDetails a ON p.PatientID = a.PatientID
WHERE 
    a.AppointmentID IS NULL;


5.--"Can we track the next appointment date for each patient?"
--Hint: Use the Lead() window function to get the previous appointment date for each patient, partitioned by patient ID.
select 
p.patientid,p.fullname, 
a.appointmentdate as currentappointmentdate,
lead(a.appointmentdate) over (partition by p.patientid order by a.appointmentdate) as nextappointmentdate
from 
patients p
inner join 
appointmentdetails a on p.patientid = a.patientid;



6.--"Which healthcare professionals haven't seen any patients?"
--Hint: Use a RIGHT JOIN between HealthcareProfessionals and AppointmentDetails and look for NULL values in the appointment data.
select 
h.professionalid, h.name
from
healthcareprofessionals h
left join 
appointmentdetails a on h.name = a.healthcareprofessional
where 
a.appointmentid is null;


7.--"Can we identify patients who had back-to-back appointments within a 30-day period?"
--Hint: Use the LEAD() function to compare dates between consecutive appointments for each patient.
select 
    a1.patientid, 
    a1.appointmentdate as firstappointmentdate, 
    a2.appointmentdate as nextappointmentdate
from 
    appointmentdetails a1
inner join 
    appointmentdetails a2 on a1.patientid = a2.patientid
where 
    a2.appointmentdate > a1.appointmentdate and 
    a2.appointmentdate <= date(a1.appointmentdate, '+30 days');

8.--"What's the average charge per appointment for each healthcare professional?"
--Hint: Join HealthcareProfessionals, AppointmentDetails, and Transactions, then calculate the average of AmountCharged.
select 
    a.healthcareprofessional, 
    avg(t.amountcharged) as averagecharge
from 
    appointmentdetails a
inner join 
    transactions t on a.patientid = t.patientid and a.appointmentdate = t.transactiondate
group by 
    a.healthcareprofessional;


Medication and Revenue Analysis

9.--Who's the last patient each healthcare professional saw, and when?"
--Hint: Use DENSE_RANK() over appointment dates partitioned by healthcare professionals.
select 
    a.healthcareprofessional, 
    a.patientid, 
    a.appointmentdate
from 
    appointmentdetails a
where 
(a.healthcareprofessional, a.appointmentdate) in (
select healthcareprofessional, 
max(appointmentdate)
from appointmentdetails
group by  healthcareprofessional);

--Which of our patients have been prescribed insulin?"
--Hint: Use a CASE WHEN statement in a query joining Patients and MedicationsPrescribed./ WHERE
select 
    distinct p.patientid, 
    p.fullname
from 
    patients p
inner join 
    appointmentdetails a on p.patientid = a.patientid
inner join 
    medicationsprescribed m on a.appointmentid = m.appointmentid
where 
    m.medicationname LIKE '%Insulin Glargine%' OR
    m.medicationname LIKE '%Insulin Aspart%' OR
    m.medicationname LIKE '%Insulin Detemir%' OR
    m.medicationname LIKE '%Insulin Lispro%';







10.--How can we calculate the total amount charged and the number of appointments for each patient?"
--Hint: Perform a self-join on the Transactions table to sum up charges and count appointments.
SELECT 
    p.PatientID,
    p.FullName AS PatientName,
    COUNT(DISTINCT a.AppointmentID) AS AppointmentCount,
    SUM(t.AmountCharged) AS TotalCharged
FROM 
    Transactions t
JOIN 
    AppointmentDetails a ON t.PatientID = a.PatientID
JOIN 
    Patients p ON t.PatientID = p.PatientID
GROUP BY 
    p.PatientID, p.FullName;




11.--Can we rank our healthcare professionals by the number of unique patients they've seen?"
--Hint: Use COUNT(DISTINCT) within a RANK() function, partitioned by healthcare professional.
select 
    healthcareprofessional, 
    count(distinct patientid) as uniquepatients,
    rank() over (order by count(distinct patientid) desc) as ranking
from 
    appointmentdetails
group by 
    healthcareprofessional;



























Advanced Analysis with Subqueries and CTEs

12.--How does each patient's appointment count compare to the clinic's average?"
--Hint: Use a CTE (Common Table Expression) to calculate the average appointment count, then compare individual counts to this average.(By comparison you have to make case when statements to categorize if its above average, below average or at par)

WITH PatientAppointmentCounts AS (
    SELECT 
        p.PatientID,
        p.FullName AS PatientName,
        COUNT(a.AppointmentID) AS AppointmentCount
    FROM 
        Patients p
    LEFT JOIN 
        AppointmentDetails a ON p.PatientID = a.PatientID
    GROUP BY 
        p.PatientID, p.FullName),
AverageAppointmentCount AS (
    SELECT 
        AVG(AppointmentCount) AS AvgAppointmentCount
    FROM 
        PatientAppointmentCounts)
sELECT 
    p.PatientID,
    p.PatientName,
    p.AppointmentCount,
    a.AvgAppointmentCount,
    CASE
        WHEN p.AppointmentCount > a.AvgAppointmentCount THEN 'Above Average'
        WHEN p.AppointmentCount < a.AvgAppointmentCount THEN 'Below Average'
        ELSE 'At Par'
    END AS Comparison
FROM 
    PatientAppointmentCounts p,
    AverageAppointmentCount a
ORDER BY 
p.PatientID;


















13.--For patients without transactions, can we ensure their total charged amount shows up as zero instead of NULL?"
--Hint: Use COALESCE() in a query that totals up charges for each patient, replacing NULL with 0.
select 
    p.patientid,
    p.fullname as patientname,
    coalesce(sum(t.amountcharged), 0) as totalcharged
from 
    patients p
left join 
    transactions t on p.patientid = t.patientid
group by 
    p.patientid, p.fullname
order by 
    p.patientid;


14.--What's the most common medication for each type of diabetes we treat?"
--Hint: Use CTEs to first count medication occurrences by diabetes type, then identify the highest count.
with MedicationCounts as (
    select 
        pr.diabetestype,
        mp.medicationname,
        count(*) as count
    from 
        patientrecords pr
    join 
        appointmentdetails ad on pr.patientid = ad.patientid
    join 
        medicationsprescribed mp on ad.appointmentid = mp.appointmentid
    group by 
        pr.diabetestype, mp.medicationname
),
MaxMedicationCounts as (
    select 
        diabetestype,
        medicationname,
        count,
        row_number() over (partition by diabetestype order by count desc) as rn
    from 
        MedicationCounts
)
select 
    diabetestype,
    medicationname,
    count
from 
    MaxMedicationCounts
where 
    rn = 1;






15.--Can we see the growth in appointment numbers from month to month?"
--Hint: Calculate the count of appointments per month, then use the LAG() function to find the difference from the previous month.

with MonthlyAppointments as (
    select 
        date_trunc('month', appointmentdate) as month,
        count(*) as appointment_count
    from 
        appointmentdetails
    group by 
        date_trunc('month', appointmentdate)
    order by 
        month
)
select 
    month,
    appointment_count,
    lag(appointment_count) over (order by month) as previous_month_count,
    (appointment_count - lag(appointment_count) over (order by month)) as growth
from 
    MonthlyAppointments;

16.--How do healthcare professionals' appointments and revenue compare?"
--Hint: Combine CTEs to aggregate appointment counts and total revenue for each professional, then compare.
with AppointmentsCount as (
    select 
        ad.healthcareprofessional,
        count(ad.appointmentid) as appointment_count
    from 
        appointmentdetails ad
    group by 
        ad.healthcareprofessional
),
RevenueSum as (
    select 
        ad.healthcareprofessional,
        sum(t.amountcharged) as total_revenue
    from 
        appointmentdetails ad
    join 
        transactions t on ad.patientid = t.patientid and ad.appointmentdate = t.transactiondate
    group by 
        ad.healthcareprofessional
)
select 
    ac.healthcareprofessional,
    ac.appointment_count,
    rs.total_revenue
from 
    AppointmentsCount ac
left join 
    RevenueSum rs on ac.healthcareprofessional = rs.healthcareprofessional;



17.--Which medications have seen a change in their prescribing rank from month to month?"
--Hint: Use CTEs to calculate monthly medication ranks, then compare these ranks month-over-month.

with MonthlyMedicationCounts as (
    select 
        date_trunc('month', a.appointmentdate)::date as month,
        m.medicationname,
        count(*) as prescription_count
    from 
        medicationsprescribed m
    join 
        appointmentdetails a on m.appointmentid = a.appointmentid
    group by 
        month, m.medicationname
),
RankedMedications as (
    select 
        month,
        medicationname,
        prescription_count,
        rank() over (partition by month order by prescription_count desc) as rank
    from 
        MonthlyMedicationCounts
),
RankChanges as (
    select 
        medicationname,
        month,
        rank,
        lag(rank) over (partition by medicationname order by month) as previous_rank
    from 
        RankedMedications
)
select 
    medicationname,
    month,
    rank,
    previous_rank,
    (rank - previous_rank) as rank_change
from 
    RankChanges
where 
    previous_rank is not null
order by 
    medicationname, month;











18.--Can we identify our top 3 most expensive services for each patient?"
--Hint: Use a window function like DENSE_RANK() to rank services by cost for each patient, and then filter to show only the top 3.
with RankedServices as (
    select 
        t.patientid,
        t.serviceprovided,
        t.amountcharged,
        t.transactiondate,
        dense_rank() over (
            partition by t.patientid 
            order by t.amountcharged desc
        ) as rank
    from 
        transactions t
)
select 
    rs.patientid,
    rs.serviceprovided,
    rs.amountcharged,
    rs.transactiondate
from 
    RankedServices rs
where 
    rs.rank <= 3
order by 
    rs.patientid, rs.rank;





























19.--Who is our most frequently seen patient in terms of prescriptions, and what medications have they been prescribed?"
--Hint: First, identify the patient with the highest count of prescriptions using a subquery or CTE, then list all medications prescribed to that patient.
with patientprescriptioncounts as (
    select 
        p.patientid,
        count(*) as prescription_count
    from 
        patients p
    join 
        medicationsprescribed m on p.patientid = m.appointmentid
    group by 
        p.patientid
),
toppatient as (
    select 
        patientid
    from 
        patientprescriptioncounts
    order by 
        prescription_count desc
    limit 1
)
select 
    p.fullname as patient_name,
    m.medicationname
from 
    patients p
join 
    medicationsprescribed m on p.patientid = m.appointmentid
join 
    toppatient tp on p.patientid = tp.patientid;



20.--How does our monthly revenue compare to the previous month?"
--Hint: Aggregate revenue by month, then use the LAG() function to compare each month's revenue to the previous month.*/
with monthlyrevenue as (
    select 
        date_trunc('month', transactiondate::date) as month,
        sum(amountcharged) as total_revenue
    from 
        transactions
    group by 
        date_trunc('month', transactiondate::date)
)
select 
    to_char(month, 'yyyy-mm-dd') as month,
    total_revenue,
    lag(total_revenue) over (order by month) as previous_month_revenue,
    (total_revenue - lag(total_revenue) over (order by month)) as revenue_change
from 
    monthlyrevenue
order by 
    month;