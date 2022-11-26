


import 'package:flutter/material.dart';


// Custom Text
  class CustomText extends StatelessWidget {


  @required final String? text;

  @required final double? fontsize;

  late final Color? color;

  late final FontWeight? fontWeight;

  late final AlignmentGeometry? alignment;


  CustomText({this.text,this.fontsize,this.fontWeight,this.color,this.alignment});


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment:alignment ,

        child: Text(
          '$text',
          style: TextStyle(
              fontSize: fontsize,
              fontWeight: fontWeight,
              color: color),
        ),


    );
  }
}

// Custom InputForm

  class InputForm extends StatelessWidget {
  late final String? text;
  late final Color? color;
  late final String? hint;
  late final IconData? iconPrefex;
  late final IconData? iconSuffex;
  late final Function(String?)? onsave;
  late final String? Function(String?)? onvalidate;
  late final IconData? iconstart;
  late final TextInputType? type;
  late final Function(String?)? onsubmit;

  InputForm({
    this.text,
    this.hint,
    this.onsave,
    this.onvalidate,
    this.iconstart,
    this.color,
    this.type,
    this.onsubmit,
    this.iconPrefex,
    this.iconSuffex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: '$text',
            color: color,
            fontWeight: FontWeight.w400,
          ),
          TextFormField(
            keyboardType: type,
            onFieldSubmitted: onsubmit,
            onSaved: onsave,
            validator: onvalidate,
            decoration: InputDecoration(
              hintText: '$hint',
              prefixIcon: Icon(iconPrefex),
              suffixIcon: Icon(iconSuffex),
              hintStyle: TextStyle(
                color: Colors.grey[400],
              ),
              fillColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

// Custom Buttom





