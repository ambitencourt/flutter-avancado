import 'package:dartz/dartz.dart';

import '../entities/car_entity.dart';

///Dentro de domínio não tem implementação de repositório
///

abstract class SalvarCarroFavoritoRepository {
  //Future<bool> call(CarroEntity carroEntity);
  ///O código comentado acima foi refatorado para utilizar o DartZ(Para não precisar de um try - catch)
  Future<Either<Exception, bool>> call(CarroEntity carroEntity);
}
