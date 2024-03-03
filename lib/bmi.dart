import 'package:flutter/material.dart';

class bmi extends StatefulWidget {
  const bmi({super.key});

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  @override
  Widget build(BuildContext context) {
    String str = '_ _ _ _';
    final h = TextEditingController();
    final w = TextEditingController();
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'BMI CALCULATOR',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Enter Your height',
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                      //label: Text('Height in cm?'),
                      hintText: 'Height in cm?',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(width: 2, color: Colors.pink),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Color(0xFF005506)))),
                  controller: h,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Enter Your Weight',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                      //label: Text('Weight in kg?'),
                      hintText: 'Weight in kg?',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                        borderSide: BorderSide(width: 2, color: Colors.pink),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Color(0xFF005506)))),
                  controller: w,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                str =
                    '${(int.parse(w.text) / ((int.parse(h.text) / 100) * (int.parse(h.text) / 100))).toStringAsFixed(3)}';
              });
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              child: Text(
                'Calculate',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 250,
          ),
          Text(
            'YOUR BMI',
            style: TextStyle(
                fontSize: 40, color: Colors.white, fontWeight: FontWeight.w500),
          ),
          Text(
            str,
            style: TextStyle(
                fontSize: 60, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
