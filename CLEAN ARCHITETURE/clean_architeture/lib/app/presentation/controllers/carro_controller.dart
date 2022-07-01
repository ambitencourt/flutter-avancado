import 'package:clean_architeture/app/domain/entities/car_entity.dart';
import 'package:clean_architeture/app/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:clean_architeture/app/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';

///Onde será responsável por fazer roteamento, chamada do usecases(Regra de negócio), services
///

class CarroController {
  /// Vamos expor a Interface(usecase)
  /// Quem vai enviar a classe implementada será quem chamar o controller(Quinto princípio do Solid)
  final GetCarrosPorCorUsecase _getCarrosPorCorUsecase;
  final SalvarCarroFavoritoUsecase _salvarCarroFavoritoUsecase;

  CarroController(
    this._getCarrosPorCorUsecase,
    this._salvarCarroFavoritoUsecase,
  ) {
    getCarrosPorCor('vermelho');
  }
  late CarroEntity carro;
  getCarrosPorCor(String cor) {
    var result = _getCarrosPorCorUsecase(cor);
    result.fold(
      (error) => print(
        error.toString(),
      ),
      (success) => carro = success,
    );
  }

  SalvarCarroFavorito(CarroEntity carro) async {
    var result = await _salvarCarroFavoritoUsecase(carro);
  }
}
