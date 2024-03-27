delete from expTable;
DBCC CHECKIDENT ('ExpTable', RESEED, 1)