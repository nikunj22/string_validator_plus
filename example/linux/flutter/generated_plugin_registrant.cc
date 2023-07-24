//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <string_validator_plus/string_validator_plus_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) string_validator_plus_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "StringValidatorPlusPlugin");
  string_validator_plus_plugin_register_with_registrar(string_validator_plus_registrar);
}
