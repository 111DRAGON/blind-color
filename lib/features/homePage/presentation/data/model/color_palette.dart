class ColorPalette {
  int? results;
  int? page;
  List<ColorInfo>? data;

  ColorPalette({this.results, this.page, this.data});

  ColorPalette.fromJson(Map<String, dynamic> json) {
    results = json['results'];
    page = json['page'];
    if (json['data'] != null) {
      data = <ColorInfo>[];
      json['data'].forEach((v) {
        data!.add(new ColorInfo.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['results'] = this.results;
    data['page'] = this.page;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ColorInfo {
  String? sId;
  String? name;
  String? color1;
  String? color2;
  String? color3;
  String? color4;
  String? slug;
  Category? category;
  String? createdAt;
  String? updatedAt;
  int? iV;

  ColorInfo(
      {this.sId,
      this.name,
      this.color1,
      this.color2,
      this.color3,
      this.color4,
      this.slug,
      this.category,
      this.createdAt,
      this.updatedAt,
      this.iV});

  ColorInfo.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    color1 = json['color1'];
    color2 = json['color2'];
    color3 = json['color3'];
    color4 = json['color4'];
    slug = json['slug'];
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['color1'] = this.color1;
    data['color2'] = this.color2;
    data['color3'] = this.color3;
    data['color4'] = this.color4;
    data['slug'] = this.slug;
    if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}

class Category {
  String? name;

  Category({this.name});

  Category.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    return data;
  }
}
