import 'package:api_flutter_demo/Services/dataServices.dart';
import 'package:api_flutter_demo/model/factResponse.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DataServices dataServices = DataServices();
 // FactsResponse factsResponse = FactsResponse();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API Integration Demo"),
      ),
      body: Container(
        child: FutureBuilder(
          future: dataServices.getData(),
          builder: (context,snapshot){
            if(snapshot.hasData){
             FactsResponse factsResponse = snapshot.data; // connect to the model class

              return ListView.builder(
                  itemCount: factsResponse.facts.length,
                  itemBuilder: (context,index){
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(child: Text(factsResponse.facts[index].title)),
                        ),
                        Image.network(factsResponse.facts[index].imageUrl,width: 100,height: 100,fit: BoxFit.cover,)
                      ],
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
