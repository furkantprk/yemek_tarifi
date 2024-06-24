import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Yemek Tarifi'),
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
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.deepOrange,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: ekranGenisligi,
                height: ekranYuksekligi / 3,
                child: Image.asset("resimler/manisakebabi.jpg")),
            Text(
              "Manisa Kebabı",
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: ekranYuksekligi / 20),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: ekranGenisligi / 50),
                    child: ElevatedButton(
                      onPressed: () {
                        print("Beğenilere eklendi.");
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green),
                      ),
                      child: Text(
                        "Beğen",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: ekranGenisligi / 50),
                    child: ElevatedButton(
                      onPressed: () {
                        print("Yorum yapılıyor...");
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red),
                      ),
                      child: Text(
                        "Yorum Yap",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: ekranGenisligi / 20, bottom: ekranGenisligi / 10),
              child: Text(
                "Dana ve kuzu eti karışık olarak çift kıyılmak suretiyle kıyma haline getirilir."
                "Tuzlanıp iyice yoğrularak düzgün ve fazla kalın olmayacak bir şekil verilir."
                "Kebaplar odun kömürü ateşinde pişirilirken, pideler de aynı ateşte ısıtılarak hafif kızartılır."
                "Domates ve biberler de aynı ateşte hafif közlenir. Kızaran pideler servis tabağına alınarak kare kare kesilir."
                "Pişmiş olan kebaplar da şekilleri bozulmadan düzgün bir şekilde pidelerin üzerine alınır."
                "Kızdırılmış tereyağı gezdirilir, maydanoz ve sumak serpilir. Közlenmiş domates ve biberle süslenip, soğan salatası ile birlikte servis yapılır.",
                style: TextStyle(
                  fontSize: ekranGenisligi / 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
