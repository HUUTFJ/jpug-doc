␝  <manvolnum>1</manvolnum>␟  <refmiscinfo>Application</refmiscinfo>␟<refmiscinfo>アプリケーション</refmiscinfo>␞␞ </refmeta>␞
␝  <refname>clusterdb</refname>␟  <refpurpose>cluster a <productname>PostgreSQL</productname> database</refpurpose>␟  <refpurpose><productname>PostgreSQL</productname>データベースをクラスタ化する</refpurpose>␞␞ </refnamediv>␞
␝ <refsect1>␟  <title>Description</title>␟  <title>説明</title>␞␞␞
␝  <para>␟   <application>clusterdb</application> is a utility for reclustering tables
   in a <productname>PostgreSQL</productname> database.  It finds tables
   that have previously been clustered, and clusters them again on the same
   index that was last used.  Tables that have never been clustered are not
   affected.␟<application>clusterdb</application>は、<productname>PostgreSQL</productname>データベース内のテーブルを再クラスタ化するユーティリティです。
既にクラスタ化されているテーブルを検索し、前回と同じインデックスを使用して再度クラスタ化します。
一度もクラスタ化されていないテーブルは処理されません。␞␞  </para>␞
␝  <para>␟   <application>clusterdb</application> is a wrapper around the SQL
   command <xref linkend="sql-cluster"/>.
   There is no effective difference between clustering databases via
   this utility and via other methods for accessing the server.␟<application>clusterdb</application>は、SQLコマンド<xref linkend="sql-cluster"/>のラッパーです。
クラスタ化を行うのに、このユーティリティを使用しても、これ以外のサーバへのアクセス方法を使用しても、特別な違いはありません。␞␞  </para>␞
␝ <refsect1>␟  <title>Options</title>␟  <title>オプション</title>␞␞␞
␝   <para>␟    <application>clusterdb</application> accepts the following command-line arguments:␟<application>clusterdb</application>では、下記のコマンドライン引数を指定できます。␞␞␞
␝       <para>␟        Cluster all databases.␟全てのデータベースをクラスタ化します。␞␞       </para>␞
␝       <para>␟        Specifies the name of the database to be clustered,
        when <option>-a</option>/<option>--all</option> is not used.
        If this is not specified, the database name is read
        from the environment variable <envar>PGDATABASE</envar>.  If
        that is not set, the user name specified for the connection is
        used.  The <replaceable>dbname</replaceable> can be a <link
        linkend="libpq-connstring">connection string</link>.  If so,
        connection string parameters will override any conflicting command
        line options.␟<option>-a</option>/<option>--all</option>が使用されていない場合、クラスタ化するデータベースの名前を指定します。
これが指定されていない場合、データベース名は環境変数<envar>PGDATABASE</envar>から読み取られます。
この変数も設定されていない場合は、接続のために指定されたユーザ名が使用されます。
<replaceable>dbname</replaceable>は<link linkend="libpq-connstring">接続文字列</link>でも構いません。
その場合、接続文字列パラメータは衝突するコマンドラインオプションよりも優先します。␞␞       </para>␞
␝       <para>␟        Echo the commands that <application>clusterdb</application> generates
        and sends to the server.␟<application>clusterdb</application>が生成し、サーバに送るコマンドをエコー表示します。␞␞       </para>␞
␝       <para>␟        Do not display progress messages.␟進行メッセージを表示しません。␞␞       </para>␞
␝       <para>␟        Cluster <replaceable class="parameter">table</replaceable> only.
        Multiple tables can be clustered by writing multiple
        <option>-t</option> switches.␟<replaceable class="parameter">table</replaceable>のみをクラスタ化します。
複数の<option>-t</option>スイッチを記述することで複数のテーブルをクラスタ化することができます。␞␞       </para>␞
␝       <para>␟        Print detailed information during processing.␟処理の間、詳細な情報を出力します。␞␞       </para>␞
␝      <para>␟      Print the <application>clusterdb</application> version and exit.␟<application>clusterdb</application>のバージョンを表示し、終了します。␞␞      </para>␞
␝      <para>␟      Show help about <application>clusterdb</application> command line
      arguments, and exit.␟<application>clusterdb</application>のコマンドライン引数の使用方法を表示し、終了します。␞␞      </para>␞
␝   <para>␟    <application>clusterdb</application> also accepts
    the following command-line arguments for connection parameters:␟<application>clusterdb</application>は、さらに、下記のコマンドライン引数を接続パラメータとして受け付けます。␞␞␞
␝       <para>␟        Specifies the host name of the machine on which the server is
        running.  If the value begins with a slash, it is used as the
        directory for the Unix domain socket.␟サーバが稼働しているマシンのホスト名を指定します。
この値がスラッシュから始まる場合、Unixドメインソケット用のディレクトリとして使用されます。␞␞       </para>␞
␝       <para>␟        Specifies the TCP port or local Unix domain socket file
        extension on which the server
        is listening for connections.␟サーバが接続を監視するTCPポートもしくはUnixドメインソケットファイルの拡張子を指定します。␞␞       </para>␞
