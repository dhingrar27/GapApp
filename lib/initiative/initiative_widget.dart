import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class InitiativeWidget extends StatefulWidget {
  const InitiativeWidget({Key? key}) : super(key: key);

  @override
  _InitiativeWidgetState createState() => _InitiativeWidgetState();
}

class _InitiativeWidgetState extends State<InitiativeWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            context.pushNamed('Home');
          },
          child: Image.asset(
            'assets/images/the_Gap_app_(7).png',
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          'Initiative',
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).title1,
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Color(0xFFECEFF1),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(16, 12, 16, 1),
                          child: Text(
                            'Why is it so important to introduce women veterans into cybersecurity? We created a promotional video interviewing 6 current and former military women who have transitioned into cybersecurity careers to describe their journey into the industry. These women, from all ranks and military branches, discussed the opportunities in a cybersecurity career and the challenges of separating from the military and establishing oneself in the industry. Hear their unique journeys and lessons for those following in their footsteps in the video below.',
                            style:
                                FlutterFlowTheme.of(context).bodyText2.override(
                                      fontFamily: 'Outfit',
                                      fontSize: 12,
                                    ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5,
                                  color: Color(0x230E151B),
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16),
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                    child: FlutterFlowVideoPlayer(
                      path:
                          'https://vimeo.com/renegadereview/review/553421169/0867e27e85',
                      videoType: VideoType.network,
                      autoPlay: false,
                      looping: false,
                      showControls: true,
                      allowFullScreen: true,
                      allowPlaybackSpeedMenu: false,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Our “Closing the Gap” Conference:',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 12),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Color(0xFF8B9457),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
                        child: Text(
                          'The GapApp is based on a DoD/NSA grant (H98230-20-1-0382) called “Closing the Gap: Reentry for Women Veterans into Cybersecurity Careers”, a working conference to address the opportunities and challenges of bringing women veterans into cybersecurity careers. Supported by panelists of female veterans and researchers, the 2021 conference brought together key representatives of military, academia, government, and industry to discuss these challenges and propose solutions. The following key tasks were identified to bridge the gap: \n\n1. Support an active network of individuals committed to make a difference\n\n2.  Establish annual reporting of statistics to show progress\n\n3. Launch a Clearinghouse of resources and a navigation tool\n\n4. Launch a research network of universities and research centers.\n\nFollowing the success of the conference, the “Closing the Gap” team continued our research, released publications of our findings, and conducted presentations to promote our initiative and make critical connections to further our impact. Our conference materials, publications, key resources gathered specifically for our audience and more can be found at the “Closing the Gap” website.',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 18),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await launchURL(
                            'https://womenengineers.seas.gwu.edu/closing-gap-women-veterans-cybersecurity-careers');
                      },
                      text: 'View Our Website',
                      options: FFButtonOptions(
                        width: 200,
                        height: 40,
                        color: Color(0xFF86A9D6),
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  Text(
                    'About GapApp:',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 12),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Color(0xFF8B9457),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
                        child: Text(
                          'Created to support military women and spouses in their search for an effective and challenging career outside of the service, GapApp provides a guided pathway into the high-demand field of cybersecurity. Using your Military Occupation Specialty (MOS), the app matches your military skills with the most aligned cybersecurity job roles within the NIST/NICE framework–currently used as the foundational workforce role descriptor by industry and government job seekers and employers alike. Learn about different cybersecurity careers and how to obtain them directly from women in the roles today. Begin your journey into a cybersecurity career with the fundamental training suggestions and resources offered by leading organizations in the industry. Join the cyber community through women and military-specific organizations. GapApp makes a career in cybersecurity more accessible and attainable by presenting the fundamental information, resources, tips, and tricks in one easy-to-use application.',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Our Social Media Initiative:',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 12),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Color(0xFF8B9457),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
                        child: Text(
                          'One outcome from the “Closing the Gap” workshop was the desire to deepen community ties among researchers, military and government leaders, private industry, and veterans. Our social media campaigns are a vehicle through which we can provide useful resources and lessons from our research, real-time updates on our progress, and hear directly from our audience on what challenges and desires they most encounter on their journey into cybersecurity. Join our social media platforms to see our latest updates as we work to #CloseTheGap and bring women veterans into cybersecurity careers!',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
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
                  Text(
                    'The “Close the Gap” Team:',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 12),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Color(0xFF8B9457),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
                        child: Text(
                          'Primary researchers for the “Closing the Gap” initiative are George Washington University faculty and students: Callie Balut, Rachelle Heller, and Costis Toregas. Additional researchers for the GapApp include students Rababb Dhingra, Amarachi Elekeokwuri, and Cora Sula.',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
