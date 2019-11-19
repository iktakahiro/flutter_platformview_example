package com.example.flutter_platformview_example

import android.os.Bundle
import io.flutter.app.FlutterActivity
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {
  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    GeneratedPluginRegistrant.registerWith(this)

    FirstWidgetPlugin.registerWith(this.registrarFor("com.example.flutter_platformview_example.FirstWidgetPlugin"))
  }
}
