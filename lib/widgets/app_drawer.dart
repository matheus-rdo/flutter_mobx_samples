import 'package:flutter/material.dart';
import 'package:flutter_mobx_samples/routes.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        AppDrawerHeader(),
        DrawerItem(
          iconData: Icons.outlined_flag,
          text: 'Contador padrão',
          routeName: Routes.counter,
        ),
        DrawerItem(
          iconData: Icons.add_circle_outline,
          text: 'Contador MobX',
          routeName: Routes.mobxCounter,
        )
      ],
    ));
  }
}

class AppDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blue, Colors.blue[100]])),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Flutter MobX',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Colors.white),
            ),
            Text(
              'Matheus Henrique Raymundo',
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
              ),
            )
          ]),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final iconData;
  final text;
  final routeName;

  DrawerItem({this.iconData, this.text, this.routeName});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(iconData),
      title: Text(text),
      onTap: () {
        Navigator.of(context).pop();
        var screen = routes[routeName](context);
        Navigator.push(
            context,
            PageRouteBuilder(
                opaque: false,
                pageBuilder: (context, _, __) {
                  return screen;
                },
                transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                }));
      },
    );
  }
}
