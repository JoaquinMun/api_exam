# 📘 Instalación del Proyecto — API Huerto EVA3

## 1️⃣ Clonar el repositorio

```
git clone https://github.com/JoaquinMun/api_huerto_Eva3.git
cd api_huerto_Eva3
```

---

## 2️⃣ Instalar NestJS CLI (si no está instalado)

```
npm install -g @nestjs/cli
```

---

## 3️⃣ Instalar dependencias del proyecto

```
npm install
```

---

## 4️⃣ Dependencias adicionales

### 📦 TypeORM + MySQL

```
npm install typeorm mysql2 @nestjs/typeorm
```

### 🔐 Autenticación (JWT + Passport)

```
npm install @nestjs/jwt passport-jwt @nestjs/passport passport jsonwebtoken
```

### 🔧 Variables de entorno

```
npm install dotenv
```

### 📚 DTOs + Validación

```
npm install class-validator class-transformer
```

### 📄 Swagger (Documentación automática)

```
npm install @nestjs/swagger swagger-ui-express
```

### 🛠️ Dependencias de desarrollo

```
npm install --save-dev ts-node typescript @types/node
```

## Test

```
npm install --save-dev supertest @types/supertest
npm install --save-dev cross-env
```

---

## 5️⃣ Configurar archivo `.env`

⚠️ **No subir este archivo a GitHub.**

Ejemplo:

```
DB_TYPE=mysql
DB_HOST=127.0.0.1
DB_PORT=3307
DB_USERNAME=root
DB_PASSWORD=
DB_NAME=huerto_db

PORT=3000
NODE_ENV=development

JWT_SECRET=super_secret_key
JWT_EXPIRES_IN=3600s
```

---

## 6️⃣ Levantar el servidor

```
npm run start:dev
```

---

## 7️⃣ Verificación

Si todo está OK, la aplicación correrá en:

* API → [http://localhost:3000](http://localhost:3000)
* Swagger UI → [http://localhost:3000/docs](http://localhost:3000/docs)

---


# Pruebas en Postman

## Crear Usuario
**Método:** `POST`  
**URL:** `http://localhost:3000/api/v1/usuarios`

** Body JSON**
```json
{
  "nombre": "Joaquín",
  "apellido": "Muñoz",
  "email": "joaquin@test.com",
  "password": "123456"
}
```

---

## Crear Categoría
**Método:** `POST`  
**URL:** `http://localhost:3000/api/v1/categorias`

* Body JSON**
```json
{
  "nombre_categoria": "Frutas",
  "descripcion_categoria": "Frutas frescas de temporada"
}
```

---

## Crear Producto
**Método:** `POST`  
**URL:** `http://localhost:3000/api/v1/productos`

** Body JSON**
```json
{
  "nombre_producto": "Manzana Roja",
  "descripcion_producto": "Manzana fresca y dulce",
  "precio": 500,
  "stock": 100,
  "categoriaId": 1
}
```

---

## Crear Venta (IMPORTANTE ⚠️)
**Método:** `POST`  
**URL:** `http://localhost:3000/api/v1/ventas`

**⚠️ Importante:**  
- No envíes `ventaId`.  
- `usuarioId` debe existir.  
- `productoId` debe existir.  
- Los detalles van dentro del array `detalles[]`.

**📥 Body JSON**
```json
{
  "usuarioId": 1,
  "fecha_venta": "2025-11-29T15:00:00",
  "total": 1500,
  "estado": "pendiente",
  "metodo_pago": "efectivo",
  "detalles": [
    {
      "productoId": 1,
      "cantidad": 3,
      "subtotal": 1500
    }
  ]
}
```

---

## Crear Detalle Venta (opcional)
**Método:** `POST`  
**URL:** `http://localhost:3000/api/v1/detalle-venta`

** Body JSON**
```json
{
  "ventaId": 1,
  "productoId": 1,
  "cantidad": 3,
  "subtotal": 1500
}
```

---

## Obtener Datos (GET)

Para obtener la información, simplemente cambia el método `POST` por `GET` en la URL correspondiente.
Para Eliminar la información, simplemente cambia el método `POST` por `delete` en la URL + / {id} <-- la id que desea elimina ejemplo: /api/v1/productos/{id} (igual en el Swagger se especifica todo mejor).



## 📁 Estructura del proyecto

```
src/
 ├── app.module.ts
 ├── main.ts
 ├── auth/
 │    ├── auth.module.ts
 │    ├── auth.service.ts
 │    ├── auth.controller.ts
 │    ├── strategies/jwt.strategy.ts
 │    └── guards/jwt-auth.guard.ts
 │
 ├── usuarios/
 │    ├── usuarios.module.ts
 │    ├── usuarios.service.ts
 │    └── usuarios.controller.ts
 │
 ├── entities/
 │    ├── usuario.entity.ts
 │    ├── productos/
 │    ├── categorias/
 │    ├── ventas/
 │    └── detalle-venta/
```

---


