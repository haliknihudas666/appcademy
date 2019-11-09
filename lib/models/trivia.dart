class Post {
  final String text;
  final String number;
  final String found;
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
