import 'package:clean_architeture/app/domain/entities/car_entity.dart';

///DTO - Data Transfer Object
///Camada onde serão feitos os fromJson e toJson, fromMap e toMap

class CarroDto extends CarroEntity {
  String placa;
  int qtdPortas;
  double valor;
  CarroDto({
    required this.placa,
    required this.qtdPortas,
    required this.valor,
  }) : super(placa: placa, qtdPortas: qtdPortas, valor: valor);

  Map toMap() {
    return {
      'placa': this.placa,
      'qtdportas': this.qtdPortas,
      'valor': this.valor,
    };
  }

  static CarroDto fromMap(Map map) {
    return CarroDto(
      placa: map['placa'],
      qtdPortas: map['qtdportas'],
      valor: map['valor'],
    );
  }
}
