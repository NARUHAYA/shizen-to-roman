*title

[hidemenubutton]
@layopt layer=message0 visible=false
[fadeinbgm storage="balcony.mp3" time="3000" ]
;背景画像を設定
[if exp="sf.clear==undefined"]
[image layer="base" storage="balcony.jpg"]
[elsif exp="sf.clear==true"]
[image layer="base" storage="clear.jpg" folder="fgimage"]
[endif]
[image layer="1" storage="title.png" folder="fgimage" visible="true" top="10" left="0"]

[locate x=100 y=384]
[button graphic="HAJIMERU.png" enterimg="HAJIMERU2.png" target=*first]
[locate x=100 y=460]
[button graphic="TUDUKI.png" enterimg="TUDUKI2.png" target=*lord]
[s]
[cm]
*lord
[showload]

;ストーリー最初から
*first
[cm]
[fadeoutbgm time="3000" ]
[freeimage layer=1 time=1000]
;メッセージレイヤを再度表示する
@layopt layer=message0 visible=true
[jump storage="first.ks" target=*first]