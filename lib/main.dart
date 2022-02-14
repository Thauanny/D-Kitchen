import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'domain/app.dart';
import 'infra/services/client_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(ClientService()..init());
  runApp(const App());
}
