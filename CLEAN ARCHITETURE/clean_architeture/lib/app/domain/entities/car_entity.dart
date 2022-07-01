///Para cada elemento deve ser desenvolvido uma entidade;
///Só pode haver imports de outras entidades somente;
///Se chamar outra entidade deverá ser um List<OutraEntity> por exemplo;
class CarroEntity {
  String placa;
  int qtdPortas;
  double valor;
  CarroEntity({
    required this.placa,
    required this.qtdPortas,
    required this.valor,
  });

//Lógica provisória da entidade
  double get valorReal {
    return valor * qtdPortas;
  }

  setLogica() {
    if (valorReal > 30000.00) {
      valor *= 2;
    }
  }
}
