import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'is_ipad_platform_interface.dart';

/// An implementation of [IsIpadPlatform] that uses method channels.
class MethodChannelIsIpad extends IsIpadPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('is_ipad');

  @override
  Future<bool> isIpad() async {
    final isIpad = await methodChannel.invokeMethod<bool>('isIpad');
    return isIpad ?? false;
  }
}
