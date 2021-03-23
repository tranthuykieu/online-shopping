import 'package:flutter/material.dart';
import 'package:pororo/components/custom_suffix_icon.dart';
import 'package:pororo/components/default_button.dart';
import 'package:pororo/components/form_error.dart';
import 'package:pororo/components/no_account_text.dart';
import 'package:pororo/constants.dart';
import 'package:pororo/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenWidth(40)),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: getProportionateScreenWidth(10)),
              Text(
                "Please enter your email.\n We'll send you a link to return your account",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(15),
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  List<String> errors = [];
  String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenWidth(100)),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue,
            // for not enter email address
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              }
              return null;
            },
            // enter email WITHOUT '@gmail.com'
            validator: (value) {
              if (value.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
            // for decor
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your email or phone number",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/Mail.svg'),
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(100)),
          FormError(errors: errors),
          DefaultButton(
            text: "Continue",
            press: () {},
          ),
          SizedBox(height: getProportionateScreenWidth(100)),
          NoAccountText(),
        ],
      ),
    );
  }
}
