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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          child: Column(
            children: [
              Container(
                width: 150,
                height: 80,
                margin: EdgeInsets.all(10),
                //total cases
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(localTotalCases),
                    SizedBox(height: 5),
                    Text("Total Cases"),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Container(
                width: 150,
                height: 80,
                margin: EdgeInsets.all(10),
                //today new cases
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(localNewCases),
                    SizedBox(height: 5),
                    Text("New Cases"),
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
                margin: EdgeInsets.all(10),
                width: 150,
                height: 80,
                child: Column(
                  //today active cases
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(localActiveCases),
                    SizedBox(height: 5),
                    Text("Active Cases"),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: 150,
                height: 80,
                //today deaths
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(localDeaths),
                    SizedBox(height: 5),
                    Text("Deaths"),
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
    );
  }
}
