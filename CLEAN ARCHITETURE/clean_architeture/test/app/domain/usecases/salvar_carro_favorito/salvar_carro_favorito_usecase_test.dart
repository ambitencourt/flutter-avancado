import 'package:clean_architeture/app/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:clean_architeture/app/domain/entities/car_entity.dart';
import 'package:clean_architeture/app/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:clean_architeture/app/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Espero que salve o carro como favorito com sucesso', () async {
    SalvarCarroFavoritoUsecase usecase =
        SalvarCarroFavoritoUsecaseImp(SalvarCarroFavoritoRepositoryImp());

    var carro = CarroEntity(placa: 'QWE0987', qtdPortas: 4, valor: 60000);
    var result = await usecase(carro);
    late bool resultExpect;
    result.fold(
      (l) => null,
      ((r) => resultExpect = r),
    );
    expect(resultExpect, true);
  });
  test(
      'Espero que não salve o carro como favorito quando o valor for menor ou igual a 0',
      () async {
    SalvarCarroFavoritoUsecase usecase =
        SalvarCarroFavoritoUsecaseImp(SalvarCarroFavoritoRepositoryImp());

    var carro = CarroEntity(placa: 'QWE0987', qtdPortas: 4, valor: 0);
    var result = await usecase(carro);
    late bool resultExpect;
    result.fold(
      (l) => null,
      ((r) => resultExpect = r),
    );
    expect(resultExpect, false);
  });
}
