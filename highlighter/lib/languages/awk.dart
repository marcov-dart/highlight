// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final awk = Mode(refs: {}, keywords: {
  "keyword":
      "BEGIN END if else while do for in break continue delete next nextfile function func exit|10"
}, contains: [
  Mode(className: "variable", variants: [
    Mode(begin: "\\\$[\\w\\d#@][\\w\\d_]*"),
    Mode(begin: "\\\$\\{(.*?)}")
  ]),
  Mode(className: "string", contains: [
    cBackslashEscape
  ], variants: [
    Mode(begin: "(u|b)?r?'''", end: "'''", relevance: 10),
    Mode(begin: "(u|b)?r?\"\"\"", end: "\"\"\"", relevance: 10),
    Mode(begin: "(u|r|ur)'", end: "'", relevance: 10),
    Mode(begin: "(u|r|ur)\"", end: "\"", relevance: 10),
    Mode(begin: "(b|br)'", end: "'"),
    Mode(begin: "(b|br)\"", end: "\""),
    aposStringMode,
    quoteStringMode
  ]),
  regExpMode,
  hashCommentMode,
  numberMode
]);
