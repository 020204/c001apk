// lib/utils/android_channel.dart
import 'package:flutter/services.dart';

class AndroidChannel {
  static const MethodChannel _channel = 
      MethodChannel('samples.flutter.dev/channel');

  // 调用 Android 端的 excludeFromRecents 方法
  static Future<void> excludeFromRecents(bool exclude) async {
    try {
      await _channel.invokeMethod('excludeFromRecents', {'exclude': exclude});
    } on PlatformException catch (e) {
      print("Failed to exclude from recents: '${e.message}'.");
    }
  }

  
