# cron-backup-mysql

Backup MYSQL to FTP or NFS (supports periodic backups)

# Settings

For transfer and scheduling please see the settings for the [dividab/cron-backup-base](https://github.com/dividab/cron-backup-base) image which this image is based on. Below is only the options specific to dumping the mysql database. 

These settings can be passed as environment variables to the container:

| Name                   | Description                                  | Required  | Default      |
| ---------------------- | -------------------------------------------- | --------- | ------------ |
| MYSQL_HOST             | The database host                            | Yes       | `**None**`   |
| MYSQL_PORT             | The database host port                       | No        | `3306`       |
| MYSQL_DATABASE         | The database name to dump                    | Yes       | `**None**`   |
| MYSQL_USER             | The database user                            | Yes       | `**None**`   |
| MYSQL_PASSWORD         | The database user password                   | Yes       | `**None**`   |
| MYSQL_EXTRA_OPTS       | Extra options to the mysqldump command       | No        | ``           |
