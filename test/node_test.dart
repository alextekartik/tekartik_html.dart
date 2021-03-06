library tekartik_html.node_test;

import 'package:dev_test/test.dart';
import 'package:tekartik_html/html.dart';
import 'package:tekartik_html/html_html5lib.dart';

void main() {
  final html = htmlProviderHtml5Lib;
  testMain(html);
}

void testMain(HtmlProvider html) {
  group('node', () {
    test('text', () {
      final element = html.createElementHtml('<p>hello</p>');
      expect(element.childNodes.length, 1);
      final node = element.childNodes.first;
      expect(node.nodeType, Node.testNode);
      expect(node.nodeValue, 'hello');
    });
  });
}
