class Article {
  String _name = '';
  String? _barcode;
  double _price = 0;
  num _quantity = 0;

  Article(this._name, this._barcode, this._price, { quantity = 0 });

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
      '\nQuantity: $_quantity\n';

  String get name => _name;
  set name(String name) => _name = name;

  String? get barcode => _barcode;
  set barcode(String? barcode) => _barcode = _barcode;

  double get price => _price;
  set price(double price) => _price = price;

  num get quantity => _quantity;
  set quantity(num quantity) => _quantity = quantity;

}
