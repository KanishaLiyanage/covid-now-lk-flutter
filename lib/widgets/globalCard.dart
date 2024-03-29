import 'package:flutter/material.dart';

class GlobalCasesCard extends StatelessWidget {
  const GlobalCasesCard({
    Key? key,
    required this.globalNewCases,
    required this.globalRecovered,
    required this.globalDeaths,
  }) : super(key: key);

  final String globalNewCases;
  final String globalRecovered;
  final String globalDeaths;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
      padding: EdgeInsets.all(0.05 * size.width),
      width: double.infinity,
      height: 0.26 * size.height,
      //world status today
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Global Cases",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF004581),
            ),
          ),
          SizedBox(height: 0.02 * size.height),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    maxRadius: 0.1 * size.width,
                    backgroundColor: Color(0xFF5689C0),
                    child: CircleAvatar(
                      maxRadius: 0.09 * size.width,
                      backgroundColor: Colors.white,
                      child: Text(
                        globalNewCases,
                        style: TextStyle(
                          fontSize: 0.03 * size.width,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF004581),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 0.01 * size.height),
                  Text(
                    "New Cases",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF5689C0),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    maxRadius: 0.1 * size.width,
                    backgroundColor: Color(0xFF5689C0),
                    child: CircleAvatar(
                      maxRadius: 0.09 * size.width,
                      backgroundColor: Colors.white,
                      child: Text(
                        globalRecovered,
                        style: TextStyle(
                          fontSize: 0.0265 * size.width,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF004581),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 0.01 * size.height),
                  Text(
                    "Recovered",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF5689C0),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    maxRadius: 0.1 * size.width,
                    backgroundColor: Color(0xFF5689C0),
                    child: CircleAvatar(
                      maxRadius: 0.09 * size.width,
                      backgroundColor: Colors.white,
                      child: Text(
                        globalDeaths,
                        style: TextStyle(
                          fontSize: 0.03 * size.width,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF004581),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 0.01 * size.height),
                  Text(
                    "Deaths",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF5689C0),
                    ),
                  ),
                ],
              ),
            ],
          ),
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
