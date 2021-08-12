import 'country.dart';
import 'problem.dart';

class City extends Country with Problems {
  City() : super("โซล", "เสือโคร่งไซบีเรีย");

  void callSuper() {
    print("เมืองหลวง :" + super.city);
    super.callHello();
  }

  @override
  String callAnimal() {
    return "เสือโคร่งไซบีเรีย";
  }
}