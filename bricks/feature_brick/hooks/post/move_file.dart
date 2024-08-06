import 'dart:io' as io;

import 'package:mason/mason.dart';

import '../pre/available_platform.dart';

Future<void> runMoveFileGenerated(HookContext context) async {
  final appName = (context.vars['appName'] as String).snakeCase;
  final featureName = (context.vars['feature_name'] as String).snakeCase;
  final platforms = context.vars['platform'] as List<dynamic>;
  final parsedPlatforms = parsePlatforms(platforms.map((e) => e as String));
  print('platforms : $parsedPlatforms');
  var result = await io.Process.run(
      'mv', [featureName, '${platforms.first}/$appName/lib/src/feature']);

  io.stdout.write(result.stdout);
  io.stderr.write(result.stderr);
}