class ProductResponse {
  int id;
  String gender;
  String masterCategory;
  String subCategory;
  String articleType;
  String baseColour;
  String season;
  int year;
  String usage;
  String productDisplayName;
  int productPrice;
  String productDescription;

  ProductResponse(
      {this.id,
        this.gender,
        this.masterCategory,
        this.subCategory,
        this.articleType,
        this.baseColour,
        this.season,
        this.year,
        this.usage,
        this.productDisplayName,
        this.productPrice,
        this.productDescription});

  ProductResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    gender = json['gender'];
    masterCategory = json['masterCategory'];
    subCategory = json['subCategory'];
    articleType = json['articleType'];
    baseColour = json['baseColour'];
    season = json['season'];
    year = json['year'];
    usage = json['usage'];
    productDisplayName = json['productDisplayName'];
    productPrice = json['productPrice'];
    productDescription = json['productDescription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['gender'] = this.gender;
    data['masterCategory'] = this.masterCategory;
    data['subCategory'] = this.subCategory;
    data['articleType'] = this.articleType;
    data['baseColour'] = this.baseColour;
    data['season'] = this.season;
    data['year'] = this.year;
    data['usage'] = this.usage;
    data['productDisplayName'] = this.productDisplayName;
    data['productPrice'] = this.productPrice;
    data['productDescription'] = this.productDescription;
    return data;
  }
}