␝       <para>␟        User name to connect as.␟接続するためのユーザ名です。␞␞       </para>␞
␝       <para>␟        Never issue a password prompt.  If the server requires
        password authentication and a password is not available by
        other means such as a <filename>.pgpass</filename> file, the
        connection attempt will fail.  This option can be useful in
        batch jobs and scripts where no user is present to enter a
        password.␟パスワードの入力を促しません。
サーバがパスワード認証を必要とし、かつ、<filename>.pgpass</filename>ファイルなどの他の方法が利用できない場合、接続試行は失敗します。
バッチジョブやスクリプトなどパスワードを入力するユーザが存在しない場合にこのオプションは有用かもしれません。␞␞       </para>␞
␝       <para>␟        Force <application>clusterdb</application> to prompt for a
        password before connecting to a database.␟データベースに接続する前に、<application>clusterdb</application>は強制的にパスワード入力を促します。␞␞       </para>␞
␝       <para>␟        This option is never essential, since
        <application>clusterdb</application> will automatically prompt
        for a password if the server demands password authentication.
        However, <application>clusterdb</application> will waste a
        connection attempt finding out that the server wants a password.
        In some cases it is worth typing <option>-W</option> to avoid the extra
        connection attempt.␟サーバがパスワード認証を要求する場合<application>clusterdb</application>は自動的にパスワード入力を促しますので、これが重要になることはありません。
しかし、<application>clusterdb</application>は、サーバにパスワードが必要かどうかを判断するための接続試行を無駄に行います。
こうした余計な接続試行を防ぐために<option>-W</option>の入力が有意となる場合もあります。␞␞       </para>␞
␝        When the <option>-a</option>/<option>--all</option> is used, connect␟        When the <option>-a</option>/<option>--all</option> is used, connect
        to this database to gather the list of databases to cluster.
        If not specified, the <literal>postgres</literal> database will be used,
        or if that does not exist, <literal>template1</literal> will be used.
        This can be a <link linkend="libpq-connstring">connection
        string</link>.  If so, connection string parameters will override any
        conflicting command line options.  Also, connection string parameters
        other than the database name itself will be re-used when connecting
        to other databases.␟<option>-a</option>/<option>--all</option>が使われている場合に、クラスタ化するデータベースの一覧を集めるため、このデータベースに接続します。
指定されなければ<literal>postgres</literal>データベースが使用され、もし存在しなければ<literal>template1</literal>が使用されます。
これは<link linkend="libpq-connstring">接続文字列</link>でも構いません。
その場合、接続文字列パラメータは衝突するコマンドラインオプションよりも優先します。
また、データベース名自身以外の接続文字列パラメータは、他のデータベースに接続する時に再利用されます。␞␞       </para>␞
␝ <refsect1>␟  <title>Environment</title>␟  <title>環境</title>␞␞␞
␝     <para>␟      Default connection parameters␟デフォルトの接続パラメータです。␞␞     </para>␞
␝     <para>␟      Specifies whether to use color in diagnostic messages. Possible values
      are <literal>always</literal>, <literal>auto</literal> and
      <literal>never</literal>.␟診断メッセージで色を使うかどうかを指定します。
指定可能な値は<literal>always</literal>、<literal>auto</literal>、<literal>never</literal>です。␞␞     </para>␞
␝  <para>␟   This utility, like most other <productname>PostgreSQL</productname> utilities,
   also uses the environment variables supported by <application>libpq</application>
   (see <xref linkend="libpq-envars"/>).␟このユーティリティは、他のほとんどの<productname>PostgreSQL</productname>ユーティリティと同様、<application>libpq</application>がサポートする環境変数(<xref linkend="libpq-envars"/>参照)も使います。␞␞  </para>␞
␝ <refsect1>␟  <title>Diagnostics</title>␟  <title>診断</title>␞␞␞
␝  <para>␟   In case of difficulty, see <xref linkend="sql-cluster"/>
   and <xref linkend="app-psql"/> for
   discussions of potential problems and error messages.
   The database server must be running at the
   targeted host.  Also, any default connection settings and environment
   variables used by the <application>libpq</application> front-end
   library will apply.␟問題が発生した場合、考えられる原因とエラーメッセージについては<xref linkend="sql-cluster"/>と<xref linkend="app-psql"/>を参照してください。
データベースサーバは対象ホスト上で稼働していなければなりません。
また、<application>libpq</application>フロントエンドライブラリの、あらゆるデフォルトの設定や環境変数が適用されます。␞␞  </para>␞
␝ <refsect1>␟  <title>Examples</title>␟  <title>例</title>␞␞␞
␝   <para>␟    To cluster the database <literal>test</literal>:␟データベース<literal>test</literal>をクラスタ化します。␞␞<screen>␞
␝   <para>␟    To cluster a single table
    <literal>foo</literal> in a database named
    <literal>xyzzy</literal>:␟<literal>xyzzy</literal>というデータベース内のテーブルの1つ<literal>foo</literal>をクラスタ化します。␞␞<screen>␞
␝ <refsect1>␟  <title>See Also</title>␟  <title>関連項目</title>␞␞␞
␝␟<prompt>$ </prompt><userinput>clusterdb --table=foo xyzzy</userinput> </screen></para> </screen></para>␟no translation␞␞␞
