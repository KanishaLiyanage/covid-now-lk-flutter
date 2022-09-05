import 'package:flutter/material.dart';

class LKCard extends StatelessWidget {
  const LKCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
      padding: EdgeInsets.all(0.04 * size.width),
      //LK today
      child: Row(
        children: [
          Container(
            //flag
            // width: 70,
            // height: 70,
            width: 0.2 * size.width,
            height: 0.08 * size.width,
            margin: EdgeInsets.only(right: 0.01 * size.width),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/LK flag.png"),
              ),
            ),
          ),
          Container(
            child: Column(
              //country
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sri Lanka",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF004581),
                  ),
                ),
                Text(
                  "LK",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF018ABD),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            child: Text(
              "Today",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF018ABD),
              ),
            ),
          ), //date
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
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
