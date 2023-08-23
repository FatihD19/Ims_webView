import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:umkm_wview/login_page.dart';
import 'package:umkm_wview/url.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyWebView extends StatefulWidget {
  final String title;
  final String selectedUrl;

  // final Completer<WebViewController> _controller =
  //     Completer<WebViewController>();

  const MyWebView({
    Key? key,
    required this.title,
    required this.selectedUrl,
  }) : super(key: key);

  @override
  State<MyWebView> createState() => _MyWebViewState();
}

class _MyWebViewState extends State<MyWebView> {
  // late WebViewController _controller;

  // void _executeJavascript() async {
  //   await _controller
  //       .evaluateJavascript("document.getElementById('logout-form').submit();");
  // }

  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(widget.title),
        ),
        body: WebView(
          initialUrl: widget.selectedUrl,
          javascriptMode: JavascriptMode.unrestricted,
          // onWebViewCreated: (controller) {
          //   _controller = controller;
          // },
          navigationDelegate: (NavigationRequest request) {
            if (request.url.startsWith(UrlServer.url + 'login')) {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => const LoginPage()));
            }
            return NavigationDecision.navigate;
          },
          // onWebViewCreated: (WebViewController webViewController) {
          //   _controller.complete(webViewController);
          // },
        ));
  }
}
