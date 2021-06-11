import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Container(height: 350, color: Colors.blueAccent)),
        Expanded(child: Container(height: 350, color: Colors.blueGrey)),
      ],
    );
  }
}
