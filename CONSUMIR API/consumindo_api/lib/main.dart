import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'API/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void> get() async {
    final Response response;
    Dio dio = Dio();
    //API Simpsons
    response =
        await dio.get('https://thesimpsonsquoteapi.glitch.me/quotes?count=30');

    var dados = (response.data as List).map((item) {
      return Simpsons.fromJson(item);
    }).toList();
    print(dados);
  }

  @override
  Widget build(BuildContext context) {
    Simpsons simpsons = Simpsons();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consumindo API'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  get();
                });
              },
              child: const Text(
                'API',
              ),
            ),
            Text(simpsons.quote.toString()),
          ],
        ),
      ),
    );
  }
}
