library content_v2_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_content_v2_api/src/browser_client.dart';
import "package:google_content_v2_api/content_v2_api_client.dart";

/** Manage product items, inventory, and Merchant Center accounts for Google Shopping. */
@deprecated
class Content extends Client with BrowserClient {

  /** OAuth Scope2: Manage your product listings and accounts for Google Shopping */
  static const String CONTENT_SCOPE = "https://www.googleapis.com/auth/content";

  final oauth.OAuth2 auth;

  Content([oauth.OAuth2 this.auth]);
}
