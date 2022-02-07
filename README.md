基本的には、init.vimいれてvim-plugを各OSに合わせていれれば動く。
初期で:PlugInstallさえすればプラグインは用意可能。
(fzfとか別途必要かも)

cocだけ動かない可能性あるので
: call coc#util#install()
をvim上で実行する。

coc-configについては、:CocConfigから開いて、コピぺ。

Ocaml用のLSPだけ入れる必要あり
