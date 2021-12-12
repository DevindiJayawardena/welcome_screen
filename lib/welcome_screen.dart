import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(35),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text(
                  'Welcome!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Skip',
                  style: TextStyle(
                    fontSize : 18,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),

            SizedBox(
              height : 25,
            ),

            Container(
              child: const Text(
                'eMajlis App is a platform shows professionals around UAE and we connect like-minded people to share meaningful career insights and help them achieve their professional goals.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  height: 1.3,
                  fontSize: 14,
                ),
              ),
            ),

            SizedBox(
              height : 25,
            ),

            Row(
              children: [
                const Text(
                  'Profile Score',
                  style : TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),

            SizedBox(
              height : 25,
            ),

            Container(
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.amber,
              ),
              padding: EdgeInsets.all(15),
              child: Text(
                'eMajlis App is a platform shows professionals around UAE and we connect like-minded people to share meaningful career insights and help them achieve their professional goals.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight : FontWeight.normal,
                ),
              ),
            ),

            SizedBox(
              height : 25,
            ),





            SizedBox(
              height : 25,
            ),

            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'View Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical : 20.0, horizontal: 50.0),
                primary: Colors.black,
                textStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
