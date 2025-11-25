import { Entity, PrimaryGeneratedColumn, Column, ManyToOne } from 'typeorm';
import { Categorias } from 'src/categorias/entities/categoria.entity';

@Entity()
export class Productos {
  @PrimaryGeneratedColumn()
  id_producto: number;

  @Column()
  nombre_producto: string;

  @Column()
  descripcion_producto: string;

  @Column()
  precio: number;

  @Column()
  stock: number;

  @ManyToOne(() => Categorias, (categoria) => categoria.productos)
  categoria: Categorias;
}
