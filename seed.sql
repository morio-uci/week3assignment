INSERT INTO manufactures (name, url, octopart_uid) VALUES
('Texas Instruments', 'http://ti.com', '40f985f368ed933e'),
('TE Connectivity', 'http://www.te.com', 'b53d7037929566fa')
;

INSERT INTO parts (mpn, manufacture_id, octopart_uid) VALUES
('SN74S74N', (SELECT id FROM manufactures WHERE name = 'Texas Instruments'), '5ec397c9af088104'),
('206062-1', (SELECT id FROM manufactures WHERE name = 'TE Connectivity'), 'bd4d768f82c5628a')
;

INSERT INTO descriptions (description, source, octopart_uid) VALUES
('Dual D-Type Positive-Edge-Triggered Flip-Flops With Preset And Clear 14-PDIP 0 to 70', 'Texas Instruments', '40f985f368ed933e'),
('Cable Gland (Clamp); Series:CPC; For Use; Connector Shell Size:11; Colour:Black; Material:Thermoplastic; Operating Temperature Max:105°C; Operating Temperature Min:-55°C',
 'element14 APAC', '40f985f368ed933e')
;
