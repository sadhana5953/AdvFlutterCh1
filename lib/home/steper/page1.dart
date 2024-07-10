import 'package:flutter/material.dart';

class steper extends StatefulWidget {
  const steper({super.key});

  @override
  State<steper> createState() => _steperState();
}

class _steperState extends State<steper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'Flutter Stepper Demo',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Theme(
        data: ThemeData(
          colorScheme: ColorScheme.light(
            primary: Colors.blue, // Connector color when active
            onSurface: Colors.blue, // Connector color when inactive
          ),
        ),
        child: Stepper(
            currentStep: num,
            onStepCancel: () {
              setState(() {
                if (num > 0) {
                  setState(() {
                    num = num - 1;
                  });
                }
              });
            },
            onStepContinue: () {
              if (num == num && num!=2) {
                setState(() {
                  num += 1;
                });
              }
              else
                {
                  Navigator.of(context).pushNamed('/steper');
                }
            },
            onStepTapped: (int index) {
              setState(() {
                num = index;
              });
            },
            steps: <Step>[
              Step(
                  title: Text(
                    "Account",
                    style: TextStyle(color: Colors.black),
                  ),
                  content: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Account Number",
                      hintStyle: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                  )),
              Step(
                  title: Text(
                    "Address",
                    style: TextStyle(color: Colors.black),
                  ),
                  content: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Address",
                      hintStyle: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                  )),
              Step(
                  title: Text(
                    "Mobile Number",
                    style: TextStyle(color: Colors.black),
                  ),
                  content: TextField(
                    decoration: InputDecoration(
                      hintText: "Mobile Number",
                      hintStyle: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                  ))
            ]),
      ),
    );
  }
}

int num = 0;
