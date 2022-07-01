import 'package:clean_architeture/app/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:clean_architeture/app/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:clean_architeture/app/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:clean_architeture/app/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  GetCarrosPorCorDataSource dataSource = GetCarrosPorCorLocalDatasourceImp();
  GetCarrosPorCorRepository repository =
      GetCarrosPorCorRepositoryImp(dataSource);
  test('Devolva um carro', () {
    var result = repository('qualquer');
    expect(result, isNotNull);
  });
}
