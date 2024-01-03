import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/provider.dart';
import 'package:provider/provider.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    final add = Provider.of<provider>(context,listen: false);
    return Scaffold(
      body: Column(
        children: [
          Consumer<provider>(builder:(context, value, child) =>  Text(
       
                value.x.toString(),
          )),
          TextFormField(controller: add.text1,),
          TextFormField(controller: add.text2),
          ElevatedButton(onPressed: (){
            add.adder();
          }, child: Text("click here"))
        ],
      ),
    );
  }
}