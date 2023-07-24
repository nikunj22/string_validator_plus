import 'package:flutter_test/flutter_test.dart';
import 'package:string_validator_plus/string_validator_plus_platform_interface.dart';
import 'package:string_validator_plus/string_validator_plus_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockStringValidatorPlusPlatform
    with MockPlatformInterfaceMixin
    implements StringValidatorPlusPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final StringValidatorPlusPlatform initialPlatform =
      StringValidatorPlusPlatform.instance;

  test('$MethodChannelStringValidatorPlus is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelStringValidatorPlus>());
  });

  test('getPlatformVersion', () async {
    MockStringValidatorPlusPlatform fakePlatform =
        MockStringValidatorPlusPlatform();
    StringValidatorPlusPlatform.instance = fakePlatform;
  });
}
