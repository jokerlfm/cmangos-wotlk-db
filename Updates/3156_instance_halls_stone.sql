
-- fix spell script targets
DELETE FROM spell_script_target WHERE entry IN (50790,50791,50793,50794,50802,50803,50825,50826);
INSERT INTO spell_script_target VALUES
(50790,0,192163,0),
(50790,3,5990141,0),
(50791,0,192164,0),
(50791,3,5990140,0),
(50793,0,192163,0),
(50793,3,5990141,0),
(50794,0,192164,0),
(50794,3,5990140,0),
(50802,0,192163,0),
(50802,3,5990141,0),
(50803,0,192164,0),
(50803,3,5990140,0),
(50825,0,192163,0),
(50825,3,5990141,0),
(50826,0,192164,0),
(50826,3,5990140,0);

-- missing movement for spawned adds
DELETE FROM `creature_movement_template` WHERE entry IN (27979,27982,27981,27980);
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
-- Forged Iron Trogg 27979
(27979,0,1,1294.558594,724.552917,199.358749,100,0,0),
(27979,0,2,1294.440918,720.004517,196.552719,100,0,0),
(27979,0,3,1294.122314,712.838623,196.508331,100,0,0),
(27979,0,4,1294.169189,691.502502,189.906830,100,0,0),
(27979,0,5,1293.723022,667.221008,189.607651,100,1000,7),
(27979,1,1,1293.861938,609.842773,199.346863,100,0,0),
(27979,1,2,1294.167969,614.152771,196.552521,100,0,0),
(27979,1,3,1294.221802,620.472046,196.552856,100,0,0),
(27979,1,4,1294.085938,642.811707,189.785004,100,0,0),
(27979,1,5,1293.723022,667.221008,189.607651,100,1000,7),
-- Forged Iron Dwarf 27982
(27982,0,1,1294.558594,724.552917,199.358749,100,0,0),
(27982,0,2,1294.440918,720.004517,196.552719,100,0,0),
(27982,0,3,1294.122314,712.838623,196.508331,100,0,0),
(27982,0,4,1294.169189,691.502502,189.906830,100,0,0),
(27982,0,5,1293.723022,667.221008,189.607651,100,1000,7),
(27982,1,1,1293.861938,609.842773,199.346863,100,0,0),
(27982,1,2,1294.167969,614.152771,196.552521,100,0,0),
(27982,1,3,1294.221802,620.472046,196.552856,100,0,0),
(27982,1,4,1294.085938,642.811707,189.785004,100,0,0),
(27982,1,5,1293.723022,667.221008,189.607651,100,1000,7),
-- Malformed Ooze 27981
(27981,0,1,1294.558594,724.552917,199.358749,100,0,0),
(27981,0,2,1294.440918,720.004517,196.552719,100,0,0),
(27981,0,3,1294.122314,712.838623,196.508331,100,0,0),
(27981,0,4,1294.169189,691.502502,189.906830,100,0,0),
(27981,0,5,1293.723022,667.221008,189.607651,100,1000,7),
(27981,1,1,1293.861938,609.842773,199.346863,100,0,0),
(27981,1,2,1294.167969,614.152771,196.552521,100,0,0),
(27981,1,3,1294.221802,620.472046,196.552856,100,0,0),
(27981,1,4,1294.085938,642.811707,189.785004,100,0,0),
(27981,1,5,1293.723022,667.221008,189.607651,100,1000,7),
-- Earthen Dwarf 27980
(27980,0,1,1294.558594,724.552917,199.358749,100,0,0),
(27980,0,2,1294.440918,720.004517,196.552719,100,0,0),
(27980,0,3,1294.122314,712.838623,196.508331,100,0,0),
(27980,0,4,1294.169189,691.502502,189.906830,100,0,0),
(27980,0,5,1293.723022,667.221008,189.607651,100,1000,2798001),
(27980,1,1,1293.861938,609.842773,199.346863,100,0,0),
(27980,1,2,1294.167969,614.152771,196.552521,100,0,0),
(27980,1,3,1294.221802,620.472046,196.552856,100,0,0),
(27980,1,4,1294.085938,642.811707,189.785004,100,0,0),
(27980,1,5,1293.723022,667.221008,189.607651,100,1000,2798001);

-- creature movement scripts
DELETE FROM dbscripts_on_creature_movement WHERE id IN (192163,192163);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(2798001,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Earthen Dwarf - pause WP Movement'),
(2798001,0,25,0,0,0,27978,100,0,0,0,0,0,0,0,0,0,'Earthen Dwarf - attack Sjonnir');

-- Go use scripts
DELETE FROM dbscripts_on_go_template_use WHERE id IN (192163,192164);
INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(192163,0,13,0,0,0,0,0,8,0,0,0,0,0,0,0,0,'Left Pipe - send custom anim'),
(192164,0,13,0,0,0,0,0,8,0,0,0,0,0,0,0,0,'Right Pipe - send custom anim');