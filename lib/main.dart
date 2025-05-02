import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> imageList = [
    'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Death_of_Afzal_Khan.jpg/800px-Death_of_Afzal_Khan.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Shivaji_Maharaj_and_Baji_Prabhu_at_Pawan_Khind.jpg/1200px-Shivaji_Maharaj_and_Baji_Prabhu_at_Pawan_Khind.jpg',
    'https://images.prismic.io/indiahike/ffdb3e06-84b5-4f6f-b0bf-753f7d3540d3_umberkhind-trek-banner-image-indiahikes.jpg?auto=compress,format',
    'https://upload.wikimedia.org/wikipedia/commons/d/dc/Sack_of_Surat_by_Shivaji.jpg'
  ];

  List<Map<String, String>> objList = [
    {"title": "1.Battle of Pratapgad", "date": "10 May 1659"},
    {"title": "2.Battle of Pavan Khind", "date": "13 July 1660"},
    {"title": "3.Battle of Umberkhind", "date": "2 February 1661"},
    {"title": "4.Sacking of Surat", "date": "5 January 1664"}
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Shivaji Maharaj Mohim 🚩",
            style: TextStyle(
              fontSize: 27,
              color: Colors.white,
              fontFamily: 'Times New Roman',
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 80, 79, 77),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 350,
                width: 350,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    imageList[currentIndex],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  if (currentIndex < imageList.length - 1) {
                    currentIndex++;
                  } else {
                    currentIndex = 0;
                  }
                  setState(() {});
                },
                child: Text('Next', style: TextStyle(fontSize: 30)),
              ),
              SizedBox(height: 30),
              Text(
                "Title: ${objList[currentIndex]['title']}",
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Times New Roman',
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Date: ${objList[currentIndex]['date']}",
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Times New Roman',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
