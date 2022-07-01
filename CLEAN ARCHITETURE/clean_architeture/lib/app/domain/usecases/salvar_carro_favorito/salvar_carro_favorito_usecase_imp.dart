import 'package:dartz/dartz.dart';

import '../../entities/car_entity.dart';
import '../../repositories/salvar_carro_favorito_repository.dart';
import 'salvar_carro_favorito_usecase.dart';

///Caso chame o UsecaseImp precisará passar uma instância do SalvarCarroFavoritoRepository
class SalvarCarroFavoritoUsecaseImp implements SalvarCarroFavoritoUsecase {
  final SalvarCarroFavoritoRepository _salvarCarroFavoritoRepository;
  SalvarCarroFavoritoUsecaseImp(this._salvarCarroFavoritoRepository);
  @override
  //Future<bool> call(CarroEntity carroEntity) async {
  ///O código comentado acima foi refatorado para utilizar o DartZ(Para não precisar de um try - catch)
  Future<Either<Exception, bool>> call(CarroEntity carroEntity) async {
    //Caso queira chamar uma lógica na implementação, basta setar o call da entidade e passar a função
    carroEntity.setLogica();
    return await _salvarCarroFavoritoRepository(carroEntity);
  }
}
