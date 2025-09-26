␝  <manvolnum>7</manvolnum>␟  <refmiscinfo>SQL - Language Statements</refmiscinfo>␟<refmiscinfo>SQL - 言語</refmiscinfo>␞␞ </refmeta>␞
␝  <refname>DROP RULE</refname>␟  <refpurpose>remove a rewrite rule</refpurpose>␟  <refpurpose>書き換えルールを削除する</refpurpose>␞␞ </refnamediv>␞
␝ <refsect1>␟  <title>Description</title>␟  <title>説明</title>␞␞␞
␝  <para>␟   <command>DROP RULE</command> drops a rewrite rule.␟<command>DROP RULE</command>は書き換えルールを削除します。␞␞  </para>␞
␝ <refsect1>␟  <title>Parameters</title>␟  <title>パラメータ</title>␞␞␞
␝     <para>␟      Do not throw an error if the rule does not exist. A notice is issued
      in this case.␟ルールが存在しない場合でもエラーになりません。
この場合注意メッセージが発行されます。␞␞     </para>␞
␝     <para>␟      The name of the rule to drop.␟削除するルールの名前です。␞␞     </para>␞
␝     <para>␟      The name (optionally schema-qualified) of the table or view that
      the rule applies to.␟そのルールが適用されたテーブルもしくはビューの名前です（スキーマ修飾名も可）。␞␞     </para>␞
␝     <para>␟      Automatically drop objects that depend on the rule,
      and in turn all objects that depend on those objects
      (see <xref linkend="ddl-depend"/>).␟ルールに依存するオブジェクトを自動的に削除し、さらにそれらのオブジェクトに依存するすべてのオブジェクトも削除します（<xref linkend="ddl-depend"/>参照）。␞␞     </para>␞
␝     <para>␟      Refuse to drop the rule if any objects depend on it.  This is
      the default.␟依存するオブジェクトがある場合、ルールの削除を拒否します。
こちらがデフォルトです。␞␞     </para>␞
␝ <refsect1>␟  <title>Examples</title>␟  <title>例</title>␞␞␞
␝  <para>␟   To drop the rewrite rule <literal>newrule</literal>:␟<literal>newrule</literal>という書き換えルールを削除します。␞␞␞
␝ <refsect1>␟  <title>Compatibility</title>␟  <title>互換性</title>␞␞␞
␝  <para>␟   <command>DROP RULE</command> is a
   <productname>PostgreSQL</productname> language extension, as is the
   entire query rewrite system.␟<command>DROP RULE</command>は<productname>PostgreSQL</productname>の言語拡張で、問い合わせ書き換えシステム全体も言語拡張です。␞␞  </para>␞
␝ <refsect1>␟  <title>See Also</title>␟  <title>関連項目</title>␞␞␞
␝␟DROP RULE newrule ON mytable; </programlisting></para> </programlisting></para>␟no translation␞␞␞
