import 'package:clean_architeture/app/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:clean_architeture/app/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:clean_architeture/app/domain/entities/car_entity.dart';
import 'package:clean_architeture/app/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:clean_architeture/app/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Deve retornar uma instância de carro quando passado qualquer cor', () {
    GetCarrosPorCorUsecase usecase = GetCarrosPorCorUsecaseImp(
      GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDatasourceImp()),
    );
    var result = usecase('preto');
    late CarroEntity resultExpect;
    result.fold(
      (l) => null,
      ((r) => resultExpect = r),
    );
    expect(resultExpect, isInstanceOf<CarroEntity>());
  });
  test('Deve retornar um carro de 4 portas de qualquer cor exceto vermelho',
      () {
    GetCarrosPorCorUsecase usecase = GetCarrosPorCorUsecaseImp(
      GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDatasourceImp()),
    );
    var result = usecase('verde');
    late CarroEntity resultExpect;
    result.fold(
      (l) => null,
      ((r) => resultExpect = r),
    );
    expect(resultExpect.qtdPortas, 2);
  });
}
