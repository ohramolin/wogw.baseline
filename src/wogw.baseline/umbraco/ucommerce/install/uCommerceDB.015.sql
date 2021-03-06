-- Add payment fee total column
ALTER TABLE dbo.uCommerce_Payment ADD FeeTotal [money] DEFAULT 0

-- Add unique index to Product Description to prevent multiple description with same culture for a single product
ALTER TABLE [dbo].[uCommerce_ProductDescription] ADD CONSTRAINT [IX_uCommerce_ProductDescription_ProductId_CultureCode] UNIQUE NONCLUSTERED  ([ProductId], [CultureCode])