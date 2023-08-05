import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:language_picker/languages.dart';
import 'package:language_picker/languages.g.dart';

class LanguagePickerWidget extends StatefulWidget {
  const LanguagePickerWidget({super.key});

  @override
  State<LanguagePickerWidget> createState() => _LanguagePickerWidgetState();
}

class _LanguagePickerWidgetState extends State<LanguagePickerWidget> {
  @override
  Widget build(BuildContext context) {
    final languages = Languages.defaultLanguages;
    return ListView.separated(
        itemBuilder: (context, index) {
          var language = languages[index];

          var countryCode = _getCountryCode(language.isoCode);

          return ListTile(
            leading: CountryCodePicker(
              initialSelection: countryCode,
              showFlag: true,
              showFlagDialog: false,
              favorite: [countryCode],
              hideSearch: false,
            ),
            title: Text(language.name),
            onTap: () {
              Navigator.of(context).pop(language);
            },
          );
        },
        separatorBuilder: (_, __) => const Divider(),
        itemCount: Languages.defaultLanguages.length);
  }
}

String _getCountryCode(String isoCode) {
  switch (isoCode) {
    case 'ar':
      return 'SA';
    case 'en':
      return 'US';
    case 'fr':
      return 'FR';
    case 'id':
      return 'ID';
    case 'ja':
      return 'JP';
    case 'ko':
      return 'KR';
    case 'ms':
      return 'MY';
    case 'pt':
      return 'PT';
    case 'ru':
      return 'RU';
    case 'zh':
      return 'CN';
    case 'bn':
      return 'In';
    case 'hi':
      return 'In';
    case 'it':
      return 'IT';
    case 'fr':
      return 'FR';
    case 'es':
      return 'ES';

    default:
      return 'US';
  }
}
