import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialsWidget extends StatefulWidget {
  const SocialsWidget({Key? key}) : super(key: key);

  @override
  _SocialsWidgetState createState() => _SocialsWidgetState();
}

class _SocialsWidgetState extends State<SocialsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFF2F2F2),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 30,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          'GapApp',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(22, 10, 0, 0),
                      child: Text(
                        'About',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFFF5F5F5),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 12),
                      child: Text(
                        'Created to support military women and spouses in their search for an effective and challenging career outside of the service, GapApp provides a guided pathway into the high-demand field of cybersecurity. Using your Military Occupation Specialty (MOS), the app matches your military skills with the most aligned cybersecurity job roles within the NIST/NICE framework–currently used as the foundational workforce role descriptor by industry and government job seekers and employers alike. Learn about different cybersecurity careers and how to obtain them directly from women in the roles today. Begin your journey into a cybersecurity career with the fundamental training suggestions and resources offered by leading organizations in the industry. Join the cyber community through women and military-specific organizations. GapApp makes a career in cybersecurity more accessible and attainable by presenting the fundamental information, resources, tips, and tricks in one easy-to-use application.',
                        style: FlutterFlowTheme.of(context).bodyText2.override(
                              fontFamily: 'Outfit',
                            ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 90,
                      icon: FaIcon(
                        FontAwesomeIcons.facebook,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30,
                      ),
                      onPressed: () async {
                        await launchURL(
                            'https://www.facebook.com/GW.ClosingTheGap');
                      },
                    ),
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 90,
                      icon: FaIcon(
                        FontAwesomeIcons.instagramSquare,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30,
                      ),
                      onPressed: () async {
                        await launchURL(
                            'https://www.instagram.com/gwclosethegap/');
                      },
                    ),
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 90,
                      icon: FaIcon(
                        FontAwesomeIcons.twitterSquare,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30,
                      ),
                      onPressed: () async {
                        await launchURL('https://twitter.com/home');
                      },
                    ),
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 90,
                      icon: FaIcon(
                        FontAwesomeIcons.linkedin,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30,
                      ),
                      onPressed: () async {
                        await launchURL(
                            'https://www.linkedin.com/groups/9066829/ ');
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFFF5F5F5),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 12),
                      child: Text(
                        'One outcome from the “Closing the Gap” workshop was the desire to deepen community ties among researchers, military and government leaders, private industry, and veterans. Our social media campaigns are a vehicle through which we can provide useful resources and lessons from our research, real-time updates on our progress, and hear directly from our audience on what challenges and desires they most encounter on their journey into cybersecurity. Join our social media platforms to see our latest updates as we work to #CloseTheGap and bring women veterans into cybersecurity careers!',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Outfit',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(22, 10, 0, 0),
                      child: Text(
                        'Our Team',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFF8C895A),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 12),
                      child: Text(
                        'Primary researchers for the “Closing the Gap” initiative are George Washington University faculty and students: Callie Balut, Rachelle Heller, and Costis Toregas. Additional researchers for the GapApp include students Rababb Dhingra, Amarachi Elekeokwuri, and Cora Sula.',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
