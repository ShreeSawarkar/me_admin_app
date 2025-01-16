class Category {
  String? sId;
  String? categoryName;
  String? categoryDescription;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Category(
      {this.sId,
        this.categoryName,
        this.categoryDescription,
        this.createdAt,
        this.updatedAt,
        this.iV});

  Category.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    categoryName = json['categoryName'];
    categoryDescription = json['categoryDescription'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['categoryName'] = this.categoryName;
    data['categoryDescription'] = this.categoryDescription;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}