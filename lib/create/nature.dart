class Nature {
  final String name;

  final String url;

  Nature(
    this.name,
    this.url,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Nature && runtimeType == other.runtimeType && url == other.url;

  @override
  int get hashCode => url.hashCode;
}
