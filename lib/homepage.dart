import 'package:flutter/material.dart';
import 'package:pinkscreen/customwidgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE6CFE2),
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0, left: 20.0, right: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                arrowback(),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  'HomePage',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 200),
            Row(
              children: [const Text('Hello Jerry'), Image.asset('images/wave.png')],
            ),
            const SizedBox(
              height: 350,
            ),
            const kbutton(text: 'Log Out')
          ],
        ),
      ),
    );
  }
}
