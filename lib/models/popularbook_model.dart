
class PopularBookModel {
  String title, author, price, copies, image, description;
  int color;

  PopularBookModel(this.title, this.author, this.price, this.image, this.copies, this.color,
      this.description);
}

List<PopularBookModel> populars = popularBookData
    .map((item) => PopularBookModel(item['title'], item['author'],
    item['price'], item['image'], item['copies'], item['color'], item['description'],))
    .toList();

var popularBookData = [
  {
    "title": "1984",
    "author": "George Orwell",
    "price": "100",
    "image": "assets/images/1984.jpg",
    "copies": "10 copies",
    "color": 0xFFFFD4B6,
    "description":
        "'Animal Farm. Nineteen Eighty-Four: A Novel, often published as 1984, is a dystopian social science fiction novel by English novelist George Orwell. It was published on 8 June 1949 by Secker & Warburg as Orwell's ninth and final book completed in his lifetime'"
  },
  {
    "title": "3110",
    "author": "Ahmed othman",
    "price": "70",
    "image": "assets/images/3110.jpg",
    "copies": "13 copies",
    "color": 0xFFFFD3B6,
    "description":
        "' What was requested by this non-existent Egyptologist many years before the events, and will Helmy Mahran return from his coma to discover this secret"

  },
  {
    "title": "et3lm",
    "author": "Amr Elazab",
    "price": "60",
    "image": "assets/images/et3lm.jpg",
    "copies": "18 copies",
    "color": 0xFF2B325C,
    "description":
        "تاب اتكتب بشغف للتعلم، بفكر جديد، بمعرفة حقيقية قائمة على التجربة العملية مش تجميع لنظريات أكاديمية، بلغة مبسطة، هتلاقي نفسك بتفتكر اللي بيحصلك أ. . .  و اللي كان بيحصلك وأنت بتذاكر"
  },
  {
    "title": "ebn khaldon",
    "author": "jaston botwall",
    "price": "200",
    "image": "assets/images/ebn khaldon.jpg",
    "copies": "6 copies" ,
    "color": 0xFFF7EA4A,
    "description":
"'Ibn Khaldun was an Arab scholar of Islam, social scientist, philosopher and historian who has been described as the founder of the modern disciplines of historiography, sociology, economics, and demography'"
  },
];

