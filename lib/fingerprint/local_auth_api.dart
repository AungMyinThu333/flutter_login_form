import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuthApi {
  static final _auth = LocalAuthentication();

  static Future<bool> hasBiometrics() async {
    try {
      return await _auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      return false;
    }
  }

  static Future<bool> authenticate() async {
    final isAvailabel = await hasBiometrics();
    if (!isAvailabel) return false;

    try {
      return await _auth.authenticateWithBiometrics(
        localizedReason: 'scan fingerprint to auth',
        useErrorDialogs: true,
        stickyAuth: true,
      );
    } catch (e) {
      return false;
    }
  }
}