import 'package:flutter/material.dart';
import 'package:pinkscreen/signupscreen.dart';

import 'customwidgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE6CFE2),
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Log In',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff72567A),
                ),
              ),
            ),
            const SizedBox(
              height: 120.0,
            ),
            const klabeltext(
              label: 'Email Address',
            ),
            const ktextfield(
              hinttext: 'example@gmail.com',
            ),
            const SizedBox(
              height: 30.0,
            ),
            const klabeltext(
              label: 'Password',
            ),
            const ktextfield(
              hinttext: 'password',
              suffix: Icon(
                Icons.remove_red_eye_sharp,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 190.0, top: 5.0),
              child: Text('Forgotten password?'),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const kbutton(
              text: 'Log In',
            ),
            const SizedBox(
              height: 150.0,
            ),
            Row(
              children: const [
                Flexible(
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text('Or continue with'),
                SizedBox(
                  width: 20,
                ),
                Flexible(
                  child: Divider(
                    thickness: 2,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/google.png',
                  height: 24,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Image.asset(
                  'images/facebook.png',
                  height: 24.0,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Image.asset(
                  'images/Instagram.png',
                  height: 24.0,
                ),
                const SizedBox(
                  width: 10.0,
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()));
                },
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Dont have an account? ',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                          color: Color(0xffA97798),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
