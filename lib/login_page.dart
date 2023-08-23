// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:umkm_wview/home_page.dart';
import 'package:umkm_wview/url.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();

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
      body: WebView(
        initialUrl: UrlServer.url + "/login",
        navigationDelegate: (NavigationRequest request) {
          if (request.url.startsWith(UrlServer.url)) {
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => const NavWebview()));
          } else if (request.url.startsWith(UrlServer.url + 'login')) {
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => const LoginPage()));
          }
          return NavigationDecision.navigate;
        },
      ),
    );
  }
}
