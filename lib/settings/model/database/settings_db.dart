import 'package:flutter_starter/core/models/db.dart';
import 'package:flutter_starter/settings/model/models/settings.dart';

class SettingsDb extends Db<Settings> {
  SettingsDb({
    required String name,
  }) : super(name: name);
}
