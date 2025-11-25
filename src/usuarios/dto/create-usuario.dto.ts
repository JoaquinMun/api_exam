import { IsEmail, IsEnum, IsNotEmpty, IsString } from 'class-validator';

export enum Roles {
  cliente = 'cliente',
  empleado = 'empleado',
  admin = 'admin',
}

export class CreateUsuarioDto {
  @IsString()
  @IsNotEmpty()
  nombre: string;

  @IsEmail()
  email: string;

  @IsString()
  @IsNotEmpty()
  password: string;

  @IsEnum(Roles)
  rol: Roles;
}