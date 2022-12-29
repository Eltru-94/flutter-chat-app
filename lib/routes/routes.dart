import 'package:app_chat/pages/chat_page.dart';
import 'package:app_chat/pages/login_page.dart';
import 'package:app_chat/pages/register_page.dart';
import 'package:app_chat/pages/usuarios_page.dart';
import 'package:flutter/cupertino.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'users': (_) => usuariosPage(),
  'chat': (_) => chatPage(),
  'login': (_) => loginPage(),
  'register': (_) => registerPage(),
  'loading': (_) => loginPage()
};
