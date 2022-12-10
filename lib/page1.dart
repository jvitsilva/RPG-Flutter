import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets\\images\\wallpaper.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 150,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // ignore: prefer_const_constructors
                Center(
                  child: const Text(
                    'Seja bem vindo \nao mundo do \nRPG',
                    style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 255, 255, 255)),
                    textAlign: TextAlign.left,
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(
                        IconData(0xf0322, fontFamily: 'MaterialIcons'),
                        color: Colors.white,
                        size: 30,
                      ),
                      const Icon(
                        IconData(0xf039b, fontFamily: 'MaterialIcons'),
                        color: Colors.white,
                        size: 30,
                      ),
                      const Icon(
                        IconData(0xf021d, fontFamily: 'MaterialIcons'),
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets\\images\\pngwing.png',
                  color: Color.fromARGB(255, 255, 255, 255),
                  width: 80,
                  height: 50),
            ],
          ),
        ],
      ),
    );
  }
}
