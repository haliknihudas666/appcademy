class Post {
  final String text;
  final int number;
  final bool found;
  final String type;

  Post({this.text, this.number, this.found, this.type});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      text: json['text'],
      number: json['number'],
      found: json['found'],
      type: json['type'],
    );
  }
}
