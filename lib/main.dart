import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EzyMedik App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff183DC1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/logo.png'),
            SizedBox(
              height: 250,
            ),
            // Spacer(
            //   flex: 2,
            // ),
            Container(
              height: 55,
              width: MediaQuery.of(context).size.width / 1.35,
              decoration: BoxDecoration(
                color: Color(0xff18A0FB),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 55,
              width: MediaQuery.of(context).size.width / 1.35,
              decoration: BoxDecoration(
                color: Color(0xff18A0FB),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
            ),
            SizedBox(
              height: 20 * 2,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/hand.png'),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Login with fingerprint or Face ID',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
