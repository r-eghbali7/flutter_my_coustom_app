import 'package:flutter/material.dart';
import 'details_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/details':
      final index = settings.arguments as int;
      return MaterialPageRoute(builder: (_) => DetailsPage(index: index));

    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(body: Center(child: Text('صفحه یافت نشد'))),
      );
  }
}
