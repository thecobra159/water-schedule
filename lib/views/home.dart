import 'package:flutter/material.dart';
import 'package:water_schedule/components/service_card.dart';
import 'package:water_schedule/models/service.dart';
import 'package:water_schedule/utils/constants.dart' as Contants;
import 'package:water_schedule/utils/routes.dart' as Routes;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery
        .of(context)
        .size
        .height * 0.85;
    final _width = MediaQuery
        .of(context)
        .size
        .width * 0.95;

    final List<Service> _services = [];

    _services.add(Service("Falta d'água", "Horários de corte e volta d'água!",
        Routes.lackReport, "assets/images/logo.png"));
    _services.add(Service("Consumo d'água", "Relatório de consumo d'água!",
        Routes.consumeReport, "assets/images/graph.png"));
    _services.add(Service("Pagamentos", "Relatório de pagamento!",
        Routes.paymentReport, "assets/images/document.png"));

    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .primaryColor,
      body: Center(
        child: Container(
          height: _height,
          width: _width,
          alignment: Alignment.center,
          margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
          ),
          child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
              padding: EdgeInsets.all(5),
              children:
                  List.generate(_services.length, (index) {
                    return ServiceCard(Key('service_$index'), _services[index]);
              })),
        ),
      ),
    );
  }
}
