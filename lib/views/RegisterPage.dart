import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:form_field_validator/form_field_validator.dart';
class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool _obscureText = true;
  bool checkedValue = true;
  TextEditingController set_Email = TextEditingController();
  TextEditingController set_Password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("My Own FlashCards"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.network("https://image.freepik.com/free-vector/happy-cute-little-kid-home-school-with-computer-laptop-connect-internet-study-e-learning-course_97632-3127.jpg",
            height: context.percentHeight*30,width: context.screenWidth,fit: BoxFit.contain,),
          /* Form(
            key: formkey,
            child: Column(
              children: [
                VxTextField(borderType: VxTextFieldBorderType.roundLine,
                  borderColor: Colors.orangeAccent,
                  //controller: set_Email,
                  contentPaddingTop: context.isMobileTypeHandset?15:20,
                  autofocus: false,
                  borderRadius: 15,
                  prefixIcon: Icon(Icons.email,color: Colors.red,),
                  hint: "User Name",fillColor: Colors.orangeAccent,
                ),
                20.heightBox,
                VxTextField(borderType: VxTextFieldBorderType.roundLine,
                  borderColor: Colors.orangeAccent,
                  controller: set_Email,
                  contentPaddingTop: context.isMobileTypeHandset?15:20,
                  autofocus: false,
                  borderRadius: 15,
                  prefixIcon: Icon(Icons.email,color: Colors.red,),
                  hint: "Email",fillColor: Colors.orangeAccent,
                ),
                20.heightBox,
                VxTextField(borderType: VxTextFieldBorderType.roundLine,
                  borderColor: Colors.orangeAccent,
                  contentPaddingTop: 10,
                  autofocus: false,
                  borderRadius: 15,
                  isPassword: true,
                  obscureText: true,
                  prefixIcon: Icon(Icons.lock,color: Colors.red,),
                  hint: "password",fillColor: Colors.orangeAccent,
                ),
                20.heightBox,
                VxTextField(borderType: VxTextFieldBorderType.roundLine,
                  borderColor: Colors.orangeAccent,
                  contentPaddingTop: 10,
                  autofocus: false,
                  borderRadius: 15,
                  obscureText: true,
                  prefixIcon: Icon(Icons.lock,color: Colors.red,),
                  hint: "Confirm password",fillColor: Colors.orangeAccent,
                ),
                40.heightBox,
                VxBox(child: "Register".text.xl2.semiBold.white.makeCentered().p16()).red600.roundedLg.make().pSymmetric(h: 20),

              ],
            ).pOnly(top: context.isMobile?context.percentHeight*1:context.percentHeight*50,left: 10,right: 10).customTheme(themeData: ThemeData(brightness: Brightness.dark)),
          ),
          */
          //40.heightBox,
          Column(
            children: [

              Form(
                autovalidate: true, //check for validation while typing
                key: formkey,
                child: Column(
                  children: <Widget>[
/* Padding(
                      padding: const EdgeInsets.only(top: 60.0),
                      child: Center(
                        child: Container(
                            width: 200,
                            height: 150,
                            child: Image.asset('asset/images/flutter-logo.png')),
                      ),
                    ),*/
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                          controller:set_Email ,
                          decoration: InputDecoration(
                              fillColor: Colors.orangeAccent,
                              hoverColor: Colors.orange,
                              labelText: 'User Name',
                              hintText: 'Enter your Username'),
                          validator: MultiValidator([
                            //RequiredValidator(errorText: "* Required"),
                            // MinLengthValidator(12,
                            //  errorText: "Aadhar card should have 12 numbers"),
                            EmailValidator(errorText: "Enter valid email id"),
                          ])),
                    ),
                    10.heightBox,

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                          controller:set_Email ,
                          decoration: InputDecoration(
                              fillColor: Colors.orangeAccent,
                              hoverColor: Colors.orange,
                              labelText: 'Email',
                              hintText: 'Enter your email'),
                          validator: MultiValidator([
                            //RequiredValidator(errorText: "* Required"),
                            // MinLengthValidator(12,
                            //  errorText: "Aadhar card should have 12 numbers"),
                            EmailValidator(errorText: "Enter valid email id"),
                          ])),
                    ),
                    10.heightBox,
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 0),
                      child: TextFormField(
                          controller: set_Password,
                          obscureText: true,
                          decoration: InputDecoration(
                              suffixIcon: GestureDetector(
                                onTap: () => setState(() {
                                  _obscureText = !_obscureText;
                                }),
                                child: Icon(
                                  _obscureText ? Icons.visibility : Icons.visibility_off,
                                ),
                              ),
                              hoverColor: Colors.orange,
                              labelText: 'Password',
                              hintText: 'Enter secure password'),
                          validator: MultiValidator([
                            //RequiredValidator(errorText: "* Required"),
                            MinLengthValidator(6,
                                errorText: "Password should be atleast 6 characters"),
                            MaxLengthValidator(15,
                                errorText:
                                "Password should not be greater than 15 characters")
                          ])
//validatePassword,        //Function to check validation
                      ),
                    ),
                    10.heightBox,
//                     Padding(
//                       padding: const EdgeInsets.only(
//                           left: 15.0, right: 15.0, top: 15, bottom: 0),
//                       child: TextFormField(
//                           controller: set_Password,
//                           obscureText: true,
//                           decoration: InputDecoration(
//                               suffixIcon: GestureDetector(
//                                 onTap: () => setState(() {
//                                   _obscureText = !_obscureText;
//                                 }),
//                                 child: Icon(
//                                   _obscureText ? Icons.visibility : Icons.visibility_off,
//                                 ),
//                               ),
//                               hoverColor: Colors.orange,
//                               labelText: 'Confirm Password',
//                               hintText: 'Enter secure Confirm password'),
//                           validator: MultiValidator([
//                             //RequiredValidator(errorText: "* Required"),
//                             MinLengthValidator(6,
//                                 errorText: "Password should be atleast 6 characters"),
//                             MaxLengthValidator(15,
//                                 errorText:
//                                 "Password should not be greater than 15 characters")
//                           ])
// //validatePassword,        //Function to check validation
//                       ),
//                     ),
                    10.heightBox,
                    Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(20)),
                      child: FlatButton(
                        onPressed: () async{


                        }
                        ,
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                    10.heightBox,

                  ],
                ),
              ),
            ],
          ),
        ],
      ).scrollVertical(),
    );
  }
}
