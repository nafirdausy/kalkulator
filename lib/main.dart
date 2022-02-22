import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));
}

class MyApp extends StatefulWidget{
  const MyApp ({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  int hasil=0, pertama=0, kedua=0;
    tambah(){
      setState(() {
        pertama = int.parse(controller1.text);
        kedua = int.parse(controller2.text);
        hasil = pertama + kedua;
      });
    }

    kurang(){
      setState(() {
        pertama = int.parse(controller1.text);
        kedua = int.parse(controller2.text);
        hasil = pertama - kedua;
      });
    }

    bagi(){
      setState(() {
        pertama = int.parse(controller1.text);
        kedua = int.parse(controller2.text);
        hasil = pertama ~/ kedua;
      });
    }

    kali(){
      setState(() {
        pertama = int.parse(controller1.text);
        kedua = int.parse(controller2.text);
        hasil = pertama * kedua;
      });
    }

    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text('Kalkulator'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                "Hasil Perhitungan : $hasil", 
              style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.w600
              )
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: controller1,
                decoration: InputDecoration(
                  fillColor: Colors.lime[100],
                  filled: true,
                  labelText: "Input Kedua",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: controller2,
                decoration: InputDecoration(
                  fillColor: Colors.lime[100],
                  filled: true,
                  labelText: "Input Kedua",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      tambah();
                      controller1.clear();
                      controller2.clear();
                    }, style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                        child: Ink(
                         decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [Color.fromARGB(255, 69, 118, 224), Color.fromARGB(255, 20, 23, 201)]),
                            borderRadius: BorderRadius.circular(6)
                          ),
                          child: Container(
                            width: 80,
                            height: 30,
                            alignment: Alignment.center,
                            child: Text(
                              '+',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                  ),
                 ElevatedButton(
                    onPressed: (){
                      kurang();
                      controller1.clear();
                      controller2.clear();
                    }, style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                        child: Ink(
                         decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [Color.fromARGB(255, 69, 118, 224), Color.fromARGB(255, 20, 23, 201)]),
                            borderRadius: BorderRadius.circular(6)
                          ),
                          child: Container(
                            width: 80,
                            height: 30,
                            alignment: Alignment.center,
                            child: Text(
                              '-',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  ElevatedButton(
                    onPressed: (){
                      bagi();
                      controller1.clear();
                      controller2.clear();
                    }, style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                        child: Ink(
                         decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [Color.fromARGB(255, 69, 118, 224), Color.fromARGB(255, 20, 23, 201)]),
                            borderRadius: BorderRadius.circular(6)
                          ),
                          child: Container(
                            width: 80,
                            height: 30,
                            alignment: Alignment.center,
                            child: Text(
                              '/',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      kali();
                      controller1.clear();
                      controller2.clear();
                    }, 
                     style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                        child: Ink(
                         decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [Color.fromARGB(255, 69, 118, 224), Color.fromARGB(255, 20, 23, 201)]),
                            borderRadius: BorderRadius.circular(6)
                          ),
                          child: Container(
                            width: 80,
                            height: 30,
                            alignment: Alignment.center,
                            child: Text(
                              'x',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }
}
