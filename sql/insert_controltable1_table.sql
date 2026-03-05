Insert into controltable1 (ID,source_object_setting,sink_object_setting,type)
VALUES(1,'{"source_schema":"dbo","source_table":"Orders"}',
'{"sink_schema":null,"sink_table":null,"sink_filename":"orders.csv"}',
'ssms-storage'),
(2,'{"source_schema":"dbo","source_table":"employees"}',
'{"sink_schema":null,"sink_table":null,"sink_filename":"employees.csv"}',
'ssms-storage'),
(3,'{"source_schema":"dbo","source_table":"college1"}',
'{"sink_schema":null,"sink_table":null,"sink_filename":"college1.csv"}',
'ssms-storage'),
(4,'{"source_schema":"dbo","source_table":"Orders"}',
'{"sink_schema":"dbo","sink_table":"Orders","sink_filename":null}',
'ssms-sink'),
(5,'{"source_schema":"dbo","source_table":"employees"}',
'
"sink_schema":"dbo","sink_table":"employees","sink_filename":null}',
'ssms-sink'),
(6,'{"source_schema":"dbo","source_table":"college1"}',
'{"sink_schema":"dbo","sink_table":"college1","sink_filename":null}',
'ssms-sink');

