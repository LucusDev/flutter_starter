import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsNotifer extends ChangeNotifier {}

final settingsNotiferProvider = ChangeNotifierProvider((ref) {
  return SettingsNotifer();
});
