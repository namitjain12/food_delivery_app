import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



String ?stringResponse;
Map ?mapResponse;
Map ?dataResponse;
List ?listResponse;

class Flightdetails extends StatefulWidget {
  
  const Flightdetails({super.key});

  @override
  State<Flightdetails> createState() => _FlightdetailsState();
}

class _FlightdetailsState extends State<Flightdetails> {
Future apicall() async{
  http.Response response;
  response =await http.get(Uri.parse("https://reqres.in/api/users?page=2"));
  if(response.statusCode==200){
    setState(() {
      
      mapResponse= jsonDecode(response.body);
      listResponse =mapResponse!['data'];
    });
  }
}


@override
  void initState() {
    apicall();
    super.initState();
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API DEMO"),
      ),
      body: ListView.builder(itemBuilder: ((context, index) {
        return Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: 
                  
Image.network(listResponse![index]['avatar']),
                  
                
              ),
              Text(listResponse![index]['id'].toString()),
              Text(listResponse![index]['first_name'].toString()),
              Text(listResponse![index]['last_name'].toString()),
              Text(listResponse![index]['email'].toString()),
              

            ],
          ),
        );
        
      }
      ),
      itemCount: listResponse==null?0: listResponse!.length,

      
      )
    );
  }
}