import 'package:clean_architeture/app/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:dartz/dartz.dart';

import '../../domain/entities/car_entity.dart';
import '../../domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  final GetCarrosPorCorDataSource _getCarrosPorCorDataSource;

  GetCarrosPorCorRepositoryImp(this._getCarrosPorCorDataSource);
  @override
  // CarroEntity call(String cor) {
  ///O código comentado acima foi refatorado para utilizar o DartZ(Para não precisar de um try - catch)
  Either<Exception, CarroEntity> call(String cor) {
    return _getCarrosPorCorDataSource(cor);
  }
}
