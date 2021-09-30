import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mobileappweek1/model/tct.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var data;
  @override
  void initState() {
    super.initState();
    print("Hello");
    callAPI();
  }

  Future<void> callAPI() async {
    var urI = Uri.parse("https://www.boredapi.com/api/activity");

    var response = await http.get(urI);

    setState(() {
      data = tctFromJson(response.body);
    });

    data = tctFromJson(response.body);
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Icon(Icons.api),
              SizedBox(width: 10),
              Text('Dashboard'),
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Text(data?.activity ?? "loading.."),
            Text(data?.type ?? ''),
            Text('${data?.price ?? ""} '),
            Text('${data?.participants ?? ""} '),
          ],
        )));
  }
}
