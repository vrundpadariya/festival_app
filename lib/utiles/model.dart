class Posts {
  String quote;
  String authore;

  Posts({
    required this.authore,
    required this.quote,
  });

  factory Posts.fromMap({required Map Data}) {
    return Posts(
      quote: Data['quote'],
      authore: Data['authore'],
    );
  }
}
