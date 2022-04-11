import 'package:flutter/material.dart';
import 'package:navdrawer/nav-drawer.dart';
import 'route.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BelajarNavigationDrawer(),
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}

class BelajarNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[100],
          title: Text("Belajar Drawer Nav"),
        ),
        drawer: DrawerWidget());
    // endDrawer: DrawerWidget());
  }
}
