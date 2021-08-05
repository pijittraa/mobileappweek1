void main() {
  //print(callGen(2000));
  // var x = callColor();
  // print(x);
  callWeb("YouTube",protocal: "https",port : 443);
}
//เขียนแบบ Arrow Function
String callGen(int year) => (year >= 1996) ? "Gen Z" : "Gen Y";

int callColor([String newColor = "White"]) {

  //                        0       1      2
  List<dynamic> color = ["BLACK", "GREEN", "BLUE"];
  color.add(newColor);
  for (var item in color) {
    print(item);
  }
  return color.length;
}

void callWeb(String web , {int port = 80, String protocal = "http"})=>print("$protocal $web $port");