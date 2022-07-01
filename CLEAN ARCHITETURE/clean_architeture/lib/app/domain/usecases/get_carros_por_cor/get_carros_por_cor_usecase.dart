import 'package:clean_architeture/app/domain/entities/car_entity.dart';
import 'package:dartz/dartz.dart';

///O caso de uso é o que se espera que conseguir com a entidade;
///O método call instanciará na implementação do usecase.
abstract class GetCarrosPorCorUsecase {
  // CarroEntity call(String cor);
  ///O código comentado acima foi refatorado para utilizar o DartZ(Para não precisar de um try - catch)
  Either<Exception, CarroEntity> call(String cor);
}
