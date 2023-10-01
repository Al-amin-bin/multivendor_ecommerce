import 'package:flutter/material.dart';
import 'package:multivendor_ecommerce/CustomerScreens/cart_screen.dart';
import 'package:multivendor_ecommerce/GlobalScreens/widgets/sub_title.dart';
import 'package:multivendor_ecommerce/GlobalScreens/widgets/title.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 100,
                ),
                Center(child: Image.asset("assets/appLogo.png")),
                const SizedBox(
                  height: 30,
                ),
                const TitleText(text: "Sign In"),
                const SizedBox(
                  height: 24,
                ),
                const SubTitle(
                  text: 'Phone',
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  validator: (String? value){
                    if(value!.isEmpty&& value.length!=11){
                      return "Enter valid Phone Number";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    label: Text("phone Number"),

                  ),
                ),
                const SizedBox(height: 8,),
                const SubTitle(text: "Password"),
                const SizedBox(height: 8,),
                TextFormField(
                  validator: (String? value){
                    if(value!.isEmpty&& value.length<5){
                      return "Enter 6 digit password";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    label: Text("Password"),

                  ),
                ),
                const SizedBox(height: 8,),
                const Text("Forgot Password?",style: TextStyle(color: Colors.blue,fontSize: 18),),
                const SizedBox(height: 12,),
                SizedBox(width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black87,padding: EdgeInsets.symmetric(vertical: 12)),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));
                    },
                    child: const Text("Sign In",style: TextStyle(fontSize: 18),),
                  ),),
                const SizedBox(height: 8,),
                Row(mainAxisAlignment:MainAxisAlignment.center,
                  children: [

                    const Text("Don't Have a Account?",style: TextStyle(fontSize: 16),),
                    TextButton(onPressed: (){}, child: const Text("Sin Up",style: TextStyle(color: Colors.blue,fontSize: 16),))
                  ],)

              ],
            ),
          ),
        ),
      ),
    );
  }
}