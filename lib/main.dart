import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String str = '_ _ _ _';
  final h = TextEditingController();
  final w = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/bg1.png'), fit: BoxFit.fill)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'BMI CALCULATOR',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                decoration: InputDecoration(
                  label: Text('Height in cm?'),
                  hintText: 'Enter Your Height',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(width: 2, color: Colors.pink),
                  ),
                ),
                controller: h,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  label: Text('Weight in kg?'),
                  hintText: 'Enter Your Weight',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                    borderSide: BorderSide(width: 2, color: Colors.pink),
                  ),
                ),
                controller: w,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    str =
                      '${ (int.parse(w.text) / ((int.parse(h.text) / 100) * (int.parse(h.text) / 100))).toStringAsFixed(3)}';
                        
                  });
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                  child: Text(
                    'Caclulate',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 300,
              ),
              Text(
                'YOUR BMI',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              Container(
                child: Text(
                  str,
                  style: TextStyle(fontSize: 60,fontWeight: FontWeight.w700,color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
