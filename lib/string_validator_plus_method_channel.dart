import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'string_validator_plus_platform_interface.dart';

/// An implementation of [StringValidatorPlusPlatform] that uses method channels.
class MethodChannelStringValidatorPlus extends StringValidatorPlusPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('string_validator_plus');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
