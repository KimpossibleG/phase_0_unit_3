<!-- ## Show the terminal output here.  -->

sqlite> .schema
CREATE TABLE family_members (
id INTEGER PRIMARY KEY AUTOINCREMENT,
first_name VARCHAR(20) NOT NULL,
middle_name VARCHAR(40),
last_name VARCHAR(20) NOT NULL,
birthday DATETIME NOT NULL,
created_at DATETIME NOT NULL,
updated_at DATETIME NOT NULL);
CREATE TABLE id_numbers (
id INTEGER PRIMARY KEY AUTOINCREMENT,
family_member_id INTEGER NOT NULL,
id_type VARCHAR(40) NOT NULL,
id_type_number VARCHAR(60) NOT NULL,
created_at DATETIME NOT NULL,
updated_at DATETIME NOT NULL,
FOREIGN KEY (family_member_id) REFERENCES family_members(id));


sqlite> SELECT * FROM family_members;
id          first_name  middle_name  last_name   birthday    created_at           updated_at         
----------  ----------  -----------  ----------  ----------  -------------------  -------------------
1           Kimberley   Marie        Girard      1978-07-11  2014-05-09 22:57:39  2014-05-09 22:57:39
2           Robert      William      Girard      1977-09-08  2014-05-09 22:59:17  2014-05-09 22:59:17
3           Alice       Maria        Girard      2010-04-05  2014-05-09 22:59:57  2014-05-09 22:59:57
4           Elizabeth   Deanna       Girard      2012-01-05  2014-05-09 23:00:34  2014-05-09 23:00:34
5           Nugget                   Girard      2009-02-14  2014-05-09 23:02:31  2014-05-09 23:02:31

id          family_member_id  id_type     id_type_number  created_at           updated_at         
----------  ----------------  ----------  --------------  -------------------  -------------------
1           1                 Passport    PP1234          2014-05-09 23:08:56  2014-05-09 23:08:56
2           2                 Health Car  GIR12345678     2014-05-09 23:09:49  2014-05-09 23:09:49
