INSERT INTO categorias (nombre_categoria, descripcion_categoria) VALUES
('Abarrotes', 'Productos básicos como arroz, fideos, legumbres, harina, azúcar y aceite'),
('Bebidas', 'Bebidas gaseosas, jugos, aguas minerales y energéticas'),
('Snacks', 'Papas fritas, ramitas, galletas, chocolates y confites'),
('Lácteos', 'Leche, yogures, mantequilla, quesos y otros derivados'),
('Carnes y Embutidos', 'Longanizas, salchichas, jamón, vienesas y carnes refrigeradas'),
('Panadería', 'Pan, hallullas, marraquetas, queques y productos horneados'),
('Artículos de Limpieza', 'Detergentes, cloro, esponjas, lavalozas y productos de aseo'),
('Higiene Personal', 'Shampoo, desodorante, jabón, pasta dental, papel higiénico'),
('Congelados', 'Helados, verduras congeladas, mariscos y productos listos'),
('Mascotas', 'Comida para perros y gatos, snacks y arena sanitaria'),
('Licores', 'Cervezas, vinos, piscos y otros alcoholes permitidos'),
('Frutas y Verduras', 'Productos frescos de estación'),
('Cigarros y Filtros', 'Cigarrillos, encendedores, fósforos'),
('Farmacia Básica', 'Medicamentos sin receta, curitas y analgésicos');


INSERT INTO productos (nombre_producto, descripcion_producto, precio, stock, categoriaIdCategoria) VALUES
('Arroz Grado 1 1kg', 
 'Arroz de alta calidad, ideal para preparaciones diarias como guisos, acompañamientos y comidas familiares. Se cocina de manera pareja y mantiene una textura suave y esponjosa, convirtiéndose en un básico indispensable en cualquier hogar.', 
 1200, 40, 1),

('Fideos Spaghetti 400g', 
 'Spaghetti de trigo de cocción rápida, perfectos para comidas rápidas y económicas. Mantienen su forma y consistencia al cocinarse, siendo ideales para combinar con salsas, carnes, verduras o simplemente con mantequilla.', 
 900, 50, 1),

('Coca-Cola 1.5L', 
 'Bebida gaseosa clásica de sabor cola, refrescante y reconocida mundialmente. Ideal para compartir en comidas familiares, celebraciones o simplemente para disfrutar en cualquier momento del día.', 
 1800, 25, 2),

('Papas Fritas Lays 140g', 
 'Papas fritas crujientes con un sabor irresistible, elaboradas con papas seleccionadas y fritas hasta obtener una textura perfecta. Son un snack ideal para compartir, ver una película o acompañar bebidas.', 
 1500, 35, 3),

('Leche Entera 1L', 
 'Leche líquida de sabor suave y textura cremosa, proveniente de vacas seleccionadas. Aporta calcio y vitaminas esenciales, siendo perfecta para el desayuno, preparaciones de cocina o el consumo diario.', 
 1100, 30, 4),

('Yoghurt Batido Frutilla 155g', 
 'Yoghurt cremoso con sabor a frutilla, elaborado con leche fresca y cultivos vivos. Es una opción ideal como snack saludable, acompañamiento del desayuno o colación para niños y adultos.', 
 650, 60, 4),

('Salchichas Vienesas Pack 12u', 
 'Tradicionales salchichas tipo vienesa, listas para cocinar a la plancha, al agua o en microondas. Tienen un sabor suave y una textura firme, ideales para hot dogs, completos u otras preparaciones rápidas.', 
 1700, 22, 5),

('Pan Hallulla Bolsa 10u', 
 'Pan fresco de textura suave y miga compacta, perfecto para el desayuno o la once. Su versatilidad permite acompañarlo con dulce, mantequilla, quesos o embutidos, siendo uno de los panes preferidos del consumo diario.', 
 1800, 15, 6),

('Detergente Líquido 1L', 
 'Detergente líquido concentrado que remueve manchas difíciles y deja un aroma agradable en la ropa. Rinde múltiples lavados y es compatible con lavadoras automáticas o lavado manual.', 
 2200, 18, 7),

('Shampoo Familiar 750ml', 
 'Shampoo de uso diario con fórmula suave que limpia profundamente el cabello y el cuero cabelludo. Deja una sensación fresca, un aroma agradable y un acabado sedoso, apto para toda la familia.', 
 2500, 20, 8),

('Helado de Vainilla 1L', 
 'Helado cremoso de vainilla elaborado con ingredientes de calidad. Ideal para postres, celebraciones o para disfrutar en días calurosos. Su textura suave y sabor clásico lo hacen un producto muy popular.', 
 3200, 12, 9),

('Comida para Perro 1kg', 
 'Alimento seco para perros adultos, formulado con nutrientes esenciales que contribuyen a la salud del pelaje, los dientes y la energía diaria. Su mezcla equilibrada lo convierte en una opción confiable para mascotas.', 
 2500, 14, 10),

('Cerveza Cristal Lata 350ml', 
 'Cerveza lager chilena de sabor suave, refrescante y fácil de beber. Ideal para compartir en reuniones, asados o simplemente para disfrutar bien fría después del trabajo.', 
 1000, 48, 11),

('Plátano 1kg', 
 'Fruta fresca de primera calidad, rica en potasio y de sabor naturalmente dulce. Es perfecta para consumir sola, en batidos o como parte de un desayuno saludable. Producto siempre presente en los hogares chilenos.', 
 1300, 20, 12),

('Encendedor Bic', 
 'Encendedor de alta duración, seguro y confiable, ideal para uso diario en el hogar. Fabricado con materiales resistentes y una llama estable, es uno de los productos más reconocidos del mercado.', 
 700, 40, 13);


-- Usuarios de prueba
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


