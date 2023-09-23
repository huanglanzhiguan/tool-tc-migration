ALTER TABLE `account`
		ADD COLUMN `totaltime` INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `recruiter`;

DROP VIEW IF EXISTS vw_rbac;
DROP VIEW IF EXISTS vw_log_history;

DROP TABLE IF EXISTS rbac_account_permissions;
DROP TABLE IF EXISTS rbac_default_permissions;
DROP TABLE IF EXISTS rbac_linked_permissions;
DROP TABLE IF EXISTS rbac_permissions;

ALTER TABLE `logs_ip_actions` DROP COLUMN `realm_id`;

CREATE TABLE auth.motd (
  realmid INT(11) NOT NULL PRIMARY KEY,
  text LONGTEXT
) ENGINE=INNODB DEFAULT CHARSET=utf8;
