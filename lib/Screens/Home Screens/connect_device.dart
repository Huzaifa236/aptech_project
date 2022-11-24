import 'package:flutter/material.dart';

class ConnectDevice extends StatelessWidget {
  const ConnectDevice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Text("ConnectDevice",style: TextStyle(fontSize: 30),),
        ],
      ),
    );
  }
}
