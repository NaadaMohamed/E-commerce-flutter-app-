import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Recet Your Password:',style:
              TextStyle(fontSize:20,fontWeight:
              FontWeight.bold,color: Colors.black),
              ),
              SizedBox(height:16),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Your phone Number',
                  prefixIcon: Icon(
                    Icons.phone,
                  ),
                  border: OutlineInputBorder(),
                ) ,
              ),
              SizedBox(height: 25,),

              Container(
                width: double.infinity,
                color: Colors.purple,
                child: MaterialButton(
                  child:
                  Text('Send SMS',style:
                  TextStyle(color: Colors.white,fontSize:20)),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide.none
                  ), onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
