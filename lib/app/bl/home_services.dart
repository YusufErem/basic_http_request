import 'package:basic_http_request/app/model/home_model.dart';
import 'package:http/http.dart' as http;

class HomeServices {
  List<HomeResponse> responseModel = [];

  Future<List<HomeResponse>> getHomeData() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await http.get(url);

    // print('Response status: ${response.statusCode}');
    // print('Response body: ${response.body}');
    responseModel = homeResponseFromJson(response.body);

    // responseModel.forEach((element) {
    //   print(element.body);
    // });

    return responseModel;
  }
}
