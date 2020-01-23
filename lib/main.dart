import 'package:flutter/material.dart';
import 'package:flutter_mobx_samples/routes.dart';
import 'package:flutter_mobx_samples/widgets/app_drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MobX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter MobX Samples'),
      ),
      drawer: AppDrawer(),
      body: Center(
          child: Text(
        'Repositório de aprendizado para MobX',
      )),
    );
  }
}
