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
                      Text(localTotalCases),
                      SizedBox(height: 0.01 * size.width),
                      Text(
                        "Total Cases",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
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
                      Text(localNewCases),
                      SizedBox(height: 0.01 * size.width),
                      Text(
                        "New Cases",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
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
                      Text(localActiveCases),
                      SizedBox(height: 0.01 * size.width),
                      Text(
                        "Active Cases",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
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
                      Text(localDeaths),
                      SizedBox(height: 0.01 * size.width),
                      Text(
                        "Deaths",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
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
