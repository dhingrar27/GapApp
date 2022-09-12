import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextfieldWidget extends StatefulWidget {
  const TextfieldWidget({Key? key}) : super(key: key);

  @override
  _TextfieldWidgetState createState() => _TextfieldWidgetState();
}

class _TextfieldWidgetState extends State<TextfieldWidget> {
  TextEditingController? emailAddressController;

  @override
  void initState() {
    super.initState();
    emailAddressController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
      child: TextFormField(
        controller: emailAddressController,
        obscureText: false,
        decoration: InputDecoration(
          labelText: 'Email Address',
          labelStyle: FlutterFlowTheme.of(context).subtitle2.override(
                fontFamily: 'Outfit',
                color: Color(0xFF57636C),
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
          hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Lexend Deca',
                color: Color(0xFF95A1AC),
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x00000000),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x00000000),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x00000000),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x00000000),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
        ),
        style: FlutterFlowTheme.of(context).bodyText1.override(
              fontFamily: 'Lexend Deca',
              color: Color(0xFF14181B),
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
      ),
    );
  }
}
