import 'package:dartz/dartz.dart';

import '../../entities/car_entity.dart';

abstract class SalvarCarroFavoritoUsecase {
  //Nesse caso de call, o call será um Future<bool> com retorno do tipo CarroEntity
  // Future<bool> call(CarroEntity carroEntity);
  ///O código comentado acima foi refatorado para utilizar o DartZ(Para não precisar de um try - catch)
  Future<Either<Exception, bool>> call(CarroEntity carroEntity);
}
