/* What is the toal amount of donation reviced by each given location ?*/
SELECT SUM(donation_amount) AS total_donations FROM donations WHERE location_id = 1;
SELECT SUM(donation_amount) AS total_donations FROM donations WHERE location_id = 2;
SELECT SUM(donation_amount) AS total_donations FROM donations WHERE location_id = 3;
SELECT SUM(donation_amount) AS total_donations FROM donations WHERE location_id = 4;
SELECT SUM(donation_amount) AS total_donations FROM donations WHERE location_id = 5;
/* The total amount of reccurring donations in each given location .*/

SELECT SUM(donation_amount) AS total_donations FROM donations
WHERE location_id = 1 AND recurring_donor_id IS NOT NULL;
SELECT SUM(donation_amount) AS total_donations FROM donations
WHERE location_id = 2 AND recurring_donor_id IS NOT NULL;
SELECT SUM(donation_amount) AS total_donations FROM donations
WHERE location_id = 3 AND recurring_donor_id IS NOT NULL;
SELECT SUM(donation_amount) AS total_donations FROM donations
WHERE location_id = 4 AND recurring_donor_id IS NOT NULL;
SELECT SUM(donation_amount) AS total_donations FROM donations
WHERE location_id = 5 AND recurring_donor_id IS NOT NULL;

/* show the total of amynous donations? show the total of reccuring donations?*/
SELECT SUM(donation_amount) AS total_anonymous_donations FROM donations WHERE recurring_donor_id IS NULL;
SELECT SUM(donation_amount) AS total_recurring_donations FROM donations WHERE recurring_donor_id IS NOT NULL;

 /*"Show me the number of donation count that we have from each location?*/
 SELECT location_id, COUNT(donation_amount) AS donation_count
FROM donations
GROUP BY location_id;

/* How much donations did each location make in between two dates ?*/

SELECT SUM(donation_amount), date_format(donation_date,'%M') as month, location_id FROM donations
WHERE donation_date between '2021-01-01' and '2021-12-31'
GROUP BY location_id
ORDER BY location_id ASC;
SELECT SUM(donation_amount), date_format(donation_date,'%M') as month, location_id FROM donations
WHERE donation_date between '2022-01-01' and '2022-02-01'
GROUP BY location_id
ORDER BY location_id ASC;

/* Who are the reccuring donors that cancalled their subscrpition?*/
SELECT last_name, active FROM recurring_donors
WHERE active = 0
ORDER BY last_name ASC;

/*As a recurring donor, show me a list of my donations?*/

SELECT recurring_donor_id, donation_amount, donation_date FROM donations
WHERE recurring_donor_id = 1
ORDER BY donation_date ASC;

SELECT recurring_donor_id, donation_amount, donation_date FROM donations
WHERE recurring_donor_id = 2
ORDER BY donation_date ASC;

/*The list of volunteer working in each location sorted by last name?*/

SELECT last_name, location_id FROM volunteers
WHERE terminal_date IS NULL
ORDER BY last_name ASC;