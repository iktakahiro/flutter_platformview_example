package com.example.flutter_platformview_example
import io.flutter.plugin.common.PluginRegistry.Registrar

object SecondWidgetPlugin {
    fun registerWith(registrar: Registrar) {
        registrar
                .platformViewRegistry()
                .registerViewFactory(
                        "plugins/second_widget", SecondWidgetFactory(registrar.messenger()))
    }
}