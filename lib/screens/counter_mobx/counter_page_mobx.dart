import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mobx_samples/store/counter/counter_store.dart';
import 'package:provider/provider.dart';

class MobxCounterPage extends StatefulWidget {
  MobxCounterPage({Key key}) : super(key: key);

  @override
  _MobxCounterPageState createState() => _MobxCounterPageState();
}

class _MobxCounterPageState extends State<MobxCounterPage> {
  CounterStore _counterStore = CounterStore();

  @override
  Widget build(BuildContext context) {
    final store = CounterStore();
    print('Desenhando página');
    return MultiProvider(
      providers: [
        Provider<CounterStore>(create: (_) => _counterStore),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text('Contador MobX'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CounterMessage(),
              CounterDisplay(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _counterStore.increment,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
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
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<CounterStore>(context);
    print('Desenhando contador ${store.counter}');
    return Observer(
      builder: (_) {
        return Text(
          '${store.counter}',
          style: Theme.of(context).textTheme.display1,
        );
      },
    );
  }
}
