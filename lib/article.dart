import 'dart:convert';
import 'package:dart_basics/type_aliases.dart';

class Article {
  String _name = '';
  String? _barcode;
  double _price = 0;
  num quantity = 0;


  Article(this._name, this._barcode, this._price, { this.quantity = 0 });

  Article.fromJSON( String unparsedJSON ) {

    Map<dynamic, dynamic>  parsedJSON = json.decode( unparsedJSON );
    this._name = parsedJSON['nombre'];
    this._barcode = parsedJSON['codBar'];
    this._price = parsedJSON['precio'];

  }

  Article.fromDartJSON( JSON json ) {

    this._name = json['name'];
    this._barcode = json['barcode'];
    this._price = json['price'];

  }



  /*Article( String name, String? barcode, double price, { num quantity = 0, num weight = 0 } ) {

    this.name = name;
    this.barcode = barcode;
    this.price = price;
    this.quantity = quantity;

  }*/

  @override
  String toString() => '\nARTÍCULO'
      '\nNombre: $_name'
      '\nBarcode: ${_barcode ?? ''}'
      '\nPrecio: $_price'
      '\nQuantity: $quantity\n';

  String get name => _name;
  set name(String name) => _name = name;

  String? get barcode => _barcode;
  set barcode(String? barcode) => _barcode = _barcode;

  double get price => _price;
  set price(double price) => _price = price;

}
