import 'package:countryapi/controller/homecontroller.dart';
import 'package:countryapi/model/homemodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Homecontroller controller=Get.put(Homecontroller());
  @override
  void initState() {
    // TODO: implement initState
    controller.CountryJsonParsing();
  }
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Country Api"),
      ),
      body: Column(
        children: [
          FutureBuilder(
            future: controller.CountryJsonParsing(),
            builder: (context, snapshot) {
              // if(snapshot.hasError) {
              //   return Text("${snapshot.error}");
              // }
              // else if(snapshot.hasData) {
                Homemodel? m1=snapshot.data;
                return ListTile(
                  leading: Text("${m1!.independent}"),
                  title: Text("${m1.currencies}"),
                  subtitle: Text("${m1.languages}"),
                  trailing: Text("${m1.capital}"),
                );
                // return Text("Done");
              // }
              // return Center(
              //   child: CircularProgressIndicator(),
              // );
              // return CircularProgressIndicator();
            },
          ),
        ],
      ),
    ),);
  }
}
