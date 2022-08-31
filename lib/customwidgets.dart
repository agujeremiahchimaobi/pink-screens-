import 'package:flutter/material.dart';

class ktextfield extends StatelessWidget {
  const ktextfield({this.hinttext, this.suffix});

  final String? hinttext;
  final dynamic suffix;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, bottom: 7),
      height: 40,
      width: 312,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0), color: Colors.white),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hinttext,
          suffixIcon: suffix,
          hintStyle: const TextStyle(
              fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class klabeltext extends StatelessWidget {
  const klabeltext({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}

class kbutton extends StatelessWidget {
  const kbutton({required this.text, this.ontap});
  final String text;
  final dynamic ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 40.0,
        width: 312,
        decoration: BoxDecoration(
          color: Color(0xffA97798),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 14.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class arrowback extends StatelessWidget {
  const arrowback({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Image.asset(
        'images/arrow.png',
        height: 30.0,
      ),
    );
  }
}
