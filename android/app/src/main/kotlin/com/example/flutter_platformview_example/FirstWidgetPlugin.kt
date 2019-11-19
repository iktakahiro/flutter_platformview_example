package com.example.flutter_platformview_example
import io.flutter.plugin.common.PluginRegistry.Registrar

object FirstWidgetPlugin {
    fun registerWith(registrar: Registrar) {
        registrar
                .platformViewRegistry()
                .registerViewFactory(
                        "plugins/first_widget", FirstWidgetFactory(registrar.messenger()))
    }
}