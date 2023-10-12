import 'package:flutter/material.dart';
import 'package:flutter_application_1_day3_shearprapherens_statemanagments/screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 10)).then((value) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ));
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.01,
            ),
            Image.network(
              "https://i.pinimg.com/236x/d4/af/32/d4af32f12d3a77002ccf247908c4ecc0.jpg",
              width: 200,
              height: 200,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.all(20),
              width: 200,
              child: Text(
                "Welcome ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontFamily: "bold"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
