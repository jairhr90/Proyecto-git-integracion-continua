-- Crear la base de datos y usarla
CREATE DATABASE IF NOT EXISTS tienda_virtual;
USE tienda_virtual;

-- Crear la tabla de clientes
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    address VARCHAR(255),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code VARCHAR(20)
);

-- Crear la tabla de productos
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    brand VARCHAR(50),
    model VARCHAR(50),
    price DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL,
    description TEXT
);

-- Crear la tabla de órdenes
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATETIME NOT NULL,
    total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Crear la tabla de detalles de órdenes
CREATE TABLE order_details (
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insertar datos de ejemplo en la tabla de clientes
INSERT INTO customers (first_name, last_name, email, phone, address, city, state, postal_code)
VALUES
('Juan', 'Pérez', 'juan.perez@example.com', '1234567890', 'Calle Falsa 123', 'Ciudad', 'Estado', '12345'),
('María', 'González', 'maria.gonzalez@example.com', '0987654321', 'Avenida Siempre Viva 742', 'Otra Ciudad', 'Otro Estado', '54321');

-- Insertar datos de ejemplo en la tabla de productos
INSERT INTO products (name, brand, model, price, stock, description)
VALUES
('iPhone 12', 'Apple', 'A2403', 799.99, 50, 'Último modelo de Apple con tecnología 5G'),
('Galaxy S21', 'Samsung', 'SM-G991B', 699.99, 30, 'Modelo insignia de Samsung con excelente cámara y rendimiento');

-- Insertar datos de ejemplo en la tabla de órdenes
INSERT INTO orders (customer_id, order_date, total)
VALUES
(1, NOW(), 1599.98),
(2, NOW(), 699.99);

-- Insertar datos de ejemplo en la tabla de detalles de órdenes
INSERT INTO order_details (order_id, product_id, quantity, price)
VALUES
(1, 1, 1, 799.99),
(1, 2, 1, 799.99),
(2, 2, 1, 699.99);
