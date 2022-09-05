import 'package:flutter/material.dart';

class LKCard extends StatelessWidget {
  const LKCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
      padding: EdgeInsets.all(10),
      //LK today
      child: Row(
        children: [
          Container(
            //flag
            width: 70,
            height: 70,
            margin: EdgeInsets.only(
              right: 10,
            ),
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
                Text("Sri Lanka"),
                Text("LK"),
              ],
            ),
          ),
          Spacer(),
          Container(
            child: Text("Today"),
          ), //date
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}
