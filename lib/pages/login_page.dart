import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:main/components/my_button.dart';
import 'package:main/components/my_textfield.dart';
import 'package:main/components/square_tile.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
   const LoginPage({super.key,required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final emaillController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                const SizedBox(height: 50,),
            
                //logo
            
                const Icon(Icons.lock, size: 100,),
            
                const SizedBox(height: 50,),
            
                //welcom back, you've been missed?
            
                Text('Welcome back you\'ve been Missed!',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 18,
                      ),
            
                ),
                const SizedBox(height: 25,),
                // Username textfield
            
                MyTextfield(
                  controller: emaillController,
                  hintText: 'Email',
                  obscureText: false,
            
                ),
            
               const SizedBox(height: 10,),
                // password textfield
                MyTextfield(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
            
              const SizedBox(height: 10,),
                // forgot password
            
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Forgot Passwort?',style: TextStyle(color: Colors.grey[600]),),
                    ],
                  ),
                ),
            
                const SizedBox(height: 10,),
            
            
                //sigh in button
                MyButton(
                  text: 'Sign In',
                  onTap: signUserIn,
                ),
            
                SizedBox(height: 40,),
                // or continue with
            
                Row(
                  children: [
                    Expanded(child: Divider(thickness: 1,color: Colors.grey,)),
            
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text('Or continue with',style: TextStyle(color: Colors.grey[700]),),
                    ),
            
                    Expanded(child: Divider(thickness: 1,color: Colors.grey,)),
                  ],
                ),
              SizedBox(height: 40,),
            
                /// google + apple sign in button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
            
                    SquareTile(imagePath: 'lib/images/gg.jpg'),
                    const SizedBox(width: 25,),
                    SquareTile(imagePath: 'lib/images/apple.jpg'),
            
                  ],
                ),
                SizedBox(height: 50,),
                
                /// not a member? register now
                /// 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a member?',style: TextStyle(color: Colors.grey[700]),),
            
                    SizedBox(width: 4,),
            
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text('Register Now',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void signUserIn()async {
    showDialog(context: context,
     builder: (context){
      return Center(child: CircularProgressIndicator());
     });


    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emaillController.text,
      password: passwordController.text);
      Navigator.pop(context);
    }on FirebaseAuthException catch (e){
      Navigator.pop(context);

      showErrorMessage(e.code);
      
    }

    
  }
  showErrorMessage(String message){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        backgroundColor: Colors.red,
        title: Center(
          child: Text(message,style: TextStyle(
            color: Colors.white
          ),),
        ),
      );

    });
  }
}