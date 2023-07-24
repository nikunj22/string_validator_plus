#ifndef FLUTTER_PLUGIN_STRING_VALIDATOR_PLUS_PLUGIN_H_
#define FLUTTER_PLUGIN_STRING_VALIDATOR_PLUS_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace string_validator_plus {

class StringValidatorPlusPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  StringValidatorPlusPlugin();

  virtual ~StringValidatorPlusPlugin();

  // Disallow copy and assign.
  StringValidatorPlusPlugin(const StringValidatorPlusPlugin&) = delete;
  StringValidatorPlusPlugin& operator=(const StringValidatorPlusPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace string_validator_plus

#endif  // FLUTTER_PLUGIN_STRING_VALIDATOR_PLUS_PLUGIN_H_
