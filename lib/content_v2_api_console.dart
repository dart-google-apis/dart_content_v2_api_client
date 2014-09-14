library content_v2_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_content_v2_api/src/console_client.dart';

import "package:google_content_v2_api/content_v2_api_client.dart";

/** Manage product items, inventory, and Merchant Center accounts for Google Shopping. */
@deprecated
class Content extends Client with ConsoleClient {

  /** OAuth Scope2: Manage your product listings and accounts for Google Shopping */
  static const String CONTENT_SCOPE = "https://www.googleapis.com/auth/content";

  final oauth2.OAuth2Console auth;

  Content([oauth2.OAuth2Console this.auth]);
}
