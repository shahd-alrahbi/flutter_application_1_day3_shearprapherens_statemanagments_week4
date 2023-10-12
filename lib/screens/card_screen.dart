import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            itemCount:
            3;
            return Card(
              child: Column(
                children: [
                  Image.network(
                      "data:image/jpeg;base64,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"),
                  Text("Tilte"),
                  Text("category"),
                  Text("price"),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
