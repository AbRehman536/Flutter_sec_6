import 'package:flutter/material.dart';

class LoginFormValidation extends StatefulWidget {
  const LoginFormValidation({super.key});

  @override
  State<LoginFormValidation> createState() => _LoginFormValidationState();
}

class _LoginFormValidationState extends State<LoginFormValidation> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Login"),
        centerTitle: true,
      ),
      body: Column(children: [
        SizedBox(height: 20,),
        Text("LOGIN PAGE",style: TextStyle(fontSize: 30),),
        SizedBox(height: 20,),
        TextField(
          controller: emailController,
          decoration: InputDecoration(
            label: Text("Email"),
            hintText: 'abdullah@gmail.com',
            prefixIcon: Icon(Icons.email),
            suffixIcon: Icon(Icons.account_balance),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 5)
            )
          ),
        ),
        SizedBox(height: 20,),
        TextField(
          controller: passwordController,
          decoration: InputDecoration(
              label: Text("Password"),
              hintText: '1234567890',
              prefix: Icon(Icons.lock),
              suffix: Icon(Icons.visibility),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 5)
              )
          ),

        ),
        SizedBox(height: 20,),
        ElevatedButton(onPressed: (){
          if(emailController.text.isEmpty){
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Your Email is Empty")));
            return;
          }
          if(passwordController.text.isEmpty){
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Your Password is Empty")));
            return ;
          }
          if(passwordController.text.length < 8){
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Your Password is less than 8 digits")));
            return;
          }
        }, child: Text("Login")),
        SizedBox(height: 20,),
        Text("Don't have account ?"),
        SizedBox(height: 20,),
        Text("Sign Up"),
      ],),
    );
  }
}
