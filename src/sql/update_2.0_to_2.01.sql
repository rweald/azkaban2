/*
For 2.01 Adds the attempt column to execution_jobs
*/
ALTER TABLE execution_jobs ADD COLUMN attempt INT DEFAULT 0;
ALTER TABLE execution_jobs DROP PRIMARY KEY;
ALTER TABLE execution_jobs ADD PRIMARY KEY(exec_id, job_id, attempt);
ALTER TABLE execution_jobs ADD INDEX exec_job (exec_id, job_id);

ALTER TABLE execution_logs ADD COLUMN attempt INT DEFAULT 0;
ALTER TABLE execution_logs DROP PRIMARY KEY;
ALTER TABLE execution_logs ADD PRIMARY KEY(exec_id, name, attempt);

ALTER TABLE schedules ADD COLUMN enc_type TINYINT;
ALTER TABLE schedules ADD COLUMN schedule_options LONGBLOB;




