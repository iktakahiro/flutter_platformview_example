import 'package:flutter/material.dart';
import './first.dart';
import './second.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter PlatformView Example'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const <Widget>[
          Card(
            child: SizedBox(
              height: 200,
              child: FirstWidget(),
            ),
          ),
          Card(
            child: SizedBox(
              height: 200,
              child: SecondWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
