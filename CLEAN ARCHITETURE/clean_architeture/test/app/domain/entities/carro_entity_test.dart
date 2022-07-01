import 'package:clean_architeture/app/domain/entities/car_entity.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  ///A descrição do teste é de preferência em inglês e deve ser bem informativa
  ///O padrão de description é baseado no Should(Deveria ser)
  test('Espero que a entidade não seja nula', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtdPortas: 2, valor: 40000);
    expect(carroEntity, isNotNull);
  });
  test('Espero que a quantidade de portas seja 2', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtdPortas: 2, valor: 40000);
    expect(carroEntity.qtdPortas, 2);
  });
  test('Espero que o valor real seja 80000', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtdPortas: 2, valor: 40000);
    var resultado = 80000;
    expect(carroEntity.valorReal, resultado);
  });
  test('Espero que o valor real seja 0', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtdPortas: 0, valor: 40000);
    var resultado = 0;
    expect(carroEntity.valorReal, resultado);
  });
  test('Espero que a lógica seja 80000', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtdPortas: 2, valor: 40000);
    var resultado = 80000;
    carroEntity.setLogica();
    expect(carroEntity.valor, resultado);
  });
}
