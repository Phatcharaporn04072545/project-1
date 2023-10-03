import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> itemNames = [
    "ของใช้",
    "ความรู้สึก",
    "กิน",
    "กิจกรรมยามว่าง",
    "คำพูด",
    "รายการที่ 6",
    "รายการที่ 7",
    "รายการที่ 8"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "APHASIA HELP CARE",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "หมวดหมู่",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          GridView.count(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            physics: ScrollPhysics(), // เอา NeverScrollableScrollPhysics() ออก
            crossAxisCount: 2,
            childAspectRatio: 0.9,
            shrinkWrap: true,
            children: [
              for (int i = 0; i < itemNames.length; i++)
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: i % 2 == 0 ? Colors.green : Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 8,
                      ),
                    ],
                  ),

                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "Page1");
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Text(
                            itemNames[i],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
