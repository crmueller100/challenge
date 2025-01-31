-- Create before receipts so that foreign key constraint can be created
CREATE TABLE IF NOT EXISTS users (
  _id TEXT PRIMARY KEY,
  state TEXT,
  createdDate TIMESTAMP WITHOUT TIME ZONE,
  lastLogin TIMESTAMP WITHOUT TIME ZONE,
  role TEXT,
  active BOOLEAN
);

CREATE TABLE IF NOT EXISTS receipts (
  _id TEXT PRIMARY KEY,
  bonusPointsEarned NUMERIC,
  bonusPointsEarnedReason TEXT,
  createDate TIMESTAMP WITHOUT TIME ZONE,
  dateScanned TIMESTAMP WITHOUT TIME ZONE,
  finishedDate TIMESTAMP WITHOUT TIME ZONE,
  modifyDate TIMESTAMP WITHOUT TIME ZONE,
  pointsAwardedDate TIMESTAMP WITHOUT TIME ZONE,
  pointsEarned INTEGER,
  purchaseDate TIMESTAMP WITHOUT TIME ZONE,
  purchasedItemCount INTEGER,
  rewardsReceiptItemList jsonb,
  rewardsReceiptStatus TEXT,
  totalSpent NUMERIC(10,2),
  userId TEXT REFERENCES users(_id)
);

CREATE TABLE IF NOT EXISTS brands (
  _id TEXT PRIMARY KEY,
  barcode TEXT,
  brandCode TEXT,
  category TEXT,
  categoryCode TEXT,
  cpg jsonb,
  topBrand BOOLEAN,
  name TEXT
);