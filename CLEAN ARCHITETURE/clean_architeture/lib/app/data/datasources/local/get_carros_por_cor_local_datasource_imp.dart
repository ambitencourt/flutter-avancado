import 'package:clean_architeture/app/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:clean_architeture/app/data/dto/carro_dto.dart';
import 'package:dartz/dartz.dart';

class GetCarrosPorCorLocalDatasourceImp implements GetCarrosPorCorDataSource {
  ///Pode se ter aqui um banco local(SQFLITE, HIVE, OBJECTBOX)
  final jsonVermelho = {
    'placa': 'ABC123',
    'qtdportas': 4,
    'valor': 10000.00,
  };
  final jsonAzul = {
    'placa': 'QwE123',
    'qtdportas': 2,
    'valor': 40000.00,
  };
  @override
  //CarroDto call(String cor) {
  ///O código comentado acima foi refatorado para utilizar o DartZ(Para não precisar de um try - catch)
  Either<Exception, CarroDto> call(String cor) {
    try {
      if (cor.contains('vermelho')) {
        return Right(CarroDto.fromMap(jsonVermelho));
      }
      return Right(CarroDto.fromMap(jsonAzul));
    } catch (e) {
      return Left(Exception('Error in datasource'));
    }
  }
}
