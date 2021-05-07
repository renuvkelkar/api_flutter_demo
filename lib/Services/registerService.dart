import 'dart:convert';

import 'package:api_flutter_demo/model/RegisterResponse.dart';
import 'package:api_flutter_demo/model/productResponse.dart';
import 'package:api_flutter_demo/model/registerUser.dart';
import 'package:http/http.dart' as http;

class RegistrationService{

  Future<RegisterResponse> registerNewUser(RegisterUser registrationData) async {
    http.Response response;//here Response is the data type
    response = await http.post(Uri.parse("https://dev.thegrowingdeveloper.org/api/user/register?apiKey=0YPqK8T7tOoJg9hO3mRWAJAdlJl5Mm"),body: registrationData.toJson());
    if(response.statusCode == 200){
      RegisterResponse successResponse;
      successResponse = RegisterResponse.fromJson(json.decode(response.body));
      return successResponse;
    }else{
      return null;
    }
  }}