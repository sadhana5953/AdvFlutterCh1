import 'package:flutter/material.dart';

class theme extends StatefulWidget {
  const theme({super.key});

  @override
  State<theme> createState() => _themeState();
}

class _themeState extends State<theme> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
          body: Center(
        child: Container(
          height: 600,
          width: 350,
          decoration: BoxDecoration(
            color: isDark ? Color(0xff1c1c1e) : Colors.white,
            borderRadius: BorderRadius.circular(11),
            border:
                isDark ? null : Border.all(color: Colors.black12, width: 2.5),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                'Yo Man!',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "It's a simple example of\ndark theme",
                style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 70,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isDark = false;
                  });
                },
                child: Container(
                  height: 75,
                  width: 320,
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    color: Color(0xFFFDCB00),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Light Icon",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isDark = true;
                  });
                },
                child: Container(
                  height: 75,
                  width: 320,
                  margin: EdgeInsets.only(top: 18),
                  decoration: BoxDecoration(
                    color: Color(0xFFFB3B31),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Dark Icon",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}

bool isDark = false;
