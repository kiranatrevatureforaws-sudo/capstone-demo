USE product_db;

INSERT INTO products
  (product_id, sku, name, description, price,
   stock_quantity, category_id, active)
VALUES
  (1, 'ELEC-101', 'Wireless Mouse', '2.4 GHz mouse', 799.00, 25, 1, TRUE),
  (2, 'ELEC-102', 'USB-C Hub', 'Multiport USB-C adapter', 1499.00, 12, 1, TRUE),
  (3, 'BOOK-201', 'Java Fundamentals', 'Beginner Java guide', 599.00, 40, 2, TRUE),
  (4, 'HOME-301', 'Steel Water Bottle', '750 ml reusable bottle', 449.00, 30, 3, TRUE),
  (5, 'ELEC-103', 'Mechanical Keyboard', 'Compact keyboard', 3499.00, 0, 1, TRUE)
ON DUPLICATE KEY UPDATE
  sku = VALUES(sku),
  name = VALUES(name),
  description = VALUES(description),
  price = VALUES(price),
  stock_quantity = VALUES(stock_quantity),
  category_id = VALUES(category_id),
  active = VALUES(active);