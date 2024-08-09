import 'dart:io';

import 'package:mason/mason.dart';

Future<void> runRemoveFolderGenerated(HookContext context, String name) async {
  final appName = (context.vars['appName'] as String).snakeCase;
  final featureName = (context.vars['feature_name'] as String).snakeCase;
  final platforms = context.vars['platform'] as List<dynamic>;

  final removingFilesDone =
      context.logger.progress('Removing $name folder ...');
  final dir = Directory(
      '${platforms.first}/$appName/lib/src/feature/$featureName/$name');
  if (dir.existsSync()) {
    await dir.delete(recursive: true);
    removingFilesDone.complete();
  } else {
    removingFilesDone.fail('Folder $name does not exist.');
  }
}
