
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'forget_password.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:
        Text('                          Login Screen',style:
        TextStyle(color: Colors.white),),
        backgroundColor: Colors.purple,
      ),

      body:Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Login',style: TextStyle
                  (fontSize:28,fontWeight: FontWeight.bold,color: Colors.black),
                ),

                SizedBox(height:16),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    filled: true,
                    hintText: 'Email address',
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                    border: OutlineInputBorder(),
                  ) ,
                ),

                SizedBox(height: 25),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 30),

                Container(
                  width: double.infinity,
                  color: Colors.purple,
                  child: MaterialButton(
                      child:
                      Text('LOGIN',style: TextStyle(color: Colors.white,fontSize:18)),
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none
                      ),
                      onPressed:() {
                        Navigator.push(
                          context, MaterialPageRoute(builder: (context) {
                          return HomeScreen();
                        }
                        ),
                        );
                      }
                  ),
                ),


                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  color: Colors.indigo,

                  child: MaterialButton( onPressed: (){} ,
                    child: Text('login with Faceboook',style:TextStyle(color: Colors.white,fontSize:18)),
                  ),
                ),
                SizedBox(height: 15),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return ForgetPasswordScreen();
                          }));
                    },
                    child:
                    Text('  Forget Password?',style: TextStyle(color: Colors.indigo,fontSize:16),)
                ),

                SizedBox(height: 18,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t Have an account?',style: TextStyle(color: Colors.black,fontSize:15),
                    ),

                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) {
                                return SignupScreen();
                              }));
                        },
                        child: Text('   Sign Up ',style: TextStyle(color: Colors.indigo,fontSize:16),)
                    ),


                  ],
                )
              ],
            ),
          )
      ),

    );
  }
}






class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:Text('              Sign Up Screen'),
        backgroundColor: Colors.purple,
      ),
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(' Sign Up',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),
              ),

              SizedBox(height:16),
              TextFormField(

                decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(),
                    hintText: 'User Name',prefixIcon: Icon(Icons.person)
                ),
              ),

              SizedBox(height: 25),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(),
                    hintText: 'Email Address',prefixIcon: Icon(Icons.email)
                ),
              ),

              SizedBox(height: 25),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(),
                  hintText: 'Password',prefixIcon: Icon(Icons.password),
                  suffixIcon: Icon(Icons.remove_red_eye,),
                ),
              ),

              SizedBox(height: 20),
              Container(
                  width: double.infinity,
                  color: Colors.purple,
                  child: MaterialButton( onPressed: (){}        ,
                    child: Text('Sign Up',style: TextStyle(color: Colors.white,fontSize:18)),
                  )
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
