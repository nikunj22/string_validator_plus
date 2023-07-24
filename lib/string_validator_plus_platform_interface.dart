import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'string_validator_plus_method_channel.dart';

abstract class StringValidatorPlusPlatform extends PlatformInterface {
  /// Constructs a StringValidatorPlusPlatform.
  StringValidatorPlusPlatform() : super(token: _token);

  static final Object _token = Object();

  static StringValidatorPlusPlatform _instance =
      MethodChannelStringValidatorPlus();

  /// The default instance of [StringValidatorPlusPlatform] to use.
  ///
  /// Defaults to [MethodChannelStringValidatorPlus].
  static StringValidatorPlusPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [StringValidatorPlusPlatform] when
  /// they register themselves.
  static set instance(StringValidatorPlusPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
