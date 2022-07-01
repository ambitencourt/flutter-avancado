import 'package:clean_architeture/app/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:clean_architeture/app/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:clean_architeture/app/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:clean_architeture/app/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:clean_architeture/app/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:clean_architeture/app/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:clean_architeture/app/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:clean_architeture/app/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:clean_architeture/app/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:clean_architeture/app/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:clean_architeture/app/presentation/controllers/carro_controller.dart';
import 'package:get_it/get_it.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;

    //datasources
    ///Chama o registro singleton(terá a mesma instância sempre, como por exemplo carrinho de compras) do data source(contrato/interface) e aplica na sua implementação
    getIt.registerLazySingleton<GetCarrosPorCorDataSource>(
      () => GetCarrosPorCorLocalDatasourceImp(),
    );

    //repositories
    ///O GetCarrosPorCorRepositoryImp espera um DataSource, e como o GetIt já entende como fazer, basta chamar ele
    getIt.registerLazySingleton<GetCarrosPorCorRepository>(
      () => GetCarrosPorCorRepositoryImp(
        getIt(),
      ),
    );

    ///No caso do salvar favorito não espera o datasource
    getIt.registerLazySingleton<SalvarCarroFavoritoRepository>(
      () => SalvarCarroFavoritoRepositoryImp(),
    );

    //usecases
    getIt.registerLazySingleton<GetCarrosPorCorUsecase>(
      () => GetCarrosPorCorUsecaseImp(
        getIt(),
      ),
    );
    getIt.registerLazySingleton<SalvarCarroFavoritoUsecase>(
      () => SalvarCarroFavoritoUsecaseImp(
        getIt(),
      ),
    );

    //controllers
    ///Será utilizado o registerFactory para sempre criar uma nova instância(Muito útil para carregar uma lista de produtos por exemplo)
    ///Ele espera duas instâncias que se resolve facilmente com getIt()
    getIt.registerFactory<CarroController>(
      () => CarroController(
        getIt(),
        getIt(),
      ),
    );
  }
}

// GetCarrosPorCorUsecaseImp(
//       GetCarrosPorCorRepositoryImp(
//         GetCarrosPorCorLocalDatasourceImp(),
//       ),
//     ),
//     SalvarCarroFavoritoUsecaseImp(
//       SalvarCarroFavoritoRepositoryImp(),
//     ),
//   );