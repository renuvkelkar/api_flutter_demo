import 'dart:convert';

import 'package:api_flutter_demo/model/productResponse.dart';
import 'package:http/http.dart' as http;

class ProductServices{
  Future<List<ProductResponse>>getProduct()async{

    http.Response response;
    response =await http.get(Uri.parse("https://dev.thegrowingdeveloper.org/api/products/all?apiKey=0YPqK8T7tOoJg9hO3mRWAJAdlJl5Mm"));
    if(response.statusCode==200){
      print(response.statusCode);
      var tempList = json.decode(response.body);
      List<ProductResponse> prodData = [];
      tempList.forEach((element) {
        prodData.add(ProductResponse.fromJson(element));
      });
     // ProductResponse productResponse = ProductResponse.fromJson( json.decode(response.body));

      return prodData;


    }
    else{
      return null;
    }



  }
}