ファンクタを使ったクラスファイルを作成する。

SATySFiのファンクタの利点として「設定でコマンドの挙動を一括で変更できる」という点が挙げられる。

ファンクタは、多くのコマンドを提供していればいるほど、設定を使いまわすことが多ければ多いほど利が大きくなる。この点でいえば、クラスファイルというものはかなりファンクタを使う価値がある。

しかし、ファンクタを使うとしても、設定項目を増やすと結局exdesignのような「入力項目が多すぎて利便性が落ちる」・「入力項目の増減が後方互換性の破壊になってしまう」という欠点を抱えてしまう。そのため、ファンクタ適用の際にはRustのような設定関数をパイプライン演算子でつなげていく方式を採用することが望ましい（「[SATySFiでDSLを作る／使うと便利って話](https://docs.google.com/presentation/d/1CmP_OdwNTNx46M0mqlK_EyO123BOGQNMTb25SwFhVnI/edit#slide=id.p)」参照）。そのため、使い勝手的には


```
@require: clsor

let config =
  Clsor.default()
  |> Clsor.set-cjk-font `ipaexm` 0.88 0.0
  |> Clsor.set-url-deco (fun it -> {\uline{#it;}})

module ClsSettings = struct
  val config = config
end

module MyCls = Clsor.Make ClsSettings

in

MyCls.document (|
  title = {};
  author = {};
|) '<
  +MyCls.p{hoge\MyCls.url(`https://twitter.com/bd_gfngfn/status/1457711021364105225`);}
>
```

のようにしたい。


他のライブラリのコマンドをラップして提供したりもしたいが、シンタックスが変わっているので、既存コードの微妙な改修が必要になってしまうので、これは後回しにしておくか。

標準ライブラリは対応済みなので、標準ライブラリにのみ依存する機能から提供できるようにしていき、余裕があれば自分が作成したライブラリをいくつか改修して組み込んでみる。
