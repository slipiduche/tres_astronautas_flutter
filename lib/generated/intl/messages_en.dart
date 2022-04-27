// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static m0(name) => "Welcome ${name}";

  static m1(firstName, lastName) => "My name is ${lastName}, ${firstName} ${lastName}";

  static m2(howMany) => "${Intl.plural(howMany, one: 'You have 1 notification', other: 'You have ${howMany} notifications')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "acceptConfirmation" : MessageLookupByLibrary.simpleMessage("Accept Confirmation"),
    "acept" : MessageLookupByLibrary.simpleMessage("Acept"),
    "alerts" : MessageLookupByLibrary.simpleMessage("Alerts"),
    "all" : MessageLookupByLibrary.simpleMessage("all"),
    "aprove" : MessageLookupByLibrary.simpleMessage("Aprove"),
    "at" : MessageLookupByLibrary.simpleMessage("at"),
    "available" : MessageLookupByLibrary.simpleMessage("Available"),
    "change" : MessageLookupByLibrary.simpleMessage("Change"),
    "changeConfirmation" : MessageLookupByLibrary.simpleMessage("Change Confirmation"),
    "changePassword" : MessageLookupByLibrary.simpleMessage("Change password"),
    "clicHere" : MessageLookupByLibrary.simpleMessage("Click here"),
    "confirm" : MessageLookupByLibrary.simpleMessage("Confirm"),
    "confirmPassword" : MessageLookupByLibrary.simpleMessage("Confirm Password"),
    "confirmation" : MessageLookupByLibrary.simpleMessage("Confirmation"),
    "decline" : MessageLookupByLibrary.simpleMessage("Decline"),
    "defaultt" : MessageLookupByLibrary.simpleMessage("Default"),
    "delete" : MessageLookupByLibrary.simpleMessage("Delete"),
    "deleteConfirmation" : MessageLookupByLibrary.simpleMessage("Delete Confirmation"),
    "deleting" : MessageLookupByLibrary.simpleMessage("deleting"),
    "done" : MessageLookupByLibrary.simpleMessage("Done"),
    "dontHaveAccount" : MessageLookupByLibrary.simpleMessage("Don’t have an account?"),
    "email" : MessageLookupByLibrary.simpleMessage("Email"),
    "forgot" : MessageLookupByLibrary.simpleMessage("Forgot your password ?"),
    "home" : MessageLookupByLibrary.simpleMessage("Home"),
    "hours" : MessageLookupByLibrary.simpleMessage("Hours"),
    "iRead" : MessageLookupByLibrary.simpleMessage("I’ve read and accept all the"),
    "isNotEmail" : MessageLookupByLibrary.simpleMessage("Invalid Email"),
    "loginButtonText" : MessageLookupByLibrary.simpleMessage("Login"),
    "logout" : MessageLookupByLibrary.simpleMessage("Logout"),
    "logoutConfirmation" : MessageLookupByLibrary.simpleMessage("Are you sure to log out?"),
    "mustBeEqual" : MessageLookupByLibrary.simpleMessage("Passwords must be equal"),
    "mustHave" : MessageLookupByLibrary.simpleMessage("Passwords must be at least 6 characters long"),
    "name" : MessageLookupByLibrary.simpleMessage("Name"),
    "newPassword" : MessageLookupByLibrary.simpleMessage("New Password"),
    "no" : MessageLookupByLibrary.simpleMessage("No"),
    "noData" : MessageLookupByLibrary.simpleMessage("No data"),
    "ok" : MessageLookupByLibrary.simpleMessage("Ok"),
    "passWord" : MessageLookupByLibrary.simpleMessage("Password"),
    "passwordRecovery" : MessageLookupByLibrary.simpleMessage("Password Recovery"),
    "privacyPolicy" : MessageLookupByLibrary.simpleMessage("Privacy Policy"),
    "privacyPolicyText" : MessageLookupByLibrary.simpleMessage("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    "recoveryText" : MessageLookupByLibrary.simpleMessage("Please introduce your email and check your inbox."),
    "resetPasswordButtonText" : MessageLookupByLibrary.simpleMessage("Accept"),
    "restore" : MessageLookupByLibrary.simpleMessage("Restore"),
    "restoring" : MessageLookupByLibrary.simpleMessage("Restoring"),
    "selected" : MessageLookupByLibrary.simpleMessage("Selected"),
    "signUp" : MessageLookupByLibrary.simpleMessage("Sign Up"),
    "signUpMessage" : MessageLookupByLibrary.simpleMessage("Sign up and start working with us"),
    "signupHere" : MessageLookupByLibrary.simpleMessage("Sign up here"),
    "simpleText" : MessageLookupByLibrary.simpleMessage("Hello world"),
    "status" : MessageLookupByLibrary.simpleMessage("Status"),
    "textWithPlaceholder" : m0,
    "textWithPlaceholders" : m1,
    "textWithPlural" : m2,
    "timeout" : MessageLookupByLibrary.simpleMessage("Timeout"),
    "typeNumber" : MessageLookupByLibrary.simpleMessage("Type number"),
    "unavailable" : MessageLookupByLibrary.simpleMessage("Unavailable"),
    "updating" : MessageLookupByLibrary.simpleMessage("Updating"),
    "user" : MessageLookupByLibrary.simpleMessage("User"),
    "value" : MessageLookupByLibrary.simpleMessage("Value"),
    "waiting" : MessageLookupByLibrary.simpleMessage("Waiting for approval"),
    "yes" : MessageLookupByLibrary.simpleMessage("Yes")
  };
}
