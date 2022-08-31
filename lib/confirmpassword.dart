import 'package:flutter/material.dart';
import 'package:pinkscreen/homepage.dart';

import 'customwidgets.dart';

class ConfirmPassword extends StatefulWidget {
  const ConfirmPassword({Key? key}) : super(key: key);

  @override
  State<ConfirmPassword> createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE6CFE2),
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                arrowback(),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  'Confirm Sign Up',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff72567A),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            const klabeltext(label: 'First Name'),
            const ktextfield(hinttext: 'write your firstName'),
            const SizedBox(
              height: 20.0,
            ),
            const klabeltext(label: 'Last Name'),
            const ktextfield(hinttext: 'write your lastname'),
            const SizedBox(
              height: 20.0,
            ),
            const klabeltext(label: 'Address'),
            const ktextfield(hinttext: 'write your address'),
            const SizedBox(
              height: 20.0,
            ),
            const klabeltext(label: 'Email Address'),
            const ktextfield(hinttext: 'write your email address'),
            const SizedBox(
              height: 20.0,
            ),
            const klabeltext(label: 'Password'),
            const ktextfield(
                hinttext: 'write your password',
                suffix: Icon(Icons.visibility_off_outlined)),
            const SizedBox(
              height: 20.0,
            ),
            const klabeltext(label: 'Confirm Password'),
            const ktextfield(
                hinttext: 'confirm your password',
                suffix: Icon(Icons.visibility_off_outlined)),
            const SizedBox(
              height: 70.0,
            ),
            kbutton(
              text: 'Confirm Sign Up',
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
