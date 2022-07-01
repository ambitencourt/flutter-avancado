import 'package:clean_architeture/app/data/dto/carro_dto.dart';
import 'package:dartz/dartz.dart';

abstract class GetCarrosPorCorDataSource {
  //CarroDto call(String cor);
  ///O código comentado acima foi refatorado para utilizar o DartZ(Para não precisar de um try - catch)
  Either<Exception, CarroDto> call(String cor);
}
