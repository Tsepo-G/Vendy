USE VendyDB
GO

ALTER TABLE dbo.VendingMachine 
	ADD CONSTRAINT fk_VendingMachine_Room
	FOREIGN KEY (Room_ID)
	REFERENCES dbo.Room (Room_ID)


ALTER TABLE dbo.Room
	ADD CONSTRAINT fk_Room_Branch
	FOREIGN KEY (Branch_ID)
	REFERENCES dbo.Branch (Branch_ID)

ALTER TABLE dbo.Branch
	ADD CONSTRAINT fk_Branch_BranchLocation
	FOREIGN KEY (Postcode)
	REFERENCES dbo.BranchLocation (Postcode)

ALTER TABLE dbo.Item
	ADD CONSTRAINT fk_Item_VendingMachine
	FOREIGN KEY (Vmachine_ID)
	REFERENCES dbo.VendingMachine (Vmachine_ID)


ALTER TABLE dbo.Item 
	ADD CONSTRAINT fk_Item_ItemCategory
	FOREIGN KEY (Category_ID)
	REFERENCES dbo.ItemCategory (Category_ID)


ALTER TABLE dbo.Transactions 
	ADD CONSTRAINT fk_Transactions_Item
	FOREIGN KEY (Item_ID)
	REFERENCES dbo.Item (Item_ID)

ALTER TABLE dbo.Transactions
	ADD CONSTRAINT fk_Transactions_Employee
	FOREIGN KEY (Employee_ID)
	REFERENCES dbo.Employee (Employee_ID)
