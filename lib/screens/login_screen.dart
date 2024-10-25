import 'package:flutter/material.dart';

class LonginScreen extends StatelessWidget {

   LonginScreen({super.key,});

var emailController=  TextEditingController();
var passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
            
                onFieldSubmitted: ( String value) //فانكشن بتخليني ماسكه القيمه في ايدي او ف متغير 
                 {
                  print(value);
                },
                onChanged: ( String value)
                 {
                  print(value);
                },
                 controller: emailController,
                 keyboardType: TextInputType.emailAddress,// بتضيف لي في الكيبورد علامه الايميل بتسهل ع المسخدم 
                  decoration: InputDecoration(
                    labelText:
                     "email address",
                    prefixIcon: Icon(Icons.email),// بتخلي الايكون في البدايه عادي 
                  
                    border: OutlineInputBorder(// دي لوحدها بتعمل مربع لو من غيرها هيبقي في خط واحد فقط تحت 
                      borderRadius: BorderRadius.circular(20),// لو عايزه اتحكم في الزوايه بتاعت التيكت فورم فيلد 
                    ),
                  ),
                ),
                   SizedBox(height: 20,),
            
                  TextFormField(
                onFieldSubmitted: ( String value) 
                 {
                  print(value);
                },
                onChanged: ( String value)
                 {
                  print(value);
                },
                controller: passwordController,
                 keyboardType: TextInputType.visiblePassword, // بتضيف لي في الكيبورد جاهز للباسورد  بتسهل ع المسخدم 
                obscureText: true, // بخلي الباسوورد مش باين خاصه ب ايقون العين 
                  decoration: InputDecoration(
                    labelText:
                     "Password",
                    prefixIcon: Icon(Icons.lock),// بتخلي الايكون في النهايه عادي 
                  suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(// دي لوحدها بتعمل مربع لو من غيرها هيبقي في خط واحد فقط تحت 
                      borderRadius: BorderRadius.circular(20),// لو عايزه اتحكم في الزوايه بتاعت التيكت فورم فيلد 
                    ),
                  ),
                ),
                        SizedBox(height: 20,),
            
                        Container(
                          width: double.infinity,
                          color: Colors.blue,
                          height: 50,
                          child: MaterialButton(onPressed: (){
                              print(emailController.text);
                                print(passwordController.text);
                          },
                          child: Text("Login", style: TextStyle(color: Colors.white, 
                          fontSize: 20,
                          ),
                          ),
                          ),
                        ),
                         SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don\t have an account? "),
                            TextButton(onPressed: (){}, child: Text(
                            "Register Now"
                            ),
                            )
                          ],
                        ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
