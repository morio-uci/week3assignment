-- Get a manufactures name from a uid from the Octopart API
SELECT name FROM manufactures WHERE octopart_uid = '40f985f368ed933e';
-- Get all parts with their manufacture's part number, manufactures name, and the url for the manufacturer
SELECT p.mpn, m.name, m.url
FROM parts AS p
    LEFT JOIN manufactures AS m
        ON p.manufacture_id = m.id;
