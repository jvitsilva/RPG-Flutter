import 'package:flutter/material.dart';
import 'regras.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,

      // ignore: prefer_const_constructors
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    'Regras',
                    style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 255, 255, 255)),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Celula(texto: resistencia),
          Celula(texto: vulnerabilidade),
          Celula(texto: imunidade),
          Celula(texto: pv)
        ],
      ),
    );
  }
}

class Celula extends StatelessWidget {
  final String texto;

  const Celula({Key? key, required this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var anguloCard = const RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(12)));
    return Card(
      child: Text(
        texto,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
