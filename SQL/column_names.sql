SELECT `ID` AS id,
  `Child's Country of Origin` AS country,
  `Child's Gender` AS gender,
  `Child's Date of Entry` AS entry_date,
  `Child's Date of Release` AS release_date,
  `Sponsor Zipcode` AS sponsor_zipcode,
  `Sponsor Category` AS sponsor_category,
  `Relationship of Sponsor` AS sponsor_relationship

FROM x-fabric-463416-d1.detained_children.detained_children;