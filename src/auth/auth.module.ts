import { Module } from '@nestjs/common';
import { JwtModule, JwtModuleOptions } from '@nestjs/jwt';
import { PassportModule } from '@nestjs/passport';
import { ConfigModule, ConfigService } from '@nestjs/config';
import { AuthService } from './auth.service';
import { AuthController } from './auth.controller';
import { JwtStrategy } from './strategies/jwt.strategy';
import { UsuariosModule } from 'src/usuarios/usuarios.module';

@Module({
  imports: [
    ConfigModule,
    UsuariosModule,
    PassportModule,

    JwtModule.registerAsync({
     imports: [ConfigModule],
     inject: [ConfigService],
      useFactory: (cfg: ConfigService): JwtModuleOptions => ({
       secret: cfg.get<string>('JWT_SECRET') || 'default_secret',
       signOptions: {
         expiresIn: Number(cfg.get<string>('JWT_EXPIRES_IN')) || 3600,
        },
      }),
    }),
  ],
  providers: [AuthService, JwtStrategy],
  controllers: [AuthController],
  exports: [AuthService],
})
export class AuthModule {}