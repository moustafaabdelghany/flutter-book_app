class NewBookModel {
  String image;

  NewBookModel(this.image);
}

List<NewBookModel> newbooks =
newBookData.map((item) => NewBookModel(item['image'])).toList();

var newBookData = [
  {"image": "assets/images/1984.jpg"},
  {"image": "assets/images/3110.jpg"},
  {"image": "assets/images/abo omar elmasry.jpg"},
  {"image": "assets/images/ebn khaldon.jpg"},
  {"image": "assets/images/et3lm.jpg"},
  {"image": "assets/images/relationships.jpg"},
];
