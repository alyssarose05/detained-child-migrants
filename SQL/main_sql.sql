# Original columns to keep
SELECT a.country, b.continent, gender, entry_date, release_date, sponsor_zipcode, sponsor_relationship,

  # Engineering: 20-day detainment
  DATE_DIFF(release_date, entry_date, DAY) AS days_detained, # raw days time

  CASE
    WHEN DATE_DIFF(release_date, entry_date, DAY) <= 20 THEN "<= 20 days"
    ELSE "> 21 days"
  END AS detainment_time, # court standards

  # Engineering: sponsor_closeness column
  CASE
    WHEN sponsor_category = 3 THEN "Distant"
    ELSE "Close"
  END AS sponsor_closeness
 
FROM x-fabric-463416-d1.detained_children.child_migrants AS a

# Get continents per country
LEFT JOIN x-fabric-463416-d1.continents.continents AS b
  ON a.country = b.country;