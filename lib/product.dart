class Product {
  static const ID = "id";
  static const NAME = "name";
  static const PICTURE = "picture";
  static const PRICE = "price";

  String _id;
  String _name;
  String _picture;
  String _price;

  String get id => _id;

  String get name => _name;

  String get picture => _picture;

  String get price => _price;

  Product(this._name, this._picture, this._price);

/*  ProductModel.fromSnapshot(DocumentSnapshot snapshot) {
    Map data = snapshot.data();
    _id = data[ID];
    _brand = data[BRAND];
    _sale = data[SALE] ?? "";
    _description = data[DESCRIPTION] ?? " ";
    _featured = data[FEATURED] ?? "";
    _price = data[PRICE].floor();
    _category = data[CATEGORY];
    _colors = data[COLORS];
    _sizes = data[SIZES];
    _name = data[NAME];
    _picture = data[PICTURE];
  }*/
}
