-- q.12145 'Canyon Chase' - H
-- q.12143 'Canyon Chase' - A
DELETE FROM dbscripts_on_quest_start WHERE id IN (12145,12143);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- Horde ver.
(12145,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(12145,2,10,27123,60000,1,0,0,0x08,1,0,0,0,4313.265,995.9698,79.79124,2.111848,'Summon Icefist Forager - 1'), -- 09:55:30.000
(12145,3,10,27123,60000,2,0,0,0x08,1,0,0,0,4330.316,984.91,92.30328,2.722714,'Summon Icefist Forager - 2'), -- 09:55:30.000
(12145,4,10,27123,60000,3,0,0,0x08,1,0,0,0,4345.756,1015.564,60.42601,2.111848,'Summon Icefist Forager - 3'), -- 09:55:30.000
(12145,1000,10,27123,60000,4,0,0,0x08,1,0,0,0,4416.708,1034.344,58.65321,3.385939,'Summon Icefist Forager - 4'), -- 09:55:31.000
(12145,12000,10,27123,60000,5,0,0,0x08,1,0,0,0,4230.561,1003.497,65.70464,2.042035,'Summon Icefist Forager - 5'), -- 09:55:44.000
(12145,12010,10,27123,60000,6,0,0,0x08,1,0,0,0,4168.553,991.8344,71.18243,1.134464,'Summon Icefist Forager - 6'), -- 09:55:44.000
(12145,12011,10,27123,60000,7,0,0,0x08,1,0,0,0,4163.933,998.8766,71.17763,0.9424778,'Summon Icefist Forager - 7'), -- 09:55:44.000
(12145,22000,10,27123,60000,8,0,0,0x08,1,0,0,0,4103.427,1102.507,65.25732,0.8552113,'Summon Icefist Forager - 8'), -- 09:55:55.000
(12145,23000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
-- Alliance ver.
(12143,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(12143,2,10,27123,90000,9,0,0,0x08,1,0,0,0,4601.1,6.11619,67.1905,5.26514,'Summon Icefist Forager - 9'), -- guessed (vids source) (no official data available)
(12143,3,10,27123,90000,10,0,0,0x08,1,0,0,0,4559.51,26.5202,79.3562,5.69632,'Summon Icefist Forager - 10'), -- guessed (vids source) (no official data available)
(12143,4,10,27123,90000,11,0,0,0x08,1,0,0,0,4641.7,25.7134,68.9939,5.23401,'Summon Icefist Forager - 11'), -- guessed (vids source) (no official data available)
(12143,15000,10,27123,90000,12,0,0,0x08,1,0,0,0,4673.17,-202.728,84.302,2.75216,'Summon Icefist Forager - 12'), -- guessed (vids source) (no official data available)
(12143,16000,10,27123,90000,13,0,0,0x08,1,0,0,0,4615.68,-168.147,88.1567,5.61886,'Summon Icefist Forager - 13'), -- guessed (vids source) (no official data available)
(12143,25000,10,27123,90000,14,0,0,0x08,1,0,0,0,4577.18,-284.68,97.9906,5.15156,'Summon Icefist Forager - 14'), -- guessed (vids source) (no official data available)
(12143,27000,10,27123,90000,15,0,0,0x08,1,0,0,0,4574.78,-290.554,95.3095,5.1555,'Summon Icefist Forager - 15'), -- guessed (vids source) (no official data available)
(12143,28000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET StartScript = 12145 WHERE entry = 12145;
UPDATE quest_template SET StartScript = 12143 WHERE entry = 12143;
DELETE FROM creature_movement_template WHERE entry = 27123;
INSERT INTO creature_movement_template (entry, pathID, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
-- pathID = 1
(27123,1,1,4313.265,995.9698,79.79124,2.111848,100,2712302),
(27123,1,2,4281.499,1028.617,60.10355,100,0,0),
(27123,1,3,4266.544,1037.31,58.72855,100,0,0),
(27123,1,4,4246.241,1036.688,58.72855,100,0,0),
(27123,1,5,4228.34,1020.669,58.72857,100,0,0),
(27123,1,6,4212.604,1016.96,58.72857,100,0,0),
(27123,1,7,4191.204,1023.97,59.76294,100,0,0),
(27123,1,8,4181.938,1037.017,63.02773,100,0,0),
(27123,1,9,4175.695,1049.875,61.52773,100,0,0),
(27123,1,10,4172.045,1068.166,60.39568,100,0,0),
(27123,1,11,4159.694,1082.155,58.72857,100,0,0),
(27123,1,12,4151.649,1106.468,58.72856,100,0,0),
(27123,1,13,4139.93,1115.363,58.72856,100,0,0),
(27123,1,14,4132.275,1146.914,59.10357,100,0,0),
(27123,1,15,4133.7,1162.984,59.35357,100,0,0),
(27123,1,16,4136.496,1177.822,58.72857,100,0,0),
(27123,1,17,4144.663,1191.412,58.72857,100,0,0),
(27123,1,18,4147.247,1212.832,58.72856,100,0,0),
(27123,1,19,4143.614,1232.586,59.10356,100,0,0),
(27123,1,20,4127.23,1246.478,63.25221,100,0,0),
(27123,1,21,4099.447,1248.185,57.13788,100,0,0),
(27123,1,22,4067.947,1243.27,60.38788,100,0,0),
(27123,1,23,4042.615,1228.355,58.36764,100,0,0),
(27123,1,24,4047.04,1207.895,71.86764,100,0,0),
(27123,1,25,4059.529,1191.017,82.262,100,0,0),
(27123,1,26,4055.043,1175.617,90.137,100,2000,2712301),
-- pathID = 2
(27123,2,1,4322.967,988.0854,92.29488,100,0,0),
(27123,2,2,4328.207,993.9152,94.41988,100,0,0),
(27123,2,3,4326.991,975.4749,89.91988,100,0,0),
(27123,2,4,4318.64,973.0121,84.29488,100,0,0),
(27123,2,5,4281,1027.707,60.10355,100,0,0),
(27123,2,6,4250.929,1034.35,59.35355,100,0,0),
(27123,2,7,4240.4,1029.646,59.10355,100,0,0),
(27123,2,8,4218.276,1014.784,59.85357,100,0,0),
(27123,2,9,4203.654,1014.239,58.72857,100,0,0),
(27123,2,10,4181.686,1032.118,62.63794,100,0,0),
(27123,2,11,4173.535,1049.815,62.65273,100,0,0),
(27123,2,12,4169.042,1066.944,61.39568,100,0,0),
(27123,2,13,4152.711,1088.759,58.72857,100,0,0),
(27123,2,14,4150.244,1104.425,59.22856,100,0,0),
(27123,2,15,4138.253,1115.002,58.72856,100,0,0),
(27123,2,16,4128.292,1143.303,59.22857,100,0,0),
(27123,2,17,4132.983,1160.934,59.72857,100,0,0),
(27123,2,18,4133.298,1178.011,58.87008,100,0,0),
(27123,2,19,4142.796,1190.158,58.72857,100,0,0),
(27123,2,20,4144.837,1209.633,58.85356,100,0,0),
(27123,2,21,4145.194,1225.875,58.97856,100,0,0),
(27123,2,22,4134.307,1239.377,61.95374,100,0,0),
(27123,2,23,4125.436,1245.301,62.62721,100,0,0),
(27123,2,24,4106.103,1248.114,57.00221,100,0,0),
(27123,2,25,4072.825,1244.969,59.76288,100,0,0),
(27123,2,26,4048.08,1233.223,59.86764,100,0,0),
(27123,2,27,4042.829,1220.31,62.49264,100,0,0),
(27123,2,28,4055.401,1199.989,79.137,100,0,0),
(27123,2,29,4066.553,1190.364,83.387,100,0,0),
(27123,2,30,4078.68,1194.92,86.26676,100,2000,2712301),
-- pathID = 3
(27123,3,1,4319.896,1036.352,61.19946,100,0,0),
(27123,3,2,4273.891,1043.819,58.72855,100,0,0),
(27123,3,3,4254.255,1039.997,58.72855,100,0,0),
(27123,3,4,4238.062,1034.904,58.85355,100,0,0),
(27123,3,5,4222.542,1020.991,58.72857,100,0,0),
(27123,3,6,4205.974,1021.767,58.85357,100,0,0),
(27123,3,7,4187.069,1030.894,59.63794,100,0,0),
(27123,3,8,4181.385,1041.104,62.65273,100,0,0),
(27123,3,9,4176.334,1055.864,61.40273,100,0,0),
(27123,3,10,4170.788,1074.637,59.52068,100,0,0),
(27123,3,11,4158.18,1093.064,58.72857,100,0,0),
(27123,3,12,4153.063,1113.667,58.72856,100,0,0),
(27123,3,13,4141.129,1127.829,58.72856,100,0,0),
(27123,3,14,4135.186,1143.964,58.72857,100,0,0),
(27123,3,15,4136.573,1160.374,58.72857,100,0,0),
(27123,3,16,4146.834,1184.291,58.72857,100,0,0),
(27123,3,17,4150.377,1209.481,58.72856,100,0,0),
(27123,3,18,4148.151,1226.08,58.72856,100,0,0),
(27123,3,19,4142.55,1238.528,60.82874,100,0,0),
(27123,3,20,4123.581,1250.761,64.25221,100,0,0),
(27123,3,21,4081.023,1246.168,57.76288,100,0,0),
(27123,3,22,4042.879,1230.201,58.61764,100,0,0),
(27123,3,23,4047.405,1210.316,70.74264,100,0,0),
(27123,3,24,4067.625,1191.178,83.26676,100,0,0),
(27123,3,25,4075.368,1195.681,86.01676,100,2000,2712301),
-- pathID = 4
(27123,4,1,4378.881,1033.621,62.48933,100,0,0),
(27123,4,2,4363.987,1035.983,58.72855,100,0,0),
(27123,4,3,4339.299,1056.357,60.60355,100,0,0),
(27123,4,4,4294.114,1054.019,66.72855,100,0,0),
(27123,4,5,4270.526,1050.6,58.72855,100,0,0),
(27123,4,6,4246.915,1042.048,59.10355,100,0,0),
(27123,4,7,4232.315,1032.562,58.85357,100,0,0),
(27123,4,8,4218.651,1022.737,58.72857,100,0,0),
(27123,4,9,4196.972,1028.068,58.88794,100,0,0),
(27123,4,10,4182.511,1039.707,62.40273,100,0,0),
(27123,4,11,4177.401,1062.443,61.90273,100,0,0),
(27123,4,12,4171.057,1082.095,60.14568,100,0,0),
(27123,4,13,4159.934,1095.615,59.10357,100,0,0),
(27123,4,14,4154.304,1112.002,59.10356,100,0,0),
(27123,4,15,4142.463,1133.141,58.72856,100,0,0),
(27123,4,16,4139.214,1163.858,58.72857,100,0,0),
(27123,4,17,4148.851,1181.956,58.72857,100,0,0),
(27123,4,18,4149.838,1201.038,58.72856,100,0,0),
(27123,4,19,4155.872,1211.749,58.72856,100,0,0),
(27123,4,20,4149.8,1224.493,58.72856,100,0,0),
(27123,4,21,4146.505,1239.127,61.57874,100,0,0),
(27123,4,22,4117.249,1255.481,65.37721,100,0,0),
(27123,4,23,4091.59,1251.41,57.63788,100,0,0),
(27123,4,24,4057.804,1243.158,61.86764,100,0,0),
(27123,4,25,4022.877,1227.365,55.64209,100,0,0),
(27123,4,26,3986.324,1217.049,57.37307,100,0,0),
(27123,4,27,3939.302,1218.748,55.6368,100,0,0),
(27123,4,28,3911.355,1210.558,55.51709,100,0,0),
(27123,4,29,3889.046,1190.469,55.64207,100,0,0),
(27123,4,30,3880.986,1164.328,55.51707,100,2000,2712301),
-- pathID = 5
(27123,5,1,4193.468,1028.561,59.01294,100,0,0),
(27123,5,2,4182.341,1039.632,62.40273,100,0,0),
(27123,5,3,4174.864,1069.367,61.02068,100,0,0),
(27123,5,4,4155.993,1101.577,58.72856,100,0,0),
(27123,5,5,4141.313,1132.556,58.72856,100,0,0),
(27123,5,6,4137.354,1162.649,58.72857,100,0,0),
(27123,5,7,4147.569,1196.433,58.72857,100,0,0),
(27123,5,8,4152.825,1213.057,58.72856,100,0,0),
(27123,5,9,4147.374,1234.474,59.57874,100,0,0),
(27123,5,10,4128.367,1250.104,66.00221,100,0,0),
(27123,5,11,4111.331,1254.009,61.50221,100,0,0),
(27123,5,12,4078.863,1249.451,58.38788,100,0,0),
(27123,5,13,4046.583,1238.642,59.99264,100,0,0),
(27123,5,14,4020.138,1229.75,55.64209,100,0,0),
(27123,5,15,3992.425,1217.703,56.74807,100,0,0),
(27123,5,16,3955.26,1222.691,55.7618,100,0,0),
(27123,5,17,3919.169,1218.858,55.64209,100,0,0),
(27123,5,18,3886.08,1191.013,55.64207,100,2000,2712301),
-- pathID = 6
(27123,6,1,4184.451,1028.553,60.38794,100,100,2712302),
(27123,6,2,4181.317,1039.463,62.77773,100,0,0),
(27123,6,3,4170.449,1073.183,59.64568,100,0,0),
(27123,6,4,4159.53,1089.224,58.72857,100,0,0),
(27123,6,5,4153.312,1105.851,58.72856,100,0,0),
(27123,6,6,4138.694,1130.464,58.72856,100,0,0),
(27123,6,7,4134.217,1148.997,58.72857,100,0,0),
(27123,6,8,4140.676,1178.986,58.72857,100,0,0),
(27123,6,9,4145.344,1186.279,58.72857,100,0,0),
(27123,6,10,4146.936,1206.194,58.72856,100,0,0),
(27123,6,11,4146.723,1226.646,58.72856,100,0,0),
(27123,6,12,4137.571,1241.836,62.70374,100,0,0),
(27123,6,13,4120.405,1249.97,62.62721,100,0,0),
(27123,6,14,4088.05,1245.514,57.38788,100,0,0),
(27123,6,15,4065.8,1241.508,60.49264,100,0,0),
(27123,6,16,4027.857,1222.219,56.76709,100,0,0),
(27123,6,17,3996.357,1216.625,57.37307,100,0,0),
(27123,6,18,3965.927,1216.681,58.7618,100,0,0),
(27123,6,19,3928.592,1217.335,55.89209,100,0,0),
(27123,6,20,3911.03,1208.728,55.51709,100,0,0),
(27123,6,21,3892.181,1192.275,55.64207,100,2000,2712301),
-- pathID = 7
(27123,7,1,4181.709,1029.487,62.01294,100,0,0),
(27123,7,2,4180.175,1037.066,64.27773,100,0,0),
(27123,7,3,4173.346,1049.078,62.65273,100,0,0),
(27123,7,4,4170.065,1065.562,61.52773,100,0,0),
(27123,7,5,4151.841,1090.658,59.60357,100,0,0),
(27123,7,6,4149.746,1103.58,60.22856,100,0,0),
(27123,7,7,4139.397,1113.433,58.85356,100,0,0),
(27123,7,8,4127.913,1143.044,59.60357,100,0,0),
(27123,7,9,4132.871,1160.147,59.72857,100,0,0),
(27123,7,10,4138.307,1185.326,59.10357,100,0,0),
(27123,7,11,4143.889,1210.304,59.10356,100,0,0),
(27123,7,12,4136.538,1237.169,61.07874,100,0,0),
(27123,7,13,4118.392,1246.354,61.12721,100,0,0),
(27123,7,14,4077.203,1245.106,58.51288,100,0,0),
(27123,7,15,4054.458,1236.578,60.74264,100,0,0),
(27123,7,16,4041.024,1224.969,59.49264,100,0,0),
(27123,7,17,4048.813,1207.143,72.86764,100,0,0),
(27123,7,18,4061.705,1187.002,83.887,100,0,0),
(27123,7,19,4052.551,1181.171,89.137,100,2000,2712301),
-- pathID = 8
(27123,8,1,4130.419,1144.939,59.10357,100,0,0),
(27123,8,2,4135.212,1179.624,58.85357,100,0,0),
(27123,8,3,4143.397,1193.136,58.72857,100,0,0),
(27123,8,4,4145.525,1219.661,58.85356,100,0,0),
(27123,8,5,4141.962,1232.024,59.22856,100,0,0),
(27123,8,6,4129.105,1242.275,63.00221,100,0,0),
(27123,8,7,4116.168,1246.492,60.50221,100,0,0),
(27123,8,8,4083.119,1244.47,57.51288,100,0,0),
(27123,8,9,4059.549,1238.301,60.86764,100,0,0),
(27123,8,10,4043.064,1223.997,60.11764,100,0,0),
(27123,8,11,4050.74,1209.069,72.99264,100,0,0),
(27123,8,12,4064.5,1193.196,82.512,100,0,0),
(27123,8,13,4074.345,1197.219,86.51676,100,2000,2712301),
-- pathID = 9 - official data missing
(27123,9,1,4601.1,6.11619,67.1905,5.26514,100,2712302),
(27123,9,2,4617.29,-7.50727,68.5603,100,0,0),
(27123,9,3,4637.27,-22.3236,68.7322,100,0,0),
(27123,9,4,4650.15,-34.1644,68.8048,100,0,0),
(27123,9,5,4660.46,-43.637,67.4379,100,0,0),
(27123,9,6,4670.57,-53.4534,68.6739,100,0,0),
(27123,9,7,4679.55,-63.7284,68.734,100,0,0),
(27123,9,8,4686.66,-74.6893,68.8551,100,0,0),
(27123,9,9,4690.09,-83.5721,70.5501,100,0,0),
(27123,9,10,4687.1,-88.5971,71.399,100,0,0),
(27123,9,11,4677.78,-99.0551,72.1128,100,0,0),
(27123,9,12,4677.13,-108.584,74.4725,100,0,0),
(27123,9,13,4678.68,-121.22,74.9283,100,0,0),
(27123,9,14,4679.67,-133.962,72.9783,100,0,0),
(27123,9,15,4676.84,-146.646,73.0155,100,0,0),
(27123,9,16,4667.27,-160.215,73.3089,100,0,0),
(27123,9,17,4656.14,-178.022,75.1911,100,0,0),
(27123,9,18,4648.99,-194.604,76.1435,100,0,0),
(27123,9,19,4646.2,-205.556,77.8875,100,0,0),
(27123,9,20,4641.8,-224.041,78.1444,100,0,0),
(27123,9,21,4637.86,-237.475,79.5066,100,0,0),
(27123,9,22,4630.63,-259.845,82.9663,100,0,0),
(27123,9,23,4625.75,-274.445,81.7416,100,0,0),
(27123,9,24,4622.02,-284.261,81.2985,100,0,0),
(27123,9,25,4616.1,-297.484,81.968,100,0,0),
(27123,9,26,4605.89,-314.346,82.3579,100,0,0),
(27123,9,27,4600.12,-328.369,82.9461,100,0,0),
(27123,9,28,4594.04,-344.908,83.6373,100,0,0),
(27123,9,29,4589.08,-361.69,84.0452,100,0,0),
(27123,9,30,4583.38,-377.902,83.479,100,0,0),
(27123,9,31,4576,-391.367,83.2039,100,0,0),
(27123,9,32,4566.47,-403.14,82.6592,100,0,0),
(27123,9,33,4558.24,-410.54,81.9135,100,0,0),
(27123,9,34,4538.06,-420.476,81.114,100,0,0),
(27123,9,35,4522.2,-424.367,80.6196,100,0,0),
(27123,9,36,4501.75,-429.732,79.7381,100,0,0),
(27123,9,37,4488.53,-434.347,78.9805,100,0,0),
(27123,9,38,4468.71,-441.271,78.3311,100,0,0),
(27123,9,39,4461.23,-449.154,78.5709,100,0,0),
(27123,9,40,4456.91,-463.068,81.0046,100,0,0),
(27123,9,41,4451.19,-474.488,83.4316,100,0,0),
(27123,9,42,4442.45,-481.682,87.2183,100,0,0),
(27123,9,43,4424.07,-496.074,84.447,100,2000,2712301),
-- pathID = 10 - official data missing
(27123,10,1,4578.09,17.1116,78.8409,100,0,0),
(27123,10,2,4592.48,9.8513,76.9548,100,0,0),
(27123,10,3,4597.58,5.3505,67.2222,100,0,0),
(27123,10,4,4616.1,-10.6776,68.855,100,0,0),
(27123,10,5,4637.19,-29.0571,69.502,100,0,0),
(27123,10,6,4655.14,-45.7331,68.021,100,0,0),
(27123,10,7,4672.89,-63.6816,68.9043,100,0,0),
(27123,10,8,4689.73,-83.2568,70.4941,100,0,0),
(27123,10,9,4685.79,-90.8967,71.8607,100,0,0),
(27123,10,10,4678.69,-104.854,74.2344,100,0,0),
(27123,10,11,4678.02,-121.431,75.1426,100,0,0),
(27123,10,12,4675.49,-142.257,73.6645,100,0,0),
(27123,10,13,4666.16,-164.485,73.4524,100,0,0),
(27123,10,14,4657.42,-183.577,75.8838,100,0,0),
(27123,10,15,4651.7,-196.351,76.9859,100,0,0),
(27123,10,16,4646.35,-215.296,77.5585,100,0,0),
(27123,10,17,4641.62,-232.136,79.0091,100,0,0),
(27123,10,18,4636.11,-248.742,81.3667,100,0,0),
(27123,10,19,4630.83,-263.687,83.0436,100,0,0),
(27123,10,20,4624.82,-280.125,81.6303,100,0,0),
(27123,10,21,4620.02,-293.275,81.8531,100,0,0),
(27123,10,22,4612.43,-309.016,82.3382,100,0,0),
(27123,10,23,4603.2,-327.87,83.0828,100,0,0),
(27123,10,24,4596.28,-344.117,83.8177,100,0,0),
(27123,10,25,4589.36,-360.184,84.1025,100,0,0),
(27123,10,26,4581.82,-375.971,83.2513,100,0,0),
(27123,10,27,4573.01,-391.077,83.0484,100,0,0),
(27123,10,28,4559.4,-405.804,82.2937,100,0,0),
(27123,10,29,4541.3,-416.068,81.156,100,0,0),
(27123,10,30,4517.4,-424.828,80.2485,100,0,0),
(27123,10,31,4497.84,-432.46,79.6679,100,0,0),
(27123,10,32,4481.59,-438.925,78.5355,100,0,0),
(27123,10,33,4460.1,-441.387,78.234,100,0,0),
(27123,10,34,4447.58,-439.033,80.2335,100,0,0),
(27123,10,35,4429.61,-431.552,81.4473,100,2000,2712301),
-- pathID = 11 - official data missing
(27123,11,1,4647.65,14.0747,69.7443,100,0,0),
(27123,11,2,4658.67,-7.80588,67.4412,100,0,0),
(27123,11,3,4664.81,-20.3889,66.8685,100,0,0),
(27123,11,4,4671.91,-36.3752,66.8818,100,0,0),
(27123,11,5,4676.15,-45.9814,67.7724,100,0,0),
(27123,11,6,4681.93,-59.5211,68.5375,100,0,0),
(27123,11,7,4685.74,-69.3031,68.5021,100,0,0),
(27123,11,8,4688.8,-83.393,71.1269,100,0,0),
(27123,11,9,4685.17,-92.3679,72.2881,100,0,0),
(27123,11,10,4680.61,-104.033,75.6988,100,0,0),
(27123,11,11,4678.15,-116.614,75.3308,100,0,0),
(27123,11,12,4677.53,-128.18,74.3304,100,0,0),
(27123,11,13,4676.2,-142.1,73.5076,100,0,0),
(27123,11,14,4672.48,-153.805,73.025,100,0,0),
(27123,11,15,4661.38,-171.022,74.0678,100,0,0),
(27123,11,16,4651.71,-187.393,75.9011,100,0,0),
(27123,11,17,4645.9,-196.166,76.5313,100,0,0),
(27123,11,18,4643.95,-206.479,78.6647,100,0,0),
(27123,11,19,4642.55,-213.334,77.8929,100,0,0),
(27123,11,20,4639.41,-226.972,78.4133,100,0,0),
(27123,11,21,4635.93,-240.518,80.0086,100,0,0),
(27123,11,22,4629.32,-259.433,83.1122,100,0,0),
(27123,11,23,4623.3,-275.864,81.3503,100,0,0),
(27123,11,24,4615.82,-291.666,81.5107,100,0,0),
(27123,11,25,4605.42,-309.881,82.0362,100,0,0),
(27123,11,26,4597.88,-325.659,82.7963,100,0,0),
(27123,11,27,4592.92,-340.522,83.1812,100,0,0),
(27123,11,28,4587.7,-357.209,84.06,100,0,0),
(27123,11,29,4580.36,-374.331,83.0015,100,0,0),
(27123,11,30,4568.29,-395.634,82.9619,100,0,0),
(27123,11,31,4554.6,-408.056,81.9421,100,0,0),
(27123,11,32,4539.15,-418.749,81.1437,100,0,0),
(27123,11,33,4520.02,-427.561,80.8202,100,0,0),
(27123,11,34,4500.47,-435.216,80.4262,100,0,0),
(27123,11,35,4484.1,-441.391,78.6837,100,0,0),
(27123,11,36,4471.1,-446.582,78.8881,100,0,0),
(27123,11,37,4460.85,-456.598,79.9976,100,0,0),
(27123,11,38,4451.42,-471.837,83.0323,100,0,0),
(27123,11,39,4439.14,-482.245,87.264,100,2000,2712301),
-- pathID = 12 - official data missing
(27123,12,1,4651.68,-196.792,77.1326,100,0,0),
(27123,12,2,4646.13,-207.686,77.8376,100,0,0),
(27123,12,3,4642.3,-221.147,77.9809,100,0,0),
(27123,12,4,4638,-234.274,79.0953,100,0,0),
(27123,12,5,4634.88,-243.676,80.5795,100,0,0),
(27123,12,6,4630.8,-256.23,82.8078,100,0,0),
(27123,12,7,4623.9,-276.061,81.4379,100,0,0),
(27123,12,8,4619.46,-289.339,81.448,100,0,0),
(27123,12,9,4611.14,-306.855,82.1298,100,0,0),
(27123,12,10,4601.55,-325.534,82.8796,100,0,0),
(27123,12,11,4593.71,-343.81,83.4899,100,0,0),
(27123,12,12,4588.87,-356.933,84.051,100,0,0),
(27123,12,13,4577.59,-385.402,83.1425,100,0,0),
(27123,12,14,4569.08,-399.196,82.999,100,0,0),
(27123,12,15,4549.57,-411.054,81.3949,100,0,0),
(27123,12,16,4533.3,-417.428,81.448,100,0,0),
(27123,12,17,4514.05,-421.94,79.7998,100,0,0),
(27123,12,18,4493.96,-428.023,79.2456,100,0,0),
(27123,12,19,4477.45,-433.833,78.9541,100,0,0),
(27123,12,20,4461.91,-437.964,78.6771,100,0,0),
(27123,12,21,4449.36,-438.816,79.5345,100,0,0),
(27123,12,22,4425.26,-434.923,82.6886,100,2000,2712301),
-- pathID = 13 - official data missing
(27123,13,1,4626.63,-175.12,80.6579,100,0,0),
(27123,13,2,4638.06,-186.879,77.5333,100,0,0),
(27123,13,3,4642.07,-193.442,77.1571,100,0,0),
(27123,13,4,4645.04,-205.458,78.2708,100,0,0),
(27123,13,5,4643.9,-217.98,77.8112,100,0,0),
(27123,13,6,4643.19,-231.942,79.2179,100,0,0),
(27123,13,7,4641.25,-241.296,80.3859,100,0,0),
(27123,13,8,4636.73,-254.808,82.0466,100,0,0),
(27123,13,9,4632.57,-264.436,83.4373,100,0,0),
(27123,13,10,4627.68,-277.544,82.0831,100,0,0),
(27123,13,11,4622.14,-290.392,81.8356,100,0,0),
(27123,13,12,4615.8,-302.86,82.2241,100,0,0),
(27123,13,13,4606.37,-321.585,82.8605,100,0,0),
(27123,13,14,4601.27,-334.048,83.2057,100,0,0),
(27123,13,15,4593.03,-353.346,83.9398,100,0,0),
(27123,13,16,4587.12,-366.038,83.8395,100,0,0),
(27123,13,17,4578.27,-382.096,83.0805,100,0,0),
(27123,13,18,4570.01,-393.385,82.9601,100,0,0),
(27123,13,19,4560.13,-402.828,82.8975,100,0,0),
(27123,13,20,4547.09,-414.493,81.1719,100,0,0),
(27123,13,21,4536.06,-422.02,81.1339,100,0,0),
(27123,13,22,4515.48,-430.502,80.9422,100,0,0),
(27123,13,23,4502.42,-435.545,80.7884,100,0,0),
(27123,13,24,4489.36,-440.588,78.9648,100,0,0),
(27123,13,25,4473.09,-447.002,79.3778,100,0,0),
(27123,13,26,4463.53,-457.147,80.1327,100,0,0),
(27123,13,27,4452.43,-473.404,82.8711,100,0,0),
(27123,13,28,4442.56,-483.308,87.5412,100,0,0),
(27123,13,29,4431.38,-496.694,86.7969,100,2000,2712301),
-- pathID = 14 - official data missing
(27123,14,1,4582.86,-296.268,89.4266,5.1123,100,2712302),
(27123,14,2,4587.31,-312.521,85.2474,100,0,0),
(27123,14,3,4589.1,-326.404,83.5939,100,0,0),
(27123,14,4,4589.85,-343.345,83.1595,100,0,0),
(27123,14,5,4588.43,-356.919,84.0496,100,0,0),
(27123,14,6,4586.51,-370.768,83.7382,100,0,0),
(27123,14,7,4584.75,-382.537,83.6699,100,0,0),
(27123,14,8,4578.02,-395.036,83.5105,100,0,0),
(27123,14,9,4567.78,-405.569,82.702,100,0,0),
(27123,14,10,4554.83,-413.534,81.7201,100,0,0),
(27123,14,11,4541.35,-419.384,81.1631,100,0,0),
(27123,14,12,4528.36,-424.605,81.0559,100,0,0),
(27123,14,13,4515.28,-429.611,80.7486,100,0,0),
(27123,14,14,4495.61,-436.958,79.8737,100,0,0),
(27123,14,15,4482.54,-441.978,78.6446,100,0,0),
(27123,14,16,4472.78,-445.837,78.6292,100,0,0),
(27123,14,17,4463,-453.815,79.4921,100,0,0),
(27123,14,18,4456.4,-461.973,81.2258,100,0,0),
(27123,14,19,4449.03,-469.443,84.1329,100,0,0),
(27123,14,20,4441.21,-476.45,87.004,100,0,0),
(27123,14,21,4429.73,-487.837,85.8229,100,2000,2712301),
-- pathID = 15 - official data missing
(27123,15,1,4580.04,-299.634,89.2344,100,0,0),
(27123,15,2,4585.86,-314.299,86.1503,100,0,0),
(27123,15,3,4588.48,-329.304,83.5186,100,0,0),
(27123,15,4,4588.41,-343.981,83.0703,100,0,0),
(27123,15,5,4585.59,-358.31,84.5987,100,0,0),
(27123,15,6,4581.88,-371.806,83.1236,100,0,0),
(27123,15,7,4576.76,-381.838,82.9551,100,0,0),
(27123,15,8,4568.52,-397.273,82.9631,100,0,0),
(27123,15,9,4558.94,-407.186,82.0153,100,0,0),
(27123,15,10,4545.01,-416.767,81.1382,100,0,0),
(27123,15,11,4530,-422.53,81.0476,100,0,0),
(27123,15,12,4513.45,-428.208,80.3776,100,0,0),
(27123,15,13,4500.34,-433.107,79.9957,100,0,0),
(27123,15,14,4483.95,-439.227,78.645,100,0,0),
(27123,15,15,4464.75,-442.035,78.2403,100,0,0),
(27123,15,16,4450.46,-441.415,79.3385,100,0,0),
(27123,15,17,4443.55,-440.316,82.4109,100,0,0),
(27123,15,18,4427.12,-439.142,84.0822,100,2000,2712301);
UPDATE creature_template SET MovementType = 2 WHERE Entry = 27123;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2712301,2712302);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2712301,10,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(2712301,500,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'desp'),
(2712302,50,0,0,0,0,0,0,0,2000020451,2000020452,2000020453,2000020454,0,0,0,0,'random text');
DELETE FROM dbscripts_on_creature_death WHERE id = 27123; 
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(27123,0,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020451 AND 2000020454;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020451, 'Run away!', 0, 0, 0, 0, NULL),
(2000020452, 'I don\'t wanna die!', 0, 0, 0, 0, NULL),
(2000020453, 'Big guy will save us!', 0, 0, 0, 0, NULL),
(2000020454, 'They\'re everywhere!', 0, 0, 0, 0, NULL);