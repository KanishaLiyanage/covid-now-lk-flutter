import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

import '../widgets/globalCard.dart';
import '../widgets/lkCard.dart';
import '../widgets/localCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String globalNewCases = "6510016";
  String globalRecovered = "225913434";
  String globalDeaths = "5047622";
  String localTotalCases = "670127";
  String localActiveCases = "453";
  String localNewCases = "";
  String localDeaths = "4";

  var url = "https://www.hpb.health.gov.lk/api/get-current-statistical";

  Dio dio = Dio();

  Future<void> getCovidData() async {
    try {
      var response = await dio.get("$url");
      //print(response.data);
      localNewCases = response.data.local_new_cases;
      print(localNewCases);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFEAEBED),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 0.02 * size.width),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(25, 70, 25, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.list_rounded,
                    size: 50,
                    color: Color(0xFF5689C0),
                  ), //app drawer icon
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1588862081167-d5b98006637e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YmF0bWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60"),
                  ), //profile
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 0.05 * size.width),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        "Good Morning,",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //good morning
            Container(
              padding: EdgeInsets.all(0.05 * size.width),
              child: Row(
                children: [
                  Text(
                    "Elise",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              // height: 465,
              height: 0.6 * size.height,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GlobalCasesCard(
                        globalNewCases: globalNewCases,
                        globalRecovered: globalRecovered,
                        globalDeaths: globalDeaths),
                    SizedBox(height: 0.02 * size.height),
                    const LKCard(),
                    LocalCasesCard(
                        localTotalCases: localTotalCases,
                        localNewCases: localNewCases,
                        localActiveCases: localActiveCases,
                        localDeaths: localDeaths),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: ElevatedButton(
                //Refresh Btn
                onPressed: getCovidData,
                child: Container(
                  width: 0.4 * size.width,
                  height: 0.02 * size.height,
                  child: Text(
                    "Refresh",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.05),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
