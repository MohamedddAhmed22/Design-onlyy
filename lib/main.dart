import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Design(),
    );
  }
}

class Design extends StatefulWidget {
  const Design({super.key});

  @override
  State<Design> createState() => _DesignState();
}

class _DesignState extends State<Design> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     floatingActionButton: FloatingActionButton(onPressed: () {},
     backgroundColor: Colors.yellow,
     child:Icon(Icons.add, size: 45 , color: Colors.black, ) ,
     ),
      
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.only(right: 200, top: 90),
                child: Text(
                  "NotePad",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                )),
            SizedBox(
              height: 35,
            ),
            Container(
                margin: EdgeInsets.only(top: 20, left: 20),
                width: 360,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    border: Border.all(color: Colors.black)),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        size: 23,
                      ),
                      hintText: "Search notes",
                      hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                  readOnly: true,
                  onTap: () {},
                  cursorColor: Colors.grey,
                )),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Column(
                
                children: [
                  Container( margin: EdgeInsets.only(right: 130, top: 20),
                    child: Text("Today`s grocery List" ,
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500), 
                    )),
                  Container( margin: EdgeInsets.only(right: 100, top: 2),
                    child: Text("March 7, 2023 9:50 PM" ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500), ))
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(225, 0, 228, 8),
              ),
              margin: EdgeInsets.only(left: 20),
              width: 350,
              height: 90,
            ),
            SizedBox(height: 20,),
            Container(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container( margin: EdgeInsets.only(right: 100, top: 20, left: 18),
                    child: Text("Rich dad Poor dad quotes" ,
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500), 
                    )),
                  Container( margin: EdgeInsets.only(right: 100, top: 2,),
                    child: Text("March 7, 2023 9:50 PM" ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500), ))
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.yellow[500],
              ),
              margin: EdgeInsets.only(left: 20),
              width: 350,
              height: 90,
            )
          ],
        ),
      ),
    );
  }
}
