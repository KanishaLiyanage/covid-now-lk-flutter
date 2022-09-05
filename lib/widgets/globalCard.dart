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
    return Container(
      margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
      padding: EdgeInsets.all(10),
      width: double.infinity,
      height: 200,
      //world status today
      child: Column(
        children: [
          Text(
            "Global Status",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    child: Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text(
                        globalNewCases,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("New Cases"),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    child: Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text(
                        globalRecovered,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Recovered"),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    child: Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text(
                        globalDeaths,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Deaths"),
                ],
              ),
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}
