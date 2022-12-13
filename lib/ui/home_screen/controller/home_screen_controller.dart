import 'package:basic_http_request/app/bl/home_services.dart';
import 'package:basic_http_request/app/model/home_model.dart';
import 'package:flutter/material.dart';

class HomeScreenController extends ChangeNotifier {
  List<HomeResponse> homeResponseList = [];

  HomeServices homeServices = HomeServices();

  getHomeResponseList() async {
    homeResponseList = await homeServices.getHomeData();
    notifyListeners();
    homeResponseList.forEach((element) {
      print(element.body);
      print('veriler geldi');
    });
  }
}
