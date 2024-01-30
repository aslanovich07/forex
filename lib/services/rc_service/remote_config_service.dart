import 'package:firebase_remote_config/firebase_remote_config.dart';

sealed class RCService {
  static final rc = FirebaseRemoteConfig.instance;

  static Future<void> init() async {
    await rc.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(minutes: 1),
      minimumFetchInterval: const Duration(minutes: 1),
    ));

    await rc.setDefaults(const {
      "isDark": true,
    });
  }

  static bool get mode {
    return rc.getBool("isDark");
  }

  static Future<void> activate() async {
    await rc.fetchAndActivate();
    print(rc.lastFetchStatus);
  }
}
