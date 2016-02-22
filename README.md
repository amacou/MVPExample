# MVPExample
### このリポジトリはなに?
MVPのios実装のテストです
あくまでamacouが考えたMVPの実装です。

もっと良いやり方がある気がするので、これを叩き台として成長させていきたい。

### MVPの実装にあたって
以下のように実装しています

- `*View`, `*ViewController`はView層、`*Presenter`はPresentation層, その他はModel層とする
- ViewはUIKitのコンポーネントのようにAPIを通じて渡されたデータを表示する
- ViewはModelを扱わない
- PresenterはModelの値をViewのAPIを通じて表示する
- PresenterはViewで発生したイベントをハンドリングする

