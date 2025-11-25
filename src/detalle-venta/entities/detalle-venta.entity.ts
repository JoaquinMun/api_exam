import { Entity, PrimaryGeneratedColumn, Column, ManyToOne } from 'typeorm';
import { Ventas } from 'src/ventas/entities/venta.entity';
import { Productos } from 'src/productos/entities/producto.entity';

@Entity()
export class DetalleVenta {
  @PrimaryGeneratedColumn()
  id_detalle_venta: number;

  @ManyToOne(() => Ventas, (venta) => venta.detalles)
  venta: Ventas;

  @ManyToOne(() => Productos)
  producto: Productos;

  @Column()
  cantidad: number;

  @Column()
  precio_unitario: number;

  @Column()
  subtotal: number;
}
