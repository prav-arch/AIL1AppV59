DROP TABLE IF EXISTS l1_app_db.fh_violations_daily;
CREATE VIEW l1_app_db.fh_violations_daily AS
SELECT
    toDate(event_time) AS day,
    sum(severity = 4) AS critical_count,
    sum(severity = 3) AS high_count,
    sum(severity = 1) AS warning_count,
    (sum(severity = 4) + sum(severity = 3) + sum(severity = 1)) AS total_critical_high_warning
FROM l1_app_db.fh_violations
GROUP BY day
ORDER BY day DESC;

DROP TABLE IF EXISTS l1_app_db.cp_up_coupling_daily;
CREATE VIEW l1_app_db.cp_up_coupling_daily AS
SELECT
    toDate(event_time) AS day,
    sum(severity = 4) AS critical_count,
    sum(severity = 3) AS high_count,
    sum(severity = 1) AS warning_count,
    (sum(severity = 4) + sum(severity = 3) + sum(severity = 1)) AS total_critical_high_warning
FROM l1_app_db.cp_up_coupling
GROUP BY day
ORDER BY day DESC;

DROP TABLE IF EXISTS l1_app_db.interference_splane_daily;
CREATE VIEW l1_app_db.interference_splane_daily AS
SELECT
    toDate(event_time) AS day,
    sum(severity = 4) AS critical_count,
    sum(severity = 3) AS high_count,
    sum(severity = 1) AS warning_count,
    (sum(severity = 4) + sum(severity = 3) + sum(severity = 1)) AS total_critical_high_warning
FROM l1_app_db.interference_splane
GROUP BY day
ORDER BY day DESC;
