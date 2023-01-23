import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double sliderValue = 4;
  double vki =0  ;
  var hesapla = "Hesapla";
  int turkce = 0 ;
  int mat = 0;
  int sos = 0;
  int fen = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("assets/yks.png"),
              ),
              SizedBox(height: 30),
              Text(
                "Türkçe Netiniz = " + turkce.toString()+" net",
                style: const TextStyle(
                  fontSize: 28.0,
                ),
              ),
              Slider(
                value: turkce.toDouble(),
                onChanged: (value) {
                  setState(() {
                    turkce = value.toInt();
                  });
                },
                min: 0,
                max: 40,
              ),
              SizedBox(height: 40),
              Text(
                "Matematik Netiniz = " + mat.toString()+" net",
                style: const TextStyle(
                  fontSize: 28.0,
                ),
              ),
              Slider(
                value: mat.toDouble(),
                onChanged: (value) {
                  setState(() {
                    mat = value.toInt();
                  });
                },
                min: 0,
                max: 40,
              ),
              SizedBox(height: 40),

              Text(
                "Sosyal Netiniz = " + sos.toString()+" net",
                style: const TextStyle(
                  fontSize: 28.0,
                ),
              ),
              Slider(
                value: sos.toDouble(),
                onChanged: (value) {
                  setState(() {
                    sos = value.toInt();
                  });
                },
                min: 0,
                max: 40,
              ),
              SizedBox(height: 40),
              Text(
                "Fen Netiniz = " + fen.toString()+" net",
                style: const TextStyle(
                  fontSize: 28.0,
                ),
              ),
              Slider(
                value: fen.toDouble(),
                onChanged: (value) {
                  setState(() {
                    fen = value.toInt();
                  });
                },
                min: 0,
                max: 40,
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: () {
                  setState(() {
                    vki = (turkce*3.125+mat*3.125+sos*3.125+fen*3.125) ;
                    vki = vki*1;

                  });

                },
                child:   Card(

                  child: Text("Hesapla",style: TextStyle(fontSize: 28),),

                ),
              ),
              SizedBox(height: 25,),

              Row(
                children: [SizedBox(width: 100,),
                  Text("TYT Puanınız = ",style: TextStyle(fontSize: 28),),
                ],
              ),
              SizedBox(height: 15,),
              Text("$vki",style: TextStyle(fontSize: 28,color: Colors.blue),),
SizedBox(height: 80),
            ],

          ),
        ),
      ),
    );
  }
}
