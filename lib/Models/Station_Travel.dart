class Travel {
  String? id;
  String? title;
  String? description;
  String? rating;
  String? price;
  String? country;
  String? imageUrl;

  Travel(
      {this.id,
        this.title,
        this.description,
        this.rating,
        this.price,
        this.country,
        this.imageUrl});

  Travel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    rating = json['rating'];
    price = json['price'];
    country = json['country'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['rating'] = this.rating;
    data['price'] = this.price;
    data['country'] = this.country;
    data['imageUrl'] = this.imageUrl;
    return data;
  }
}