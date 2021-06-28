import 'package:flutter/material.dart';
import 'package:tatli_cesitleri_270621/Views/Menues/1_Favorites.dart';

class deneme extends StatelessWidget {
  const deneme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("denemeler"),
      ),
      body: Column(
        children: [
          Container(
            child: ElevatedButton(
              onPressed: () {},
              child: Text("deneme"),
            ),
          ),
          Container(
            child: Expanded(
              child: TextButton(onPressed: () {}, child: Text("Absürt")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 150),
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Listeye giriş"),
              style: ElevatedButton.styleFrom(
                //buton arkaplan rengi
                primary: Colors.pink,
                //buton yazı ve tıklama efekt renkleri
                onPrimary: Colors.green,
                //gölge uzaklıgı
                elevation: 5.0,
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Favorites()));
              },
              child: Text("favoriler"))
        ],
      ),
    );
  }
}
