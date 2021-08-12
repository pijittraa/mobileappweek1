class Country {
  var country = "Korea";
  var city;
  var _animal = "แมว";
  static var color = "REDandBule";

  Country(this.city, this._animal);

  Country.thai(String city, String animal) : this(city, animal);

  void callHello() {
    print("อันยองอาเซโย");
  }

  String callAnimal() {
    return this._animal;
  }
}