import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'MyApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              //border
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      //agar text rata tengah
                      alignment: Alignment.center,
                      color: Colors.white,
                      child: const Text('BERITA TERKINI'),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      //agar text rata tengah
                      alignment: Alignment.center,
                      color: Colors.white,
                      child: const Text('PERTANDINGAN HARI INI'),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.purple)),
              height: 250,
              child: Expanded(
                  child: Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'images/sepakbola.jpg',
                  fit: BoxFit.fill,
                ),
              )),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.purple)),
              // jarak antara row atas dengan yang bawah
              padding: const EdgeInsets.all(10.0),
              child: Expanded(
                  child: Container(
                child: const Text('Costa Mendekat Ke Palmeiras'),
              )),
            ),
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.purple)),
              // jarak antara row atas dengan yang bawah
              padding: const EdgeInsets.all(0.0),
              child: Expanded(
                  child: Container(
                // agar warnanya bisa lebarnya full
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10.0),
                color: Colors.purple,
                child: const Text('Transfer'),
              )),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 100,
                        child: Image.asset('images/sepakbola2.jpg'),
                      )),
                      Expanded(
                        child: Container(
                          child: const Text(
                              'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat'),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.purple)),
                  //agar text rata kiri
                  alignment: Alignment.centerLeft,
                  child: const Text('Barcelona Feb 13,2021'),
                ),
                // memberi jarak pada bagian atas
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.purple)),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 100,
                        child: Image.asset('images/sepakbola2.jpg'),
                      )),
                      Expanded(
                          child: Container(
                        child: const Text(
                            'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat'),
                      ))
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }
}
