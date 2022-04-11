import 'package:flutter/material.dart';
import 'inbox.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/inbox':
        return MaterialPageRoute(builder: (_) => Inbox());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text('Error page')),
      );
    });
  }
}
