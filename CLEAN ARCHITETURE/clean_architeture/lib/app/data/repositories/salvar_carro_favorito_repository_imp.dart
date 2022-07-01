import 'package:dartz/dartz.dart';

import '../../domain/entities/car_entity.dart';
import '../../domain/repositories/salvar_carro_favorito_repository.dart';

///A implementação fica em data, a interface dessa implementação fica em domain
class SalvarCarroFavoritoRepositoryImp
    implements SalvarCarroFavoritoRepository {
  @override
  //Future<bool> call(CarroEntity carroEntity) async {
  ///O código comentado acima foi refatorado para utilizar o DartZ(Para não precisar de um try - catch)
  Future<Either<Exception, bool>> call(CarroEntity carroEntity) async {
    try {
      return Right(carroEntity.valor > 0);
    } catch (e) {
      return Left(Exception('repository Error'));
    }
  }
}
