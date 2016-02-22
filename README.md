# MVPExample
### このリポジトリはなに?
MVPのios実装のテストです
あくまでamacouが考えたMVPです。
これが正しいとかはないです。

### MVPの実装にあたって
以下のように実装しています

- *View, *ViewControllerはView層、*PresenterはPresentation層, その他はModel層とする
- ViewはUIKitのコンポーネントのようにAPIを通じて渡されたデータを表示する
- ViewはModelを扱わない
- PresenterはModelの値をViewのAPIを通じて表示する
- PresenterはViewで発生したイベントをハンドリングする

