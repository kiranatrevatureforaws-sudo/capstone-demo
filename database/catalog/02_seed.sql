USE catalog_db;

INSERT INTO categories (category_id, name, description, active)
VALUES
  (1, 'Electronics', 'Phones, laptops and accessories', TRUE),
  (2, 'Books', 'Printed books and learning resources', TRUE),
  (3, 'Home & Kitchen', 'Household and kitchen essentials', TRUE)
ON DUPLICATE KEY UPDATE
  name = VALUES(name),
  description = VALUES(description),
  active = VALUES(active);