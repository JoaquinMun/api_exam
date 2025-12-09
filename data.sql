-- Usuarios de prueba
--Ejecutar en Postman para crear usuarios insertandolos en xampp mysql no encripta la contraseña
--POST
http://localhost:3000/api/v1/auth/register
{
  "nombre": "Cliente Prueba",
  "email": "cliente@gmail.com",
  "password": "cliente123",
  "rol": "cliente"
}

{
  "nombre": "Empleado Prueba",
  "email": "empleado@gmail.com",
  "password": "empleado123",
  "rol": "empleado"
}

{
  "nombre": "Administrador Prueba",
  "email": "admin@gmail.com",
  "password": "admin123",
  "rol": "admin"
}

  { "nombre": "Valentina Rojas", "email": "valentina.rojas@gmail.com", "password": "valentina123", "rol": "cliente" },
  { "nombre": "Sebastián Muñoz", "email": "sebastian.munoz@gmail.com", "password": "sebastian123", "rol": "cliente" },
  { "nombre": "Camila Fernández", "email": "camila.fernandez@gmail.com", "password": "camila123", "rol": "cliente" },
  { "nombre": "Matías González", "email": "matias.gonzalez@gmail.com", "password": "matias123", "rol": "cliente" },
  { "nombre": "Isidora Pérez", "email": "isidora.perez@gmail.com", "password": "isidora123", "rol": "cliente" },
  { "nombre": "Francisca Riquelme", "email": "francisca.riquelme@gmail.com", "password": "francisca123", "rol": "cliente" }


--Pegar en SQL de xampp
INSERT INTO categorias (nombre_categoria, descripcion_categoria) VALUES
('Frutas Frescas', 'Nuestra selección de frutas frescas ofrece una experiencia directa del campo a Atu hogar. Estas frutas se cultivan y cosechan en el punto óptimo de madurez para asegurar su sabor y frescura. Disfruta de una variedad de frutas de temporada que aportan vitaminas y nutrientes esenciales a tu dieta diaria. Perfectas para consumir solas, en ensaladas o como ingrediente principal en postres y smoothies.'),

