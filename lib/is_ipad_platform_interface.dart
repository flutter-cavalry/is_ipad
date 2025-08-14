import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'is_ipad_method_channel.dart';

abstract class IsIpadPlatform extends PlatformInterface {
  /// Constructs a IsIpadPlatform.
  IsIpadPlatform() : super(token: _token);

  static final Object _token = Object();

  static IsIpadPlatform _instance = MethodChannelIsIpad();

  /// The default instance of [IsIpadPlatform] to use.
  ///
  /// Defaults to [MethodChannelIsIpad].
  static IsIpadPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [IsIpadPlatform] when
  /// they register themselves.
  static set instance(IsIpadPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool> isIpad() {
    throw UnimplementedError('isIpad() has not been implemented.');
  }
}
