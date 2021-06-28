import 'package:flutter/material.dart';

class Peak extends StatelessWidget {
  const Peak({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Peak Sayfası"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 150,
              width: 200,
              child: Container(
                child: Text("Peak Sayfası"),
                decoration: BoxDecoration(shape: BoxShape.rectangle),
              ),
            )
          ],
        ),
      ),
    );
  }
}
