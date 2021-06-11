import 'package:flutter/material.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(child: Container(
        height: 400,
        color: Colors.blueAccent,))
    ],);
  }
}
