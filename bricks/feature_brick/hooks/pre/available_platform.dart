Iterable<AvailablePlatform> parsePlatforms(Iterable<String> platforms) {
  return platforms.map(AvailablePlatform.fromString);
}

enum AvailablePlatform {
  packages,
  app;

  const AvailablePlatform();

  factory AvailablePlatform.fromString(String os) => switch (os) {
        'packages' => AvailablePlatform.packages,
        'app' => AvailablePlatform.app,
        _ => throw UnsupportedPlatformException(os),
      };

  @override
  String toString() => name;
}

class UnsupportedPlatformException implements Exception {
  const UnsupportedPlatformException(this.os);
  final String os;
  @override
  String toString() => "This platform isn't supported by this brick yet: $os";
}
