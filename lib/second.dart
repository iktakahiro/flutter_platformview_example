import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

typedef SecondWidgetCreatedCallback = void Function(
    SecondWidgetController controller);

class SecondWidget extends StatefulWidget {
  const SecondWidget({
    Key key,
    this.onSecondWidgetWidgetCreated,
  }) : super(key: key);

  final SecondWidgetCreatedCallback onSecondWidgetWidgetCreated;

  @override
  State<StatefulWidget> createState() => _SecondWidgetState();
}

class _SecondWidgetState extends State<SecondWidget> {
  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return AndroidView(
        viewType: 'plugins/second_widget',
        onPlatformViewCreated: _onPlatformViewCreated,
        creationParamsCodec: const StandardMessageCodec(),
      );
    }
    return const Text('iOS platform version is not implemented yet.');
  }

  void _onPlatformViewCreated(int id) {
    if (widget.onSecondWidgetWidgetCreated == null) {
      return;
    }
    widget.onSecondWidgetWidgetCreated(SecondWidgetController._(id));
  }
}

class SecondWidgetController {
  SecondWidgetController._(int id)
      : _channel = MethodChannel('plugins/second_widget_$id');

  final MethodChannel _channel;

  Future<void> ping() async {
    return _channel.invokeMethod('ping');
  }
}
