import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorites Sayfası"),
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
                  overlayColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered))
                        return Colors.black.withOpacity(0.04);
                      if (states.contains(MaterialState.focused) ||
                          states.contains(MaterialState.pressed))
                        return Colors.orange.withOpacity(0.12);
                      return Colors.yellow; // Defer to the widget's default.
                    },
                  ),
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
