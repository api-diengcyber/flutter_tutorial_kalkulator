import 'package:flutter/material.dart';

class HalamanAwal extends StatefulWidget {
  const HalamanAwal({Key? key}) : super(key: key);

  @override
  _HalamanAwal createState() => _HalamanAwal();
}

class _HalamanAwal extends State<HalamanAwal> {
  String numbers = "";

  clickNumber(int number) {
    setState(() {
      numbers = number.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color.fromARGB(255, 171, 214, 122),
          child: Column(
            children: [
              Container(child: Text(numbers)),
              // tombol2
              // baris pertama
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      clickNumber(1);
                    },
                    child: Text("1"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      clickNumber(2);
                    },
                    child: Text("2"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      clickNumber(3);
                    },
                    child: Text("3"),
                  ),
                  ElevatedButton(onPressed: () {}, child: Icon(Icons.add)),
                ],
              ),
              // baris kedua
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      clickNumber(4);
                    },
                    child: Text("4"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      clickNumber(5);
                    },
                    child: Text("5"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      clickNumber(6);
                    },
                    child: Text("6"),
                  ),
                  ElevatedButton(onPressed: () {}, child: Icon(Icons.remove)),
                ],
              ),
              // baris ketiga
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      clickNumber(7);
                    },
                    child: Text("7"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      clickNumber(8);
                    },
                    child: Text("8"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      clickNumber(9);
                    },
                    child: Text("9"),
                  ),
                  ElevatedButton(onPressed: () {}, child: Icon(Icons.close)),
                ],
              ),
              // baris keempat
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.arrow_back),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      clickNumber(0);
                    },
                    child: Text("0"),
                  ),
                  ElevatedButton(onPressed: () {}, child: Text("=")),
                  ElevatedButton(onPressed: () {}, child: Text("/")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
