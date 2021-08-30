import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:water_schedule/models/consume_report.dart';
import 'package:water_schedule/utils/functions.dart';
import 'package:water_schedule/utils/constants.dart' as Constants;
import 'package:fluttericon/font_awesome5_icons.dart' as Icons;

class ConsumeWaterReport extends StatefulWidget {
  const ConsumeWaterReport({Key? key}) : super(key: key);

  @override
  _ConsumeWaterReportState createState() => _ConsumeWaterReportState();
}

class _ConsumeWaterReportState extends State<ConsumeWaterReport> {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height * 0.85;
    final _width = MediaQuery.of(context).size.width * 0.95;

    return FutureBuilder(
      future: getJsonData(Constants.consumeReaderEndpoint),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          var _consumeReportList = [];

          for (var consume in json.decode(snapshot.data.toString())) {
            _consumeReportList.add(ConsumeReport.fromJson(consume));
          }

           print('list lenght: ${_consumeReportList.length}');

          return Scaffold(
            backgroundColor: Theme.of(context).backgroundColor,
            body: Center(
              child: Container(
                height: _height,
                width: _width,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListView.builder(
                        padding: const EdgeInsets.all(5),
                        itemCount: _consumeReportList.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Icon(Icons.FontAwesome5.clock),
                            title: Text(
                              'Consumo Faturado: ${_consumeReportList[index].billedConsumption}\n'
                              'Consumo Medido: ${_consumeReportList[index].measuredConsumption}\n'
                              'Data de leitura: ${_consumeReportList[index].dateRead}\n'
                              'Leitura: ${_consumeReportList[index].read}\n'
                              'Média de consumo: ${_consumeReportList[index].averageConsumption}\n'
                              'Referência: ${_consumeReportList[index].reference}\n',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16),
                            ),
                            subtitle: Text(
                              'Consumos!',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 12),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        } else {
          return Container(
            height: 0,
            width: 0,
          );
        }
      },
    );
  }
}
