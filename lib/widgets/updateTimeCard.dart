import 'package:flutter/material.dart';

class UpdatedTimeCard extends StatelessWidget {
  String updatedTime = "";

  UpdatedTimeCard({required this.updatedTime});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      padding: EdgeInsets.all(0.02 * size.width),
      //LK today
      child: Column(
        children: [
          Container(
            child: Text(
              "Last Updated on:  " + updatedTime,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ), //date
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