('Verduras Orgánicas', 'Descubre nuestra gama de verduras orgánicas, cultivadas sin el uso de pesticidas ni químicos, garantizando un sabor auténtico y natural. Cada verdura es
seleccionada por su calidad y valor nutricional, ofreciendo una excelente fuente de vitaminas, minerales y fibra. Ideales para ensaladas, guisos y platos saludables, nuestras
verduras orgánicas promueven una alimentación consciente y sostenible.'),

('Productos Orgánicos', 'Nuestros productos orgánicos están elaborados con ingredientes naturales y procesados de manera responsable para mantener sus beneficios saludables. Desde aceites y miel hasta granos y semillas, ofrecemos una selección que apoya un estilo de vida saludable y respetuoso con el medio ambiente. Estos productos son perfectos para quienes buscan opciones alimenticias que aporten bienestar sin comprometer el sabor ni la calidad.'),

('Productos Lácteos', 'Los productos lácteos de HuertoHogar provienen de granjas locales que se dedican a la producción responsable y de calidad. Ofrecemos una gama de leches, yogures y otros derivados que conservan su frescura y sabor auténtico. Ricos en calcio y nutrientes esenciales, nuestros lácteos son perfectos para complementar una dieta equilibrada, proporcionando el mejor sabor y nutrición para toda la familia.');



INSERT INTO productos (nombre_producto, descripcion_producto, precio, stock, categoriaIdCategoria) VALUES
('Manzanas Fuji', 'Manzanas Fuji crujientes y dulces, cultivadas en el Valle del Maule. Perfectas para meriendas saludables o como ingrediente en postres. Estas manzanas
son conocidas por su textura firme y su sabor equilibrado entre dulce y ácido.', 1200, 150, 1),

('Naranjas Valencia', 'Jugosas y ricas en vitamina C, estas naranjas Valencia son ideales para zumos frescos y refrescantes. Cultivadas en condiciones climáticas óptimas que aseguran su dulzura y jugosidad.', 1000, 200, 1),

('Plátanos Cavendish', 'Plátanos maduros y dulces, perfectos para el desayuno o como snack energético. Estos plátanos son ricos en potasio y vitaminas, ideales para mantener una dieta equilibrada.', 800, 250, 1),

('Zanahorias Orgánicas', 'Zanahorias crujientes cultivadas sin pesticidas en la Región de O\'Higgins. Excelente fuente de vitamina A y fibra, ideales para ensaladas, jugos o como snack saludable.', 900, 100, 2),

('Espinacas Frescas', 'Espinacas frescas y nutritivas, perfectas para ensaladas y batidos verdes. Estas espinacas son cultivadas bajo prácticas orgánicas que garantizan su calidad y valor nutricional.', 700, 80, 2),

('Pimientos Tricolores', 'Pimientos rojos, amarillos y verdes, ideales para salteados y platos coloridos. Ricos en antioxidantes y vitaminas, estos pimientos añaden un toque vibrante y saludable a cualquier receta.', 1500, 120, 2),

('Miel Orgánica', 'Miel pura y orgánica producida por apicultores locales. Rica en antioxidantes y con un sabor inigualable, perfecta para endulzar de manera natural tus comidas y bebidas.', 5000, 50, 3),

('Quinua Orgánica', 'Quinua orgánica de alta calidad, ideal para platos saludables y nutritivos. Excelente fuente de proteína vegetal y minerales esenciales.', 3000, 60, 3),

('Leche Entera', 'Leche entera fresca proveniente de granjas locales. Rica en calcio y nutrientes esenciales, perfecta para una dieta equilibrada.', 1200, 90, 4);







-- Insertar 25 ventas con fechas entre el 28/11/2025 y 12/12/2025, solo efectivo
INSERT INTO ventas (fecha_venta, total, estado, metodo_pago, usuarioIdUsuario) VALUES
-- Noviembre 2025
('2025-11-28 09:15:00', 0, 'completada', 'efectivo', 3),
('2025-11-28 14:30:00', 0, 'completada', 'efectivo', 4),
('2025-11-29 11:45:00', 0, 'completada', 'efectivo', 5),
('2025-11-29 16:20:00', 0, 'completada', 'efectivo', 6),
('2025-11-30 18:10:00', 0, 'completada', 'efectivo', 7),
('2025-11-30 20:05:00', 0, 'completada', 'efectivo', 8),

-- Diciembre 2025
('2025-12-01 10:15:00', 0, 'completada', 'efectivo', 1),
('2025-12-01 12:30:00', 0, 'completada', 'efectivo', 2),
('2025-12-02 15:45:00', 0, 'completada', 'efectivo', 3),
('2025-12-02 17:20:00', 0, 'completada', 'efectivo', 4),
('2025-12-03 19:30:00', 0, 'completada', 'efectivo', 5),
('2025-12-04 08:45:00', 0, 'completada', 'efectivo', 6),
('2025-12-04 13:15:00', 0, 'completada', 'efectivo', 7),
('2025-12-05 16:40:00', 0, 'completada', 'efectivo', 8),
('2025-12-05 18:25:00', 0, 'pendiente', 'efectivo', 1),
('2025-12-06 11:10:00', 0, 'completada', 'efectivo', 2),
('2025-12-06 14:50:00', 0, 'completada', 'efectivo', 3),
('2025-12-07 10:30:00', 0, 'completada', 'efectivo', 4),
('2025-12-08 12:45:00', 0, 'completada', 'efectivo', 5),
('2025-12-09 15:20:00', 0, 'pendiente', 'efectivo', 6),
('2025-12-10 17:35:00', 0, 'completada', 'efectivo', 7),
('2025-12-10 19:15:00', 0, 'completada', 'efectivo', 8),
('2025-12-11 09:40:00', 0, 'completada', 'efectivo', 1),
('2025-12-11 13:25:00', 0, 'completada', 'efectivo', 2),
('2025-12-12 16:10:00', 0, 'completada', 'efectivo', 3);

-- Insertar detalle_venta para todas las ventas 
  INSERT INTO detalle_venta (cantidad, subtotal, ventaIdVenta, productoIdProducto) VALUES
  -- Venta 1 (28/11 - Mañana)
  (2, 0, 1, 1),   -- Arroz 2kg
  (1, 0, 1, 2),   -- Coca-Cola 1.5L
  (1, 0, 1, 3),   -- Leche 1L
  (1, 0, 1, 4),   -- Pan Hallulla

  -- Venta 2 (28/11 - Tarde)
  (3, 0, 2, 5),   -- Papas Fritas 3 bolsas
  (2, 0, 2, 6),  -- Cerveza 2 latas
  (1, 0, 2, 7),  -- Encendedor

  -- Venta 3 (29/11 - Mañana)
  (1, 0, 3, 8),   -- Yoghurt
  (2, 0, 3, 9),   -- Pan Hallulla 2 bolsas
  (1, 0, 3, 4),  -- Plátano 1kg
  (1, 0, 3, 2),  -- Paracetamol

  -- Venta 4 (29/11 - Tarde)
  (1, 0, 4, 3),   -- Salchichas
  (1, 0, 4, 2),  -- Helado Vainilla
  (2, 0, 4, 7),  -- Cerveza 2 latas

  -- Venta 5 (30/11 - Noche)
  (1, 0, 5, 9),   -- Detergente Líquido
  (1, 0, 5, 1),  -- Shampoo
  (1, 0, 5, 5),  -- Comida Perro
  (1, 0, 5, 4),  -- Vino Tinto

  -- Venta 6 (30/11 - Noche)
  (3, 0, 6, 7),  -- Cerveza 3 latas
  (2, 0, 6, 4),   -- Papas Fritas 2 bolsas
  (1, 0, 6, 2),  -- Manzana Roja

  -- Venta 7 (01/12 - Mañana)
  (1, 0, 7, 1),   -- Arroz
  (1, 0, 7, 4),   -- Fideos
  (1, 0, 7, 8),   -- Leche
  (1, 0, 7, 6),  -- Aceite

  -- Venta 8 (01/12 - Mediodía)
  (2, 0, 8, 3),   -- Coca-Cola 2 botellas
  (1, 0, 8, 9),  -- Jugo Naranja
  (1, 0, 8, 4),  -- Queso Mantecoso

  -- Venta 9 (02/12 - Tarde)
  (1, 0, 9, 3),  -- Jamón Cocido
  (1, 0, 9, 4),  -- Pan Integral
  (2, 0, 9, 6),  -- Pasta Dental 2 unidades

  -- Venta 10 (02/12 - Tarde)
  (1, 0, 10, 4),  -- Helado Vainilla
  (1, 0, 10, 7),  -- Helado Chocolate
  (1, 0, 10, 9),  -- Arena Gatos

  -- Venta 11 (03/12 - Noche)
  (4, 0, 11, 9),  -- Cerveza 4 latas
  (2, 0, 11, 4),   -- Papas Fritas 2 bolsas
  (1, 0, 11, 2),  -- Plátano

  -- Venta 12 (04/12 - Mañana)
  (2, 0, 12, 4),   -- Yoghurt 2 unidades
  (1, 0, 12, 5),   -- Pan Hallulla
  (1, 0, 12, 7),  -- Paracetamol

  -- Venta 13 (04/12 - Mediodía)
  (1, 0, 13, 1),   -- Detergente Líquido
  (1, 0, 13, 4),  -- Shampoo
  (1, 0, 13, 5),  -- Detergente Polvo

  -- Venta 14 (05/12 - Tarde)
  (3, 0, 14, 9),  -- Cerveza 3 latas
  (1, 0, 14,5),  -- Vino Tinto
  (1, 0, 14, 3),  -- Manzana Roja

  -- Venta 15 (05/12 - Noche - Pendiente)
  (1, 0, 15, 3),   -- Arroz
  (1, 0, 15, 6),   -- Leche
  (1, 0, 15, 2),  -- Plátano

  -- Venta 16 (06/12 - Mañana)
  (2, 0, 16, 9),   -- Fideos 2 packs
  (1, 0, 16, 4),   -- Coca-Cola
  (1, 0, 16, 2),   -- Salchichas

  -- Venta 17 (06/12 - Tarde)
  (1, 0, 17, 1),  -- Helado Vainilla
  (1, 0, 17, 8),  -- Comida Perro
  (1, 0, 17, 4),  -- Arena Gatos

  -- Venta 18 (07/12 - Mañana)
  (1, 0, 18, 5),  -- Aceite
  (1, 0, 18, 6),  -- Jugo Naranja
  (1, 0, 18, 2),  -- Queso
  (1, 0, 18, 3),  -- Jamón

  -- Venta 19 (08/12 - Mediodía)
  (2, 0, 19, 9),  -- Cerveza 2 latas
  (1, 0, 19, 4),  -- Pan Integral
  (1, 0, 19, 3),  -- Pasta Dental

  -- Venta 20 (09/12 - Tarde - Pendiente)
  (1, 0, 20, 8),  -- Helado Chocolate
  (2, 0, 20, 5),  -- Paracetamol 2 cajas

  -- Venta 21 (10/12 - Tarde)
  (1, 0, 21, 3),   -- Detergente Líquido
  (1, 0, 21, 5),  -- Shampoo
  (1, 0, 21, 5),  -- Detergente Polvo
  (1, 0, 21, 3),  -- Pasta Dental
  -- Venta 22 (10/12 - Noche)
  (3, 0, 22, 9),  -- Cerveza 3 latas
  (1, 0, 22, 3),   -- Papas Fritas
  (1, 0, 22, 2),  -- Encendedor

  -- Venta 23 (11/12 - Mañana)
  (1, 0, 23, 9),   -- Arroz
  (1, 0, 23, 2),   -- Yoghurt
  (1, 0, 23, 3),   -- Pan Hallulla
  (1, 0, 23, 4),  -- Plátano

  -- Venta 24 (11/12 - Mediodía)
  (1, 0, 24, 7),  -- Helado Vainilla
  (1, 0, 24, 8),  -- Helado Chocolate
  (1, 0, 24, 2),  -- Vino Tinto

  -- Venta 25 (12/12 - Tarde)
  (2, 0, 25, 4),  -- Cerveza 2 latas
  (1, 0, 25, 6),  -- Manzana Roja
  (1, 0, 25, 9),  -- Paracetamol
  (1, 0, 25, 2);   -- Leche

-- Ahora actualizamos los subtotales en detalle_venta (precio * cantidad)
UPDATE detalle_venta dv
JOIN productos p ON dv.productoIdProducto = p.id_producto
SET dv.subtotal = dv.cantidad * p.precio;

-- Finalmente actualizamos los totales en ventas (suma de subtotales * 1.19)
UPDATE ventas v
JOIN (
    SELECT ventaIdVenta, SUM(subtotal) AS suma_subtotales
    FROM detalle_venta
    GROUP BY ventaIdVenta
) dv_sum ON v.id_venta = dv_sum.ventaIdVenta
SET v.total = ROUND(dv_sum.suma_subtotales * 1.19);
