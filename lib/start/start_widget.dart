import 'dart:async';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home/home_widget.dart';
import '../login/login_widget.dart';
import '../register/register_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StartWidget extends StatefulWidget {
  const StartWidget({Key? key}) : super(key: key);

  @override
  _StartWidgetState createState() => _StartWidgetState();
}

class _StartWidgetState extends State<StartWidget> {
  PageController? pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int pageIndex = 0;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    // On page load action.
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        pageIndex += 1;
      });
      if (pageIndex >= 2) {
        setState(() {
          pageIndex = 0;
        });
      }
    });
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().isLoggedIn) {
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeWidget(),
          ),
        );
      } else {
        return;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFFFDAF0),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0, -0.9),
                  child: Container(
                    width: 200,
                    height: 200,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/images/image_2022-08-27_231410326.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        PageView(
                          controller: pageViewController ??= PageController(
                              initialPage: min(
                                  valueOrDefault<int>(
                                    pageIndex,
                                    0,
                                  ),
                                  2)),
                          scrollDirection: Axis.horizontal,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, -1),
                              child: Image.asset(
                                'assets/images/3d-render-online-payment-concept-transaction-receipt-online-payment-icon_95505-315.webp',
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            Image.asset(
                              'assets/images/3d-render-online-payment-concept-transaction-receipt-online-payment-icon_95505-305.jpg',
                              width: 100,
                              height: 100,
                              fit: BoxFit.fitWidth,
                            ),
                            Image.asset(
                              'assets/images/3d-rendering-open-gift-box-surprise-earn-point-concept-loyalty-program-get-rewards_95505-322.webp',
                              width: 50,
                              height: 50,
                              fit: BoxFit.fitWidth,
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0.7),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: SmoothPageIndicator(
                              controller: pageViewController ??= PageController(
                                  initialPage: min(
                                      valueOrDefault<int>(
                                        FFAppState().pageIndex,
                                        0,
                                      ),
                                      2)),
                              count: 3,
                              axisDirection: Axis.horizontal,
                              onDotClicked: (i) {
                                pageViewController!.animateToPage(
                                  i,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              effect: ExpandingDotsEffect(
                                expansionFactor: 2,
                                spacing: 8,
                                radius: 16,
                                dotWidth: 50,
                                dotHeight: 5,
                                dotColor: Color(0xFF9E9E9E),
                                activeDotColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                paintStyle: PaintingStyle.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0.95),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                duration: Duration(milliseconds: 300),
                                reverseDuration: Duration(milliseconds: 300),
                                child: RegisterWidget(),
                              ),
                            );
                          },
                          text: 'Register',
                          options: FFButtonOptions(
                            width: 150,
                            height: 60,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                duration: Duration(milliseconds: 300),
                                reverseDuration: Duration(milliseconds: 300),
                                child: LoginWidget(),
                              ),
                            );
                          },
                          text: 'Login',
                          options: FFButtonOptions(
                            width: 150,
                            height: 60,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ],
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
