
class Books {
  int _id;
  String _name;
  String _copies;
  int _price;
  Books (dynamic obj){

  }
  Books.fromMap(Map<String, dynamic> data){
    _id = data['id'];
    _name = data['name'];
    _copies = data['copies'];
    _price = data['price'];
  }
    Map<String, dynamic> toMap() => {'id' : _id, 'name': _name,'copies' : _copies,'price':_price};
    int get id => _id;
    String get name => _name;
    String get copies => _copies;
    int get price => _price;

  }