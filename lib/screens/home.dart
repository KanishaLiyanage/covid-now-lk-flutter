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
  var globalNewCases = "6510016";
  var globalRecovered = "225913434";
  var globalDeaths = "5047622";
  var localTotalCases = "670127";
  var localActiveCases = "453";
  var localNewCases = "";
  var localDeaths = "4";

  var url = "https://www.hpb.health.gov.lk/api/get-current-statistical";

  Dio dio = Dio();

  Future<void> getCovidData() async {
    var response = await dio.get("$url");
    try {
      if (response.statusCode == 200) {
        print(response.data);
        localNewCases = response.data['local_new_cases'];
        print(localNewCases);
        final snackBar = SnackBar(
          content: const Text('Data has been updated!'),
          backgroundColor: (Color(0xFF018ABD)),
          action: SnackBarAction(
            label: 'dismiss',
            onPressed: () {},
            textColor: Colors.white,
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else {
        final snackBar = SnackBar(
          content: const Text('Server is not responding.'),
          backgroundColor: (Colors.red),
          action: SnackBarAction(
            label: 'dismiss',
            onPressed: () {},
            textColor: Colors.white,
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    } catch (e) {
      print(e);
      final snackBar = SnackBar(
        content: const Text('There is an error in fetching data.'),
        backgroundColor: (Colors.red),
        action: SnackBarAction(
          label: 'dismiss',
          onPressed: () {},
          textColor: Colors.white,
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
                children: [
                  Builder(
                    builder: (BuildContext context) {
                      return IconButton(
                        icon: Icon(
                          Icons.list_rounded,
                          size: 50,
                          color: Color(0xFF5689C0),
                        ),
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        tooltip: MaterialLocalizations.of(context)
                            .openAppDrawerTooltip,
                      );
                    },
                  ), //app drawer icon
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1588862081167-d5b98006637e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YmF0bWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60"),
                  ), //profile
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 0.06 * size.width),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        "Good Morning,",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF004581),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //good morning
            Container(
              padding: EdgeInsets.symmetric(horizontal: 0.07 * size.width),
              child: Row(
                children: [
                  Text(
                    "Elise",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF004581),
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
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF5689C0),
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
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.fromLTRB(
            0.05 * size.width,
            0.1 * size.height,
            0.05 * size.width,
            0.05 * size.width,
          ),
          color: Color(0xFF5689C0),
          child: Material(
            color: Color(0xFF5689C0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1588862081167-d5b98006637e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YmF0bWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60'),
                ),
                SizedBox(height: 0.1 * size.width),
                Container(
                  height: 0.2 * size.height,
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "userName",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "userEmail",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(color: Colors.white),
                SizedBox(height: 0.265 * size.height),
                ListTile(
                  leading: Icon(
                    Icons.logout_rounded,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Logout",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
