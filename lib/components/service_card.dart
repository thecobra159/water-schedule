import 'package:flutter/material.dart';
import 'package:water_schedule/models/service.dart';

class ServiceCard extends StatefulWidget {
  final Key? key;
  final Service service;

  ServiceCard(this.key, this.service);

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      color: Colors.white70,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, widget.service.serviceRoute);
        },
        child: Container(
          color: Colors.transparent,
          alignment: Alignment.center,
          padding: EdgeInsets.fromLTRB(15, 25, 15, 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                widget.service.serviceImage,
                width: 32,
                height: 32,
              ),
              Text(
                widget.service.serviceTitle,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
              Text(
                widget.service.serviceDescription,
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                    fontSize: 13),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
