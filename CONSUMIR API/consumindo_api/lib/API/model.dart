class Simpsons {
  String? quote;
  String? character;
  String? image;
  String? characterDirection;

  Simpsons({
    this.quote,
    this.character,
    this.image,
    this.characterDirection,
  });

  Simpsons.fromJson(Map<String, dynamic> json) {
    quote = json['quote'];
    character = json['character'];
    image = json['image'];
    characterDirection = json['characterDirection'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['quote'];
    data['character'];
    data['image'];
    data['value'];

    return data;
  }
}
