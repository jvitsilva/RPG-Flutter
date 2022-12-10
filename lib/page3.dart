import 'package:flutter/material.dart';
import 'package:rpg/personagem.dart';

void main(List<String> args) {}

// main p/ testar se o contrutor de map estava funcionando, remover depois

class Page3 extends StatelessWidget {
  Page3({Key? key}) : super(key: key);

  Personagem p1 = Personagem.fromMap(personagens[0]);
  Personagem p2 = Personagem.fromMap(personagens[1]);
  Personagem p3 = Personagem.fromMap(personagens[2]);
  Personagem p4 = Personagem.fromMap(personagens[3]);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      // ignore: prefer_const_constructors
      child: Center(
        child: Container(
          width: 400,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // ignore: prefer_const_constructors
                    Center(
                      child: const Text(
                        'Personagens',
                        style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 255, 255, 255)),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Color.fromARGB(255, 1, 73, 17),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: SizedBox(
                  width: 300,
                  height: 150,
                  child: Center(
                      child: Text(
                    "${p1.toString()}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
                ),
              ),
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Color.fromARGB(255, 1, 73, 17),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: SizedBox(
                  width: 300,
                  height: 150,
                  child: Center(
                      child: Text(
                    "${p2.toString()}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
                ),
              ),
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Color.fromARGB(255, 1, 73, 17),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: SizedBox(
                  width: 300,
                  height: 150,
                  child: Center(
                      child: Text(
                    "${p3.toString()}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
                ),
              ),
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Color.fromARGB(255, 1, 73, 17),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: SizedBox(
                  width: 300,
                  height: 150,
                  child: Center(
                      child: Text(
                    "${p4.toString()}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
