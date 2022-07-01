import 'package:clean_architeture/app/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:clean_architeture/app/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:clean_architeture/app/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:clean_architeture/app/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:clean_architeture/app/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:clean_architeture/app/presentation/controllers/carro_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class CarroPage extends StatelessWidget {
  CarroPage({Key? key}) : super(key: key);

  var controller = GetIt.I.get<CarroController>();
  //Esse código comentado foi antes da refatoração e utilização do Get_it
  //   GetCarrosPorCorUsecaseImp(
  //     GetCarrosPorCorRepositoryImp(
  //       GetCarrosPorCorLocalDatasourceImp(),
  //     ),
  //   ),
  //   SalvarCarroFavoritoUsecaseImp(
  //     SalvarCarroFavoritoRepositoryImp(),
  //   ),
  // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [Text(controller.carro.placa)],
        ),
      ),
    );
  }
}
