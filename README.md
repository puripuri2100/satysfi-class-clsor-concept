# Clsor class concept

「ドキュメントテンプレートのファンクタ」として作成しているSATySFiのクラスファイルライブラリであるClsorです。

SATySFiのv0.1.0で導入される予定の機能に依存しているため、「実証実験段階」として公開しています。

# demoファイルのビルド方法

## 依存ソフトウェア


- [SATySFi](https://github.com/gfngfn/SATySFi)
- git
- make


まず、SATySFiをインストール手順に従ってインストールしてください。その際、SATySFiで使用するフォントのインストールを**必ず**行ってください。

※わかる人向けの解説：
SATySFiを必ずインストールする必要はありませんが、SATySFiのREADMEに従ってインストールすることで、このリポジトリで行うSATySFi開発版のビルド環境を整えることができるため、インストールを推奨しています。

次に、このリポジトリをcloneします。：

```
git clone https://github.com/puripuri2100/satysfi-class-clsor-concept.git
```

その後、cloneしたリポジトリのフォルダに移動してビルドを行います。

```
make demo
```


# ライセンス

SATySFiフォルダ内のライセンスは、そのフォルダ内にあるLICENSEファイルの記述に従います。

それ以外のフォルダ・ファイルのライセンスはMITライセンスのもとで公開・配布します。

---

(c) 2022 Naoki Kaneko (a.k.a. "puripuri2100")
