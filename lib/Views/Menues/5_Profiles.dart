import 'package:flutter/material.dart';

class Profiles extends StatelessWidget {
  static const routeName = "/5";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil Sayfası"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 150,
              width: 200,
              child: Container(
                child: Text("Profil Sayfası"),
                decoration: BoxDecoration(shape: BoxShape.rectangle),
              ),
            )
          ],
        ),
      ),
    );
  }
}
