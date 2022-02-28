アプリ名<br>
FASSION SUPPORT

サイト概要<br>
ユーザーが自分のお気に入りの服を画像で投稿できる。<br>
その画像を他のユーザーに公開できる。また、その投稿に対して、いいねやコメントができる仕組み。

サイトテーマ<br>
ユーザーが自分のファッションを参考にできるサイト<br>
投稿のテキストの部分には来ているブランドや、コーデのポイントを説明できる。

テーマを選んだ理由<br>
その服を実際に着ているユーザーが実際にその服を着てみて感じたこと、画像だけでは伝わらないことを伝えられるようなアプリがあれば便利だと感じたから。

ターゲットユーザ<br>
20~40代までの男女<br>
おしゃれに興味がある人

主な利用シーン<br>
服が欲しいと思った時や、どんな服を買えば良いか迷った時に、このアプリを見て、コーディネートを参考にしたり、
欲しい服を見つけたりできる。

設計書


チャレンジ要素一覧
https://docs.google.com/spreadsheets/d/1AhqxSLyEvHI1qpbPR00qpxMgOl19bJknp4NFcau4tzM/edit#gid=0

開発環境
- OS：Linux
-言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails(ver 5.2.6)
- JSライブラリ：jQuery
- IDE：Cloud9

使用素材


<% @posts.each do |post| %>
- <% if logged_in? %>
    <% if current_user.own?(post)%>
      <%= link_to post_path(post), method: :delete do, remote: ture do %>
        <%= icon 'far', 'trash-alt' %>
      <%= link_to edit_post_path(post) do, remote: ture do %>
        <%= icon 'far', 'edit' %>
  <% else %>
      <% if current_user&.like?(post) %>
         <%= render 'likes/unlike_button', post: post %>
        <% else %>
          <%= render 'likes/like_button', post: post %>
      <% end %>    
    <% end %>  
  <% end %>
<% end %>
