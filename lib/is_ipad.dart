import 'is_ipad_platform_interface.dart';

class IsIpad {
  Future<bool> isIpad() {
    return IsIpadPlatform.instance.isIpad();
  }
}
