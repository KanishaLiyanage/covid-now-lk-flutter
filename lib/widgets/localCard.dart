import 'package:flutter/material.dart';

class LocalCasesCard extends StatelessWidget {
  const LocalCasesCard({
    Key? key,
    required this.localTotalCases,
    required this.localNewCases,
    required this.localActiveCases,
    required this.localDeaths,
  }) : super(key: key);

  final String localTotalCases;
  final String localNewCases;
  final String localActiveCases;
  final String localDeaths;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 0.04 * size.width),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  width: 0.3 * size.width,
                  height: 0.16 * size.width,
                  margin: EdgeInsets.all(0.02 * size.width),
                  //total cases
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        localTotalCases,
                        style: TextStyle(
                          color: Color(0xFF004581),
                        ),
                      ),
                      SizedBox(height: 0.01 * size.width),
                      Text(
                        "Total Cases",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF5689C0),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
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
                ),
                Container(
                  width: 0.3 * size.width,
                  height: 0.16 * size.width,
                  margin: EdgeInsets.all(0.02 * size.width),
                  //today new cases
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        localNewCases,
                        style: TextStyle(
                          color: Color(0xFF004581),
                        ),
                      ),
                      SizedBox(height: 0.01 * size.width),
                      Text(
                        "New Cases",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF5689C0),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
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
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(0.02 * size.width),
                  width: 0.3 * size.width,
                  height: 0.16 * size.width,
                  child: Column(
                    //today active cases
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        localActiveCases,
                        style: TextStyle(
                          color: Color(0xFF004581),
                        ),
                      ),
                      SizedBox(height: 0.01 * size.width),
                      Text(
                        "Active Cases",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF5689C0),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
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
                ),
                Container(
                  margin: EdgeInsets.all(0.02 * size.width),
                  width: 0.3 * size.width,
                  height: 0.16 * size.width,
                  //today deaths
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        localDeaths,
                        style: TextStyle(
                          color: Color(0xFF004581),
                        ),
                      ),
                      SizedBox(height: 0.01 * size.width),
                      Text(
                        "Deaths",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF5689C0),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
