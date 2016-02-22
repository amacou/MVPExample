//
//  AMNText.m
//  MVPExample-ObjectiveC
//
//  Created by amacou on 2016/02/18.
//  Copyright © 2016年 amacou. All rights reserved.
//

#import "AMNText.h"

@implementation AMNText
- (instancetype)init
{
    if (self = [super init]) {
        if (arc4random_uniform(2) > 0) {
            self.text = @"Swift（スウィフト）は、アップルのiOSおよびOS Xのためのプログラミング言語。Worldwide Developers Conference (WWDC) 2014で発表された。アップル製OS上で動作するアプリケーションの開発に従来から用いられていたObjective-CやObjective-C++、C言語と共存することが意図されている[3]。\nSwiftは、マルチパラダイムのコンパイラプログラミング言語であるが、XcodeのPlaygroundsの上やターミナルでインタラクティブにデバッグする事が可能である。\nLLVMコンパイラが使われており、ライブコーディングに対応していることが特徴[4]。\n並列スクリプト言語のSwift (並列スクリプト言語)（英語: Swift (parallel scripting language)）とは名称を同じくするが、別言語。";
        } else {
            self.text = @"Objective-C（オブジェクティブ シー）は、プログラミング言語の一種。C言語をベースにSmalltalk型のオブジェクト指向機能を持たせた上位互換言語である。\nObjective-CはNeXT、Mac OS XのOSに標準付属する公式開発言語である。OS Xのパッケージ版に開発環境がDVDで付属するほか、ユーザ登録をすれば無償でダウンロードできる（Xcodeの項目参照）。現在では主にアップルのMac OS XやiOS上で動作するアプリケーションの開発で利用される。";
        }
    }

    return self;
}
@end
