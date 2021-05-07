import 'package:api_flutter_demo/Services/dataServices.dart';
import 'package:api_flutter_demo/Services/productService.dart';
import 'package:api_flutter_demo/model/factResponse.dart';
import 'package:api_flutter_demo/model/productResponse.dart';
import 'package:flutter/material.dart';
class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  ProductServices prodService = ProductServices();
  // FactsResponse factsResponse = FactsResponse();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API Integration Demo"),
      ),
      body: Container(
        child: FutureBuilder(
          future: prodService.getProduct(),
          builder: (context,AsyncSnapshot<List<ProductResponse>>snapshot){
            if(snapshot.hasData){

              return ListView.builder(
                  itemCount:snapshot.data.length ,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(child: Text(snapshot.data[index].productDisplayName)),
                    );
                  });

              //Text(factsResponse.category);
            }
            else{
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
