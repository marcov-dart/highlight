// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final parser3 = Mode(
    refs: {},
    subLanguage: ["xml"],
    relevance: 0,
    contains: [
      Mode(className: "comment", begin: "^#", end: "\$", contains: [
        phrasakWordsMode,
        Mode(
            className: "doctag",
            begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
            relevance: 0)
      ]),
      Mode(
          className: "comment",
          begin: "\\^rem{",
          end: "}",
          contains: [
            Mode(className: "comment", begin: "{", end: "}", contains: [
              Mode(self: true),
              phrasakWordsMode,
              Mode(
                  className: "doctag",
                  begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
                  relevance: 0)
            ]),
            phrasakWordsMode,
            Mode(
                className: "doctag",
                begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
                relevance: 0)
          ],
          relevance: 10),
      Mode(
          className: "meta",
          begin: "^@(?:BASE|USE|CLASS|OPTIONS)\$",
          relevance: 10),
      Mode(
          className: "title",
          begin: "@[\\w\\-]+\\[[\\w^;\\-]*\\](?:\\[[\\w^;\\-]*\\])?(?:.*)\$"),
      Mode(className: "variable", begin: "\\\$\\{?[\\w\\-\\.\\:]+\\}?"),
      Mode(className: "keyword", begin: "\\^[\\w\\-\\.\\:]+"),
      Mode(className: "number", begin: "\\^#[0-9a-fA-F]+"),
      cNumberMode
    ]);
