#include "include/string_validator_plus/string_validator_plus_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "string_validator_plus_plugin.h"

void StringValidatorPlusPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  string_validator_plus::StringValidatorPlusPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
