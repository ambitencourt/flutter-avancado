import 'package:clean_architeture/app/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:dartz/dartz.dart';

import '../../entities/car_entity.dart';
import 'get_carros_por_cor_usecase.dart';

///A implementação será responsável por retornar o que se espera no usecase

class GetCarrosPorCorUsecaseImp implements GetCarrosPorCorUsecase {
  final GetCarrosPorCorRepository _getCarrosPorCorRepository;

  GetCarrosPorCorUsecaseImp(this._getCarrosPorCorRepository);
  @override
  // CarroEntity call(String cor) {
  ///O código comentado acima foi refatorado para utilizar o DartZ(Para não precisar de um try - catch)
  Either<Exception, CarroEntity> call(String cor) {
    //Aqui é o espaço para informar a lógica da implementação que retornará algo
    return _getCarrosPorCorRepository(cor);
  }
}
