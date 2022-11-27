import 'package:ecommercegetx/components/constant.dart';
import 'package:ecommercegetx/view/widget/Custom_Components.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 20,
          left: 20,
          top: 20,
        ),
        child: Column(
          children: [
            Container(
              height: 550,
              decoration: BoxDecoration(


                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],

              ),
              padding: EdgeInsets.only(
                top: 20,
                right: 10,
                left: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Welcome And Sign Up

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'SignUp,',
                        fontsize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      CustomText(
                        text: 'SignIn',
                        fontsize: 18,
                        fontWeight: FontWeight.w400,
                        color: Primarycolor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomText(
                    text: 'Sign Up New Account',
                    fontsize: 14,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InputForm(text: 'Name',type: TextInputType.text, iconPrefex: Icons.person,hint: 'YourName',),
                  SizedBox(
                    height: 40,
                  ),
                  InputForm(
                    type: TextInputType.emailAddress,
                    text: 'Email',
                    color: Colors.grey,
                    iconPrefex: Icons.email_outlined,
                    hint: 'email@example.com',
                    onsave: (value) {},
                    onvalidate: (value) {},
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InputForm(
                    type: TextInputType.visiblePassword,
                    text: 'Passsword',
                    color: Colors.grey,
                    iconPrefex: Icons.lock,
                    iconSuffex: Icons.visibility,
                    hint: '**************',
                    onsave: (value) {},
                    onvalidate: (value) {},
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomText(
                    text: 'Forget Password?',
                    fontsize: 14,
                    alignment: Alignment.topRight,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButtom(
                    onpressed: () {},
                    text: 'SIGN IN',
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
