import 'package:flutter/material.dart';

class DashboardCard extends StatefulWidget {
  IconData icon;
  String name;
  Color iconColor;

  DashboardCard({required this.icon,required this.name, required this.iconColor});
  

  @override
  State<DashboardCard> createState() => _DashboardCardState();
}

class _DashboardCardState extends State<DashboardCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
    decoration: BoxDecoration(
      boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(49, 101, 103, 103),
          offset: Offset(
            5.0,
            5.0,
          ),
          blurRadius: 10.0,
          spreadRadius: 2.0,
        ), //BoxShadow
      ],
      borderRadius: BorderRadius.circular(10),
      color: const Color(0xffF9FAFA),
    ),
    padding: const EdgeInsets.all(15),
    
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  <Widget>[
        Icon(
         widget.icon,
          color: widget.iconColor,
          size: 30.0,
        ),
        Text(
          widget.name,
          style: TextStyle(color: Color(0xff686E7A), fontSize: 15),
        ),
      ],
    ),
  );
  }
}