import { Entity, PrimaryGeneratedColumn, Column, OneToMany } from 'typeorm';
import { Ventas } from 'src/ventas/entities/venta.entity';

@Entity()
export class Usuarios {
  @PrimaryGeneratedColumn()
  id_usuario: number;

  @Column()
  nombre: string;

  @Column({ unique: true })
  email: string;

  @Column({ name: 'contrasena' })
  password: string;

  @Column({
    type: 'enum',
    enum: ['cliente', 'empleado', 'admin'],
  })
  rol: string;

  @OneToMany(() => Ventas, (venta) => venta.usuario)
  ventas: Ventas[];
}
