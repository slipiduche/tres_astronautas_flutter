// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class TextLanguage {
  TextLanguage();
  
  static TextLanguage current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<TextLanguage> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      TextLanguage.current = TextLanguage();
      
      return TextLanguage.current;
    });
  } 

  static TextLanguage of(BuildContext context) {
    return Localizations.of<TextLanguage>(context, TextLanguage);
  }

  /// `at`
  String get at {
    return Intl.message(
      'at',
      name: 'at',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Restoring`
  String get restoring {
    return Intl.message(
      'Restoring',
      name: 'restoring',
      desc: '',
      args: [],
    );
  }

  /// `Restore`
  String get restore {
    return Intl.message(
      'Restore',
      name: 'restore',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Type number`
  String get typeNumber {
    return Intl.message(
      'Type number',
      name: 'typeNumber',
      desc: '',
      args: [],
    );
  }

  /// `Timeout`
  String get timeout {
    return Intl.message(
      'Timeout',
      name: 'timeout',
      desc: '',
      args: [],
    );
  }

  /// `Unavailable`
  String get unavailable {
    return Intl.message(
      'Unavailable',
      name: 'unavailable',
      desc: '',
      args: [],
    );
  }

  /// `Available`
  String get available {
    return Intl.message(
      'Available',
      name: 'available',
      desc: '',
      args: [],
    );
  }

  /// `Hours`
  String get hours {
    return Intl.message(
      'Hours',
      name: 'hours',
      desc: '',
      args: [],
    );
  }

  /// `Value`
  String get value {
    return Intl.message(
      'Value',
      name: 'value',
      desc: '',
      args: [],
    );
  }

  /// `Default`
  String get defaultt {
    return Intl.message(
      'Default',
      name: 'defaultt',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get status {
    return Intl.message(
      'Status',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `all`
  String get all {
    return Intl.message(
      'all',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `No data`
  String get noData {
    return Intl.message(
      'No data',
      name: 'noData',
      desc: '',
      args: [],
    );
  }

  /// `Aprove`
  String get aprove {
    return Intl.message(
      'Aprove',
      name: 'aprove',
      desc: '',
      args: [],
    );
  }

  /// `Accept Confirmation`
  String get acceptConfirmation {
    return Intl.message(
      'Accept Confirmation',
      name: 'acceptConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `Change Confirmation`
  String get changeConfirmation {
    return Intl.message(
      'Change Confirmation',
      name: 'changeConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `Change`
  String get change {
    return Intl.message(
      'Change',
      name: 'change',
      desc: '',
      args: [],
    );
  }

  /// `Confirmation`
  String get confirmation {
    return Intl.message(
      'Confirmation',
      name: 'confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to log out?`
  String get logoutConfirmation {
    return Intl.message(
      'Are you sure to log out?',
      name: 'logoutConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `Delete Confirmation`
  String get deleteConfirmation {
    return Intl.message(
      'Delete Confirmation',
      name: 'deleteConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `User`
  String get user {
    return Intl.message(
      'User',
      name: 'user',
      desc: '',
      args: [],
    );
  }

  /// `Selected`
  String get selected {
    return Intl.message(
      'Selected',
      name: 'selected',
      desc: '',
      args: [],
    );
  }

  /// `Decline`
  String get decline {
    return Intl.message(
      'Decline',
      name: 'decline',
      desc: '',
      args: [],
    );
  }

  /// `Acept`
  String get acept {
    return Intl.message(
      'Acept',
      name: 'acept',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Alerts`
  String get alerts {
    return Intl.message(
      'Alerts',
      name: 'alerts',
      desc: '',
      args: [],
    );
  }

  /// `Change password`
  String get changePassword {
    return Intl.message(
      'Change password',
      name: 'changePassword',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Waiting for approval`
  String get waiting {
    return Intl.message(
      'Waiting for approval',
      name: 'waiting',
      desc: '',
      args: [],
    );
  }

  /// `Password Recovery`
  String get passwordRecovery {
    return Intl.message(
      'Password Recovery',
      name: 'passwordRecovery',
      desc: '',
      args: [],
    );
  }

  /// `Please introduce your email and check your inbox.`
  String get recoveryText {
    return Intl.message(
      'Please introduce your email and check your inbox.',
      name: 'recoveryText',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get newPassword {
    return Intl.message(
      'New Password',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Updating`
  String get updating {
    return Intl.message(
      'Updating',
      name: 'updating',
      desc: '',
      args: [],
    );
  }

  /// `deleting`
  String get deleting {
    return Intl.message(
      'deleting',
      name: 'deleting',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get passWord {
    return Intl.message(
      'Password',
      name: 'passWord',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message(
      'Sign Up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginButtonText {
    return Intl.message(
      'Login',
      name: 'loginButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have an account?`
  String get dontHaveAccount {
    return Intl.message(
      'Don’t have an account?',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign up here`
  String get signupHere {
    return Intl.message(
      'Sign up here',
      name: 'signupHere',
      desc: '',
      args: [],
    );
  }

  /// `Sign up and start working with us`
  String get signUpMessage {
    return Intl.message(
      'Sign up and start working with us',
      name: 'signUpMessage',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your password ?`
  String get forgot {
    return Intl.message(
      'Forgot your password ?',
      name: 'forgot',
      desc: '',
      args: [],
    );
  }

  /// `Click here`
  String get clicHere {
    return Intl.message(
      'Click here',
      name: 'clicHere',
      desc: '',
      args: [],
    );
  }

  /// `I’ve read and accept all the`
  String get iRead {
    return Intl.message(
      'I’ve read and accept all the',
      name: 'iRead',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Accept`
  String get resetPasswordButtonText {
    return Intl.message(
      'Accept',
      name: 'resetPasswordButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Email`
  String get isNotEmail {
    return Intl.message(
      'Invalid Email',
      name: 'isNotEmail',
      desc: '',
      args: [],
    );
  }

  /// `Passwords must be at least 6 characters long`
  String get mustHave {
    return Intl.message(
      'Passwords must be at least 6 characters long',
      name: 'mustHave',
      desc: '',
      args: [],
    );
  }

  /// `Passwords must be equal`
  String get mustBeEqual {
    return Intl.message(
      'Passwords must be equal',
      name: 'mustBeEqual',
      desc: '',
      args: [],
    );
  }

  /// `Hello world`
  String get simpleText {
    return Intl.message(
      'Hello world',
      name: 'simpleText',
      desc: '',
      args: [],
    );
  }

  /// `Welcome {name}`
  String textWithPlaceholder(Object name) {
    return Intl.message(
      'Welcome $name',
      name: 'textWithPlaceholder',
      desc: '',
      args: [name],
    );
  }

  /// `My name is {lastName}, {firstName} {lastName}`
  String textWithPlaceholders(Object firstName, Object lastName) {
    return Intl.message(
      'My name is $lastName, $firstName $lastName',
      name: 'textWithPlaceholders',
      desc: '',
      args: [firstName, lastName],
    );
  }

  /// `{howMany, plural, one{You have 1 notification} other{You have {howMany} notifications}}`
  String textWithPlural(num howMany) {
    return Intl.plural(
      howMany,
      one: 'You have 1 notification',
      other: 'You have $howMany notifications',
      name: 'textWithPlural',
      desc: '',
      args: [howMany],
    );
  }

  /// `Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.`
  String get privacyPolicyText {
    return Intl.message(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      name: 'privacyPolicyText',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<TextLanguage> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<TextLanguage> load(Locale locale) => TextLanguage.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}