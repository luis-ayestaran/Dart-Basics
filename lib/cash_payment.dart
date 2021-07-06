import 'package:dart_basics/pay_format.dart';

class CashPayment implements PayFormat {

  @override
  void pay( double paymentAmount ) => print( 'El cliente pagó \$$paymentAmount en efectivo.' );

}