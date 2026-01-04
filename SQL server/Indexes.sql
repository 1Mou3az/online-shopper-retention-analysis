--  Indexes for Customer Journey Table
-- Speed up analysis of customer movements by CustomerID
CREATE NONCLUSTERED INDEX IX_Fact_CustomerJourney_CustomerID 
ON dbo.Customer_Journey (CustomerID);

-- Non-Clustered Index on ProductID in the Customer Journey table
-- This is crucial for analyzing which products are being viewed or abandoned in the funnel
CREATE NONCLUSTERED INDEX IX_Fact_CustomerJourney_ProductID 
ON dbo.Customer_Journey (ProductID);

--  Indexes for Engagement Data Table
-- Optimize filtering engagement metrics by Product and Content
CREATE NONCLUSTERED INDEX IX_Fact_Engagement_ProductID 
ON dbo.Engagement_Data (ProductID);

--  Indexes for Customer Reviews Table
-- Improve performance when analyzing reviews for specific customers or products
CREATE NONCLUSTERED INDEX IX_Fact_CustomerReviews_CustomerID 
ON dbo.Customer_Reviews (CustomerID);

CREATE NONCLUSTERED INDEX IX_Fact_CustomerReviews_ProductID 
ON dbo.Customer_Reviews (ProductID);

-- 1. Create Clustered Index on Customers Table
ALTER TABLE dbo.customers 
ADD CONSTRAINT PK_Customers PRIMARY KEY CLUSTERED (CustomerID);

-- 2. Create Clustered Index on Geography Table
ALTER TABLE dbo.geography 
ADD CONSTRAINT PK_Geography PRIMARY KEY CLUSTERED (GeographyID);

-- 3. Create Clustered Index on Products Table
ALTER TABLE dbo.products 
ADD CONSTRAINT PK_Products PRIMARY KEY CLUSTERED (ProductID);