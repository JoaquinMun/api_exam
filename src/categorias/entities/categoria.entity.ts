import { Entity, PrimaryGeneratedColumn, Column, OneToMany } from 'typeorm';
import { Productos } from 'src/productos/entities/producto.entity';

@Entity()
export class Categorias {
  @PrimaryGeneratedColumn()
  id_categoria: number;

  @Column()
  nombre_categoria: string;

  @Column({ nullable: true })
  descripcion_categoria: string;

  @OneToMany(() => Productos, (producto) => producto.categoria)
  productos: Productos[];
}