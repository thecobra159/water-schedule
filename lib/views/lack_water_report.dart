import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart' as Icons;
import 'package:water_schedule/models/lack_report.dart';
import 'package:water_schedule/utils/functions.dart';
import 'package:water_schedule/utils/constants.dart' as Constants;

class LackWaterReport extends StatefulWidget {
  const LackWaterReport({Key? key}) : super(key: key);

  @override
  _LackWaterReportState createState() => _LackWaterReportState();
}

class _LackWaterReportState extends State<LackWaterReport> {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height * 0.85;
    final _width = MediaQuery.of(context).size.width * 0.95;

    return FutureBuilder(
      future: getJsonData(Constants.lackWaterEndpoint),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          var _lackReport =
              LackReport.fromJson(json.decode(snapshot.data.toString()));
          return Scaffold(
            backgroundColor: Theme.of(context).backgroundColor,
            body: Center(
              child: Container(
                height: _height,
                width: _width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: Icon(Icons.FontAwesome5.clock),
                      title: Text(
                        '${_lackReport.cutHour} - ${_lackReport.cutDate}',
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            fontSize: 16),
                      ),
                      subtitle: Text(
                        'Horário de corte!',
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                            fontSize: 12),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.FontAwesome5.clock),
                      title: Text(
                        '${_lackReport.normalizationHour} - ${_lackReport.normalizationDate}',
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            fontSize: 16),
                      ),
                      subtitle: Text(
                        'Horário de normalização!',
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                            fontSize: 12),
                      ),
                    ),
                  ],
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
