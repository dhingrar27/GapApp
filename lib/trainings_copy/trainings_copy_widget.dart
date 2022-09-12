import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrainingsCopyWidget extends StatefulWidget {
  const TrainingsCopyWidget({Key? key}) : super(key: key);

  @override
  _TrainingsCopyWidgetState createState() => _TrainingsCopyWidgetState();
}

class _TrainingsCopyWidgetState extends State<TrainingsCopyWidget> {
  TextEditingController? searchBarController;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    searchBarController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
            context.pushNamed('Welcome');
          },
        ),
        title: Text(
          'Community Resources',
          style: FlutterFlowTheme.of(context).subtitle1,
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 12, 8, 0),
                    child: TextFormField(
                      controller: searchBarController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Search for what you need..',
                        labelStyle: FlutterFlowTheme.of(context).bodyText2,
                        hintStyle: FlutterFlowTheme.of(context).bodyText2,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).lineColor,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).lineColor,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                        prefixIcon: Icon(
                          Icons.search,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 16,
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 12, 0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30,
                    borderWidth: 1,
                    buttonSize: 50,
                    icon: Icon(
                      Icons.search_sharp,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 30,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ),
              ],
            ),
            Expanded(
              child: DefaultTabController(
                length: 3,
                initialIndex: 0,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: Color(0xFF86A9D6),
                      unselectedLabelColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      labelStyle:
                          FlutterFlowTheme.of(context).subtitle1.override(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                              ),
                      indicatorColor: Color(0xFF86A9D6),
                      tabs: [
                        Tab(
                          text: 'Scholarships',
                        ),
                        Tab(
                          text: 'Organizations',
                        ),
                        Tab(
                          text: 'More',
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Wrap(
                                      spacing: 0,
                                      runSpacing: 0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 0, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await launchURL(
                                                  'https://amvets.org/scholarships/');
                                            },
                                            child: Text(
                                              'Scholarships to apply to further your career in cyber.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 17,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 12, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 95,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Wrap(
                                      spacing: 0,
                                      runSpacing: 0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 10, 5, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await launchURL(
                                                  'https://amvets.org/scholarships/');
                                            },
                                            child: Text(
                                              'Provides financial support to active duty military, veterans, and their spouses who demonstrate financial need to attend a four-year college or university.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 12, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'https://kaleidoscope--c.na82.content.force.com/servlet/servlet.ImageServer?id=0151R0000053yfu&oid=00D36000000ojFe&lastMod=1571934783000',
                                              width: 70,
                                              height: 70,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 0, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                await launchURL(
                                                    'https://amvets.org/scholarships/');
                                              },
                                              child: Text(
                                                'AMVETS Scholarships',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Wrap(
                                      spacing: 0,
                                      runSpacing: 0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 5, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await launchURL(
                                                  'https://amvets.org/scholarships/');
                                            },
                                            child: Text(
                                              'Provides certifications and training to military veterans and spouses for the Cisco CCNA course. ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 12, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'https://blog.executivebiz.com/wp-content/uploads/2013/07/Cisco-LogoEbiz.jpeg',
                                              width: 70,
                                              height: 70,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 0, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                await launchURL(
                                                    'https://www.cisco.com/c/en/us/about/csr/impact/education/veterans-program.html');
                                              },
                                              child: Text(
                                                'Cisco Veteran Cyber Scholarship Program',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 11,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Wrap(
                                      spacing: 0,
                                      runSpacing: 0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 0, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await launchURL(
                                                  'https://amvets.org/scholarships/');
                                            },
                                            child: Text(
                                              'My Career Advancement Account and My Spouse Education and Career Opportunities scholarship for tuition assistance.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 12, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 12, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'https://mnbtyr.ng.mil/Style%20Library/Images/MOS-logo300.png',
                                              width: 70,
                                              height: 70,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 0, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                await launchURL(
                                                    'https://mycaa.militaryonesource.mil/mycaa/get-started');
                                              },
                                              child: Text(
                                                'Military One Source: MYCCA Scholarship Program',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 9,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Wrap(
                                      spacing: 0,
                                      runSpacing: 0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 0, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await launchURL(
                                                  'https://amvets.org/scholarships/');
                                            },
                                            child: Text(
                                              'Provides scholarships to women studying cyber/information security to increase the representation of women in the workforce.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 12, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'data:image/png;base64,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',
                                              width: 70,
                                              height: 70,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 0, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                await launchURL(
                                                    'https://www.iamcybersafe.org/s/cyberwarrior');
                                              },
                                              child: Text(
                                                'SAIC CyberWarrior Scholarship',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 15,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Wrap(
                                      spacing: 0,
                                      runSpacing: 0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 0, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await launchURL(
                                                  'https://amvets.org/scholarships/');
                                            },
                                            child: Text(
                                              'Created to help returning military veterans reenter the civilian workforce by offering cybersecurity certification training scholarships.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 12, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'https://pbs.twimg.com/profile_images/628341205038804992/l2dstY8p_400x400.png',
                                              width: 70,
                                              height: 70,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 0, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                await launchURL(
                                                    'https://cra.org/cra-wp/scholarships-and-awards/scholarships/swsis/#overview');
                                              },
                                              child: Text(
                                                'Scholarships for Women Studying Information Security',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 8,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Wrap(
                                      spacing: 0,
                                      runSpacing: 0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 0, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await launchURL(
                                                  'https://amvets.org/scholarships/');
                                            },
                                            child: Text(
                                              'The scholarship is awarded to WiCyS members who are seeking cybersecurity employment within the next 1.5 years. The program is designed to close the cyber skills gap and increase diversity, equity, and inclusion (DEI) in the workforce.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 12, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'data:image/png;base64,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',
                                              width: 70,
                                              height: 70,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 0, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                await launchURL(
                                                    'https://wicys.us17.list-manage.com/track/click?u=5ae25956860bc4ba423062304&id=237cd24cef&e=7f36b6da55');
                                              },
                                              child: Text(
                                                'WiCyS Security Training Scholarship',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 13,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Wrap(
                                      spacing: 0,
                                      runSpacing: 0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 0, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await launchURL(
                                                  'https://amvets.org/scholarships/');
                                            },
                                            child: Text(
                                              'Offers financial support to women soldiers, veterans, and lineal descendants for certifications, community college degrees, and university degrees',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 44),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 12, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'https://texvet.org/sites/default/files/styles/media_library/public/media/logos/logo_legacy-society%5B1%5D.gif?itok=rs3_LLvb',
                                              width: 70,
                                              height: 70,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 0, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                await launchURL(
                                                    'https://texvet.org/resources/women-veteran-legacy-scholarship-program');
                                              },
                                              child: Text(
                                                'Women Veteran & Legacy Scholarship Program',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 9,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Wrap(
                                      spacing: 0,
                                      runSpacing: 0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 0, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await launchURL(
                                                  'https://ivmf.syracuse.edu/');
                                            },
                                            child: Text(
                                              'Join the cyber community through women and military-specific organizations.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 17,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Wrap(
                                      spacing: 0,
                                      runSpacing: 0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 0, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await launchURL(
                                                  'https://ivmf.syracuse.edu/');
                                            },
                                            child: Text(
                                              'IVMF offers 1 FREE certification voucher through their course. After completing the course you choose and score 80% or higher on 3 practice tests, you will get a voucher. (Depending on certification choice, this can take 2-4 months)',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 12, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'https://pbs.twimg.com/profile_images/1504559606466588673/zU6XBz73_400x400.jpg',
                                              width: 70,
                                              height: 70,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 0, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                await launchURL(
                                                    'https://ivmf.syracuse.edu/');
                                              },
                                              child: Text(
                                                'Institute for Veterans and Military Families',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 11,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Wrap(
                                      spacing: 0,
                                      runSpacing: 0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 0, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await launchURL(
                                                  'https://ivmf.syracuse.edu/');
                                            },
                                            child: Text(
                                              'Milspouse Coders Is Dedicated To Empowering Military Spouses Around The Globe To Find Challenging And Fulfilling Careers In Technology. Milspouse Coders connects milspouses to opportunities learn, network, mentor, and explore new tech.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 12, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'data:image/png;base64,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',
                                              width: 70,
                                              height: 70,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 0, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                await launchURL(
                                                    'https://milspousecoders.org/');
                                              },
                                              child: Text(
                                                'Milspouse Coders',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Wrap(
                                      spacing: 0,
                                      runSpacing: 0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 0, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await launchURL(
                                                  'https://ivmf.syracuse.edu/');
                                            },
                                            child: Text(
                                              '\"America\'s mentoring network for the military.\" Aids Service Members, Veterans, and Military Spouses in setting up free 1-hr mentorship phone calls with successful professionals. Create a free profile at Veterati to get unlimited access to thousands of volunteer mentors: CEOs, recruiters, entrepreneurs, managers, Veterans & civilians alike.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 12, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'data:image/jpeg;base64,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',
                                              width: 70,
                                              height: 70,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 0, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                await launchURL(
                                                    'https://www.veterati.com/');
                                              },
                                              child: Text(
                                                'Veterati',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Wrap(
                                      spacing: 0,
                                      runSpacing: 0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 0, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await launchURL(
                                                  'https://ivmf.syracuse.edu/');
                                            },
                                            child: Text(
                                              'Resources, opportunities, and mentors within the WiCyS network. Discounted WiCyS membership. WiCyS Veteran Fellowship Award opportunities. Exclusive community forum. Access to the directory of WiCyS veterans for external opportunities. Work with partners and sponsors for job placement.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 12, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'data:image/png;base64,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',
                                              width: 70,
                                              height: 70,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 0, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                await launchURL(
                                                    'https://www.wicys.org/initiatives/veteran-assistance/');
                                              },
                                              child: Text(
                                                'WiCyS Veterans’ Assistance Program',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 12,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Wrap(
                                      spacing: 0,
                                      runSpacing: 0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 0, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await launchURL(
                                                  'https://ivmf.syracuse.edu/');
                                            },
                                            child: Text(
                                              'The Women in Cybersecurity (WiCyS) Military Affiliate is a special interest community comprised of active duty service members, veterans, and their spouses. As a WiCyS Affiliate, we strive to provide opportunities to educate, recruit, retain, and advance women in cybersecurity. We offer mentoring, networking, and career development tailored to our unique community.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 12, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 12, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAABX1BMVEX///9oocHCzq+BKo+x00ncyW1jn8GDrb3Bza3cymy+y6ry686fonH8/Pu01j/ezWz7/PeAMY/SunJin8St0T93FpG/2nHS2sWntZvmzmHA1eLI0rby9O6y00XF069mn8PizGbH2LB9JZDO3eiwuJTl1pXh5tjU28bJ3LDt8vbk1WaNSI/t8OelwtZ2p8Xk7PJ1pLqLtpSz1Fbv9uCWr6eupqecwnfj7sP2+u16IZGFsMupzzKgv9W0s6p0p7R8rarRxXjAvofIwYCJqq+rzFenymGAr6OaeJ+YX42NSY67v62/n37Z6KyEPZC1joXE3X6OWZnUz57CvoXNxHyis59dmsyhiKOTZpujxWqUvYOQuYyYc52ol6W3uKu8xHethbrGzVu4l8Sfbonr3WDMs9Tk1umqfrfezuTAzlaqfoedZqvHq3vJ1EbN4ZLg7LyxiYW6l3+kdYqSVI7OtXaFs5zWVBkVAAAQ5klEQVR4nO2d+1caSRbHBaFtSKBBdNTwsJs4wCAag/GBr2jUxBfRScYk5rE7m8zsTNY17///bBV0Q3d11a1q6W7A5ftDTk6OUT7eW/dV1dVDQwMNNNBAAw000EADDTTQQH2nWObevW5/Bk+VKKRH1u7+0u2P4ZkyhbQcHJECa3duJGMsU0xHgw1CSZqfuxfr9gdyWYlKWpblIBIiRJKkm+WsFeSeDbwWIYZcm7shQSdRmUgbeGZC7KwbN8BZUXQJyiZAEyGGDPS7s1aKwWjQKgthoBl1uv0xr6tEYcJqPhohhpzvT0Pa3JNJ2HDWO/1myEoxTaFjETYMOXe32x9aXAmG+SDCfoo6lOgiRNgnUSeGogssgLDhrBt3ezlFNqJLR4TNqNOrzorck4cnQNizzorckxlcHBLqhuwpZ8WdkYj9hAkx43zvpMhYhRddrkHYUG9EHTD5kUJfOJISJ+yBqIPcU9A75SgS/tIR9MFTWEK27PI4AJXWUQHzyYhOThcLhUolk6n8+vzRzs7M5IPdgCClJHUp6jSii5Dt5HQBoekfMvGzqqhI4e3tZ5O7yJwCkMhZ537xGzImlvzkaDBdyJg/XOLnSBgrElFVRdme2Z1PCSxM9GuY8zXqJArGXAlWNF2skP9VJ2xiKlPqo8kFYWf1KerE2J2RFS+KzGf/5ZgJsdSp8MyuiB39ijr0xp3mn+kC7dPYCLEl1Z0RIUbkrRsed1i4tBZSVC4k6L8hOyFiVMMzYr6KhKKOV3ii7okNOGH3T4AQMU5tPxBE9MxZRaMLNmCwwP42dEK0HtVnC6LljhcT8wredBAU24AQIWIMi5rR9Q5LNLroHlqEXAggDCvqjOSgap13K+pkxN0TA8psD20STqkKCzKi7gh7asCtIWRGNLrogMASRHiZSuXXnWfbYVzPUDHV504QG87aqR0LUSeA0SBjCSYyhUYZq3dPCw8mn6H4qVIQt520Vxiy0zFrwQEfCzCB4xTuQrC34w5YklADtfBgZntKtVlSDe86QvSVUKYCZhp4rS9q7x9iyEeqjVENO7Kin4SyTJbZmK+AClTzV5mnGKhU230UIX1V3V5wMOnwkVCO2oNMDPER69g6p0GGfLBNmlF9FBBH9JGQAlhJ2+OUbRKVCswohBmndoRTf+eERWFAW6KPFcR216TU7jaBqP4mvBR9I4ymySiTmKAmGto0MTXyzIoYiQgHVOmOP4T2KJNhFLLUeWkqQCCq26JL0S/CaFEQkDERTgV2CMQZQSP6RCiniX6XCcjcA5Z2pix+qgr6qU+EZBxNsHst1lR/OmBFVJ+J+ak/hNG0NY7GJtjNJHPfIrWwrVhSxgOx0Y0/hESYKQDdMntnJrVr6TcEg03HhCLbStEJ6/+pXHMfP/WbJdqok+d+EIp0h4QJY+DAAzqpEHhkRlSfixjRD0IykEI+Cu8fpnYjFj8VWYl+EBKBNANvaIA7pKkZsxGndvywoUiksdZrRXgoBxOOmI0YUQXaKB8IiTjDMSFnl9tqRJEC3A9Cq5PCq5B7YmjETKg86gVCYnQR4y1c3kkFcziNhPlu6gOhtZ6p8GZzHEJrTlT40dR7QqKr4MQZPuFu2BRrBDoMzwmJETCc7QUIJem5yYgqP194T2jt7SucSCpz1+G5uVFUn3MXYseEvEkUUdBAkVTO5XJabiQ1PT0tAcXpA1NKjAjMTr2etUUnLIGGvgzlnFYqlYJHm0i7W0iB1Pk5IqUSWio3fh/s+TTRSkhrDJHdckdLL16enc3WkW6H9vb29vdfXdx/GJhOpWyUUiBiahP5TWLnhJzgbyVMkIS5EqJ7cpZMDueR0B/J2/EsFvozVH31+uECeTDKGmqmJj330oojwow13+dKR2/f1GsIrSVEGGoKY8bj+68fByyGlKRnjgjnO91BdEhoCqUosGy+qedrJjwLYVPxeHb/9ZbZkNJOfxDKpeDSWT5vxaMQYmPGs8sPp1sk0zP+EmZgQAahrGlvz+x4dMKGJZcfn+sskjPCtU73gHnNEJUQ+efZMI2PRYgYs8tbzfXokHC+Y0JOr0Aj1IJPGHxsQuSrofuBlGNCaa1DQFRoOvXSXOltvcbgAwgx4/5DFHF8J5xwaEMt+IZpQJgQu+rr6ZRDwo1OCYccEpbezQJ8HEJkxlcLKb8Ji44ItaUkCMghRGbc25p0FGnmOibklG1WwtW31BThgDAUr/4j7ISw0+aJW3pbCf/JDjGihKia+90JYefPZToh5AMKECL97oCw84NtFTghmghj/+ID5vO31/mEbUQuYccJn5vyTYQigIfvZ05DY+KIXMKOizZuym8TCgDWviofbg2tVMUReYTSmgvnoeGE2CL8g8s3nD9Q1fCtoaEVAcKQIka44QIhnBANwj+hQkbX+LESiSDCxE8iiBEhws6TBS8h6oS//IcPODw+qoTFCf8WInTjIX44XeiEAnnCKWFjKXIjjRuEFQHCP0QAnRLipcgj7LjDx0qA6aJB+GddwEedE1YjXEIXkgUvXTQI/y0E6JgQ+SmH0JVQOhQDgykm/EuI7xqEIYVH2HlngQUGU0QYE4mjeOxmIkQSIfybR+hGsuAcAIpOiISZfC158LHeJqyenO6tizCWOevQnRtfwJFptMg3YT4/+/myXD40ESaGVj+dCtjxvzChC3U3VgYKNdHiXzwT5utPw+WyEp41Ea6i75tY4TPGJ6kbVIaTulGV4k8CnW2LFjkmzOcPtstqOGwnRFqpcnqp+MU0sEXqwpCmKSiYaktJELA2e1luFNFUwqHE1XoWIsyGtgAjuhRo4GBaegOasHYwWm5ueNIJh2KfsqCnxl8DC1Fy6xFEoG7LHYHlTO1961EKBiHyVLAjzu5BC9GtB0mBqkZ7CwIeKK39XEWxxtK2FkOAo2ZDj9lGdCnQIAHB9CVAWDtQDcBIOXycNGX8E5MRhz6NAYjxC/Y5WncqGixmqJGDAGD+26jhoqr6ZbZmqWmqZsYTIKJm95nnaF0LNMBCzC1ByfCyrAOWRw/wVrC5Ls2uV1da3z9xCizFLDuauvesM2ubVNaASFr7rBoeetncjLJW3mNjV63VCC3F+A8WoSutU1PMUKOxt2Hy9bC+CMtP9RkO2VusX7V+AuCn8WWGm7qW77EYGTH3rs720ae6j5aPjcMKtu5p/dT4AQn2hDG7x1qI7i1DZvGtLbHDzKH+8IT6vbUbZe8P10+Mn/CJvRJZC9GVCYYhxuC79IIZaPK6CRXlW+tr7ITZ0KL+E1bZRozTM6JbZbcuer4oPWER5pN6pih/bn8JpcdfPzWizRWbkFG4uZcNsagLUWbne1SuNevtUVMsok0x1o2cscL00vgy3Ybu3ndK3YHKHTFD6fiXss2EVMKxn3QjsmNNfJ9a1bjU/Rqi5gt22Z1PNrN9JHKQhwlbKzHGzPpxelXjypjNJJqbapsMC6JIOqo7qcWwtFnbmJEUT1iE2b0FSjB1sWRripYvtE1W95s/aOYK5bjGJfxJ/wkrrKSf3aOmC7fvjaRNvktL7EDzoeGkytc8l9DoFReZNqw+tIcal3MFFiVflJh1d+1jcxkqB1zCbHXxWoTu5gosipsKEH7jEoZC1yJ0aVJqVsIeTd0hHFu5DmHHx9kosrspQPhZmPCaXup2JMWyt8FApPnq9Tr04gZee9Jn58Pae53wMz+WGkXNooNs4UEkxbK5KZDxvzXbX+WSnw+NHhHIh7aM73q6b8o2ywCqtlmjpklyqrbQmNEiMpsLStXmamvYlu0wLVB55/UplPJetC5lb5vaK29X5xdmkY9tQd2T3gCXv+St/4gJV6vtuVOrLGW3wJTuyasXRdg6faAD1hdiJGLKF/n6aFm5ZR07jRlN/ifmtM3eAXsTZ7DIWMOeYrR7/GPTYan84WX41uKVacTdHrexR6a2KYZHcQaLjDXQJOqrMWr7Om761/H6TpxWdkMT0ziZLCQPr6ElUiIKpkzCejOaImf9Zja05QRttuWjwJgmuxewEnpQdLdFngCDJsIfdSMqo4fUZ9fw1Ls1TFwFZt4XZLLw8oU0ZPmtPWETJr8bM+/RwxqNcCzbAgRMaJvqe1TPGCKGGdDOTO29caFOeftgPG8jHDNtzQAnTrO2gbB3cQaLMKIcBHbxa18+GLuj6ue6Pto3CNfHrtrba8A42FbReGxCMmHIOWDzyRi4NbafRj82GJtPyY6tZ6/aBhxKnAL7h+QOqctjUruIrK8xG6jhZoY3NrnL5dHj9/VkEtuwenqyaN7mBhYhyiFE6+TilhpD1pUIn1RABXgLMayWFeX78VN5ZXHV8gh/jDlGbBDuWwE9zPaGiEcu4dMmtfr3NiJqF5Vy+Rb5Da/AQ0Px+1ZClyfdVBUINwVPDOWTx2XLBV4RgnAVWoO4v7f2hj6YkFyJsgadxsCIH8PlCJNwZQ8+2Ra/mPbdhGQ4BWNNw1MPj5X2LbMWwtUrztG9bGgr5bsJSSPmgmccxHz+4FIp60drTISrJ7xze8iEVkDvA2lT5ErkHhHOjx8+vQx/KJdVVdEJV1eustBBoW6a0FbY5OCVqNsx+e390+Pv38O3VlcXP52cVkWOQdtM6NurZoic+A4+gGkw1oaT9frs7Wq1GhI75k0GUk+bCquIC72ADsOGOYyrNgG6hgmtudCz+RNN1m2aXBB+ftssoWdIdcBXxB09vr5pzpoxSuxpxvUJs1UizHjZ2ttFnG7X2Adrrk0Y/9GdTGGICDYyLyk6JiSrGR/DTFPEADx3JPCEpRPCODF/8jXMNEX2GJucyxScEcb3tvzvKUgRI5vSWxdtaOt7ffdRLCIpypoQohBhNkuMubvgo1jEDYIyfG7fAWE2fp/YbeqGj2IRfiprL/iIAoRZsq/3fvrEErmhiK3IY+QTxm1PWPic680in2pDiLyIyr+9Ze8x4aK+53qzyPMZcmmT89Az9wae/S3bfmhX33xsu+tSOzoECzjeLUrLARLQt7aXLvtFWZr8AlqM8E1YoR+2yzC7lCjasj9gmsttAs0UeJvZ8pbtHUFdXYRNUe7V1YIvmAEHuJGuet9+m6lX50ociXJ6OFfafMlwVQZhNh662Dq3H3buWiY0i3ojgca6OZFKiPiQg1KOWHYxE5pFv5YP316arNkgKYTx+N7FFsVBeyDKGKLfDSJr2rsXs8OEtxKE+LrdVz+o9gt4eW7GqVhP7GtacOnNbNJ8UauJENNV9y8eBhh8PRBG22I/gpnTcktPzurD47UmJyZs3iAcr+4v30fWo/onBuyFMNoWdBe7VtKONpfePnk5W0825qXV/f3l1z8ebgXOz4EHtXsLEE9Qodsz8HXs+l9HAgsNC02noNsSAt3p6kEVONfxBmWMmWveOs+Bw+puNUoVF1G3odg78XoQUBRRiLAnShmKqO+svA5hrwKKvbRUhLBnAYUQ+YTzPQzIf0eJAGFvA3IvdOW/Z2atxxK9XbxL3DlvtOqlWpSlBHzhKUgobfQBIEIsQlkDIpTmeqZd4ggKqWxCqTcLGbqAeMMk7IMYY1ZmguWpLMI+WYJtxVgv+2IR3umXJdgWI/lTCXusnxdVgnohCoVQCsz1mYcaihUoAcdOKK31eJ0GKWNfjXbCfjWgLpsZCcK+NmBTZIVjIezfFWhRZoJBKEkbfRlC7YpV0hRCKbB2t/9yIEsoqhrZ0SCU1vowx0PKGJO4BqEkzd+5CQvQqgQKq3LjTauSdJP806xYpYhtOL9xQ/mwEOPI3A2Jnywl7t289TfQQAMNNNBAAw000EAD/T/ofxiMnce3R3dRAAAAAElFTkSuQmCC',
                                              width: 70,
                                              height: 70,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 0, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                await launchURL(
                                                    'https://www.wicys.org/initiatives/veteran-assistance/');
                                              },
                                              child: Text(
                                                'Women in Cybersecurity',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Wrap(
                                      spacing: 0,
                                      runSpacing: 0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 0, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await launchURL(
                                                  'https://ivmf.syracuse.edu/');
                                            },
                                            child: Text(
                                              'The Women’s Society of Cyberjutsu (WSC) is a non-profit, 501c(3) organization passionate about helping and empowering women to succeed in the cybersecurity field. Dedicated to raising awareness of cybersecurity career opportunities and advancement for women in the field, closing the gender gap and the overall workforce gap in information security roles.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 12, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'https://media-exp2.licdn.com/dms/image/C4E0BAQHyn3V-SC5b-A/company-logo_200_200/0/1624761344358?e=1666224000&v=beta&t=GgVOLu1AoDTMkv9-c9Z0l2rcwrjg_UrGmQzviNUTwD8',
                                              width: 70,
                                              height: 70,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 0, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                await launchURL(
                                                    'https://womenscyberjutsu.org/?');
                                              },
                                              child: Text(
                                                'Women\'s Society of Cyberjutsu',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Wrap(
                                      spacing: 0,
                                      runSpacing: 0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 0, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await launchURL(
                                                  'https://ivmf.syracuse.edu/');
                                            },
                                            child: Text(
                                              'Provides grants and online learning materials such as laptops for military spouses as well as funding for certifications.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 44),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 12, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'https://media-exp1.licdn.com/dms/image/C4E0BAQHZeCTdKIFSeA/company-logo_200_200/0/1598279014596?e=2147483647&v=beta&t=gqQ9li2cr_G1wLk16-5KO4Q4letQq-StYOpM_8Tr4mk',
                                              width: 70,
                                              height: 70,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 0, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                await launchURL(
                                                    'https://milspousegrant1.getjobtraining.com/?utm_source=google&utm_medium=cpc&utm_campaign=Non-Brand_MilitarySpouses&gclid=CjwKCAjwmJeYBhAwEiwAXlg0AV9NBakNlDHd9pl7x5nrfL2EQyJqfXvqT9t2W-1iQSHsoevPEFDAjRoCw-AQAvD_BwE');
                                              },
                                              child: Text(
                                                'World Education',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 16, 0, 0),
                                  child: Text(
                                    'Categories',
                                    style: FlutterFlowTheme.of(context).title3,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Wrap(
                                      spacing: 0,
                                      runSpacing: 0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 0, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await launchURL(
                                                  'https://www.cyberseek.org/');
                                            },
                                            child: Text(
                                              'Additional resources, scholarships, and information to guide you towards your cybersecurity career.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 17,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 12, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'data:image/jpeg;base64,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',
                                              width: 70,
                                              height: 70,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 0, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                await launchURL(
                                                    'https://www.cyberseek.org/');
                                              },
                                              child: Text(
                                                'CyberSeek',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Wrap(
                                      spacing: 0,
                                      runSpacing: 0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 0, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await launchURL(
                                                  'https://www.cyberseek.org/');
                                            },
                                            child: Text(
                                              'The DOD MWR Libraries digital collection includes e-books, audiobooks, movies, academic support (tutors), professional development, career transition and a vast array of learning resources and online content for all ages and interests.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 12, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'https://www.armymwr.com/application/files/1216/4314/2965/DODMWRLibraryThumbnail.png',
                                              width: 70,
                                              height: 70,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 0, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                await launchURL(
                                                    'https://www.militaryonesource.mil/recreation-travel-shopping/recreation/libraries/morale-welfare-and-recreation-digital-library/');
                                              },
                                              child: Text(
                                                'DOD MWR Libraries',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 15,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Wrap(
                                      spacing: 0,
                                      runSpacing: 0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 0, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await launchURL(
                                                  'https://www.cyberseek.org/');
                                            },
                                            child: Text(
                                              '“Websites like Glassdoor and Fairy Godboss provide ratings and reviews as well as information on companies which provide inclusive work environments for women and working mothers.”',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 12, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'https://media.glassdoor.com/sqll/1660848/fairygodboss-squarelogo-1558681286240.png',
                                              width: 70,
                                              height: 70,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 0, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                await launchURL(
                                                    'https://fairygodboss.com/');
                                              },
                                              child: Text(
                                                'Fairy Godboss',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 12, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'https://yt3.ggpht.com/ytc/AMLnZu9Uc853Vmd9An0M7cSoJTngtyMGkf2inXOjjd6Rew=s900-c-k-c0x00ffffff-no-rj',
                                              width: 70,
                                              height: 70,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 0, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                await launchURL(
                                                    'https://www.glassdoor.com/Reviews/index.htm?utm_source=adwords&utm_medium=cpc&utm_campaign=&utm_content=&utm_term=&gclid=CjwKCAjwmJeYBhAwEiwAXlg0AdeCtQ4BbVrImXKOTVswh2aE91M5OMZ8QfAaZnEypGDLEP2-8MLr9xoCuuQQAvD_BwE&gdir=1');
                                              },
                                              child: Text(
                                                'GlassDoor',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Wrap(
                                      spacing: 0,
                                      runSpacing: 0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 0, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await launchURL(
                                                  'https://www.cyberseek.org/');
                                            },
                                            child: Text(
                                              'This annual honor is given to selected female veterans who are either interested in cybersecurity careers or who are already working in the field. Recipients gain complimentary attendance to the WiCyS annual conference where they are able to meet with the greater community. ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 12, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 12, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'data:image/png;base64,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',
                                              width: 70,
                                              height: 70,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 0, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                await launchURL(
                                                    'https://www.wicys.org/initiatives/veteran-assistance/');
                                              },
                                              child: Text(
                                                'WiCyS Veteran Fellowship Award ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 13,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 12, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'https://i.pinimg.com/280x280_RS/e1/ed/65/e1ed65872ec6aa19254cff4db6308cfd.jpg',
                                              width: 70,
                                              height: 70,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 0, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                await launchURL(
                                                    'https://www.womenveteransalliance.org/');
                                              },
                                              child: Text(
                                                'Women Veterans Alliance',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 16,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 44),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 12, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'data:image/png;base64,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',
                                              width: 70,
                                              height: 70,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 0, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                await launchURL(
                                                    'https://womenveteransmagazine.com/');
                                              },
                                              child: Text(
                                                'Women Veterans Magazine',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 16,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 16, 0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
