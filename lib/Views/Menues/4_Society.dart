import 'package:flutter/material.dart';

class Society extends StatelessWidget {
  const Society({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Society Sayfası"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 150,
              width: 200,
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {},
                child: Text('TextButton'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
