enum EnviromentType {
  dev(
    type: "DEV",
    url: "https://tyger_dev.com",
    kakaoKey: "{dev_native_app_key}",
    customScheme: "{dev_custom_scheme}",
  ),
  qa(
    type: "QA",
    url: "https://tyger_dev.com",
    kakaoKey: "{qa_native_app_key}",
    customScheme: "{qa_custom_scheme}",
  ),
  prod(
    type: "PROD",
    url: "https://tyger.com",
    kakaoKey: "{native_app_key}",
    customScheme: "{custom_scheme}",
  );

  final String type;
  final String url;
  final String kakaoKey;
  final String customScheme;

  const EnviromentType({
    required this.type,
    required this.url,
    required this.kakaoKey,
    required this.customScheme,
  });
}
