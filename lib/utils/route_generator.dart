import 'package:flutter/material.dart';
import 'package:water_schedule/views/consume_water_report.dart';
import 'package:water_schedule/views/home.dart';
import 'package:water_schedule/utils/routes.dart' as Routes;
import 'package:water_schedule/views/lack_water_report.dart';
import 'package:water_schedule/views/payment_report.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => Home());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => Home());
      case Routes.paymentReport:
        return MaterialPageRoute(builder: (_) => PaymentReport());
      case Routes.lackReport:
        return MaterialPageRoute(builder: (_) => LackWaterReport());
      case Routes.consumeReport:
        return MaterialPageRoute(builder: (_) => ConsumeWaterReport());
      default:
        return _routeError();
    }
  }

  static Route<dynamic> _routeError() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Tela não encontrada!"),
        ),
        body: Center(
          child: Text("Tela não encontrada!"),
        ),
      );
    });
  }
}