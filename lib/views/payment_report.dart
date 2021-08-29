import 'package:flutter/material.dart';

class PaymentReport extends StatefulWidget {
  const PaymentReport({Key? key}) : super(key: key);

  @override
  _PaymentReportState createState() => _PaymentReportState();
}

class _PaymentReportState extends State<PaymentReport> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
      child: Column(
        children: [
          Text(
            'Data:',
            style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
                fontSize: 13),
          ),
          Text(
            'Data:',
            style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
                fontSize: 13),
          ),
        ],
      ),
    ),);
  }
}
