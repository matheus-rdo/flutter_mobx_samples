import 'package:flutter/material.dart';
import 'package:flutter_mobx_samples/screens/counter/counter_page.dart';
import 'package:flutter_mobx_samples/screens/counter_mobx/counter_page_mobx.dart';

import 'main.dart';

class Routes {
  static const String home = '/';
  static const String counter = '/counter';
  static const String mobxCounter = 'mobx/counter';
}

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  Routes.home: (BuildContext context) => MyHomePage(),
  Routes.counter: (BuildContext context) => CounterPage(),
  Routes.mobxCounter: (BuildContext context) => MobxCounterPage()
};
