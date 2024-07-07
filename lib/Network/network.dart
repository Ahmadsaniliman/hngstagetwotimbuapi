import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:developer' as devtool show log;
import 'package:simpletimbuapiapp/Model/model.dart';

class NetworkCall {
  Future<List<ProductModelClass>> getAllProducts() async {
    try {
      const productsUrl =
          "https://api.timbu.cloud/products?organization_id=1817a9d61a3844f0accb090ba7daa5f0&reverse_sort=false&page=1&size=10&Appid=K2G9TERNC2PB11C&Apikey=7afba05db262476faba95150b73ed4bd20240705113802407053";

      final Response response = await http.get(
        Uri.parse(
          Uri.encodeFull(productsUrl),
        ),
      );
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final items = (data['items'] as List)
            .map(
              (item) => ProductModelClass.fromJson(item),
            )
            .toList();
        devtool.log('Success!!!');
        return items;
      } else {
        throw Exception('something went wrong');
      }
    } catch (e) {
      devtool.log(e.toString());
      devtool.log('wrong');
      throw Exception('Something went wrong');
    }
  }
}