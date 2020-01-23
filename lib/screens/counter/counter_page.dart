import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  CounterPage({Key key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('Desenhando página');
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CounterMessage(),
            CounterDisplay(this._counter),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

// ---------- SUB WIDGETS

class CounterMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Desenhando mensagem');
    return Text(
      'You have pushed the button this many times:',
    );
  }
}

class CounterDisplay extends StatelessWidget {
  final int value;

  CounterDisplay(this.value);

  @override
  Widget build(BuildContext context) {
    print('Desenhando contador $value');
    return Text(
      '$value',
      style: Theme.of(context).textTheme.display1,
    );
  }
}
