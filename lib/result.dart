import 'package:flutter/material.dart';

class BMIResult extends StatefulWidget {
  final String result;
  final int age;
  final bool ismale;
  final int wieght;
  final double height;
  BMIResult(
      {super.key,
      required this.result,
      required this.age,
      required this.ismale,
      required this.wieght,
      required this.height});

  @override
  State<BMIResult> createState() => _BMIResultState();
}

class _BMIResultState extends State<BMIResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 167, 150),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 20, 70, 110),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'BMI Result',
          style: TextStyle(
              fontSize: 24, color: Colors.white, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Gender : ${widget.ismale ? 'Male' : 'Female'}',
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'Height : ${widget.height}',
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'Age : ${widget.age}',
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'Weight : ${widget.wieght}',
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'Result : ${widget.result}',
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
