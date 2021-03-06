require 'rails_helper'

RSpec.describe "Messages", type: :system do
  before do
    # driven_by(:rack_test)
    @room_user = FactoryBot.create(:room_user)
  end

  context '投稿に失敗したとき' do
    it '送る値が空の為、メッセージの送信に失敗すること' do
      # サインインする。@room_userに紐づくuserが生成されているため、@room_user.userというアソシエーションの記述で取得できる
      sign_in(@room_user.user)
      # 作成されたチャットルームへ遷移する。roomについても上と同様。最終的にnameカラムの値を取得しclick_onメソッドの引数にして、チャットルームの名前のリンクをクリックしている
      click_on(@room_user.room.name)

      # DBに保存されていないことを確認する

      # 元のページに戻ってくることを確認する

    end
  end

  context '投稿に成功したとき' do
    it 'テキストの投稿に成功すると、投稿一覧に遷移して、投稿した内容が表示されている' do
      # サインインする
      sign_in(@room_user.user)

      # 作成されたチャットルームへ遷移する
      click_on(@room_user.room.name)

      # 値をテキストフォームに入力する

      # 送信した値がDBに保存されていることを確認する

      # 投稿一覧画面に遷移していることを確認する

      # 送信した値がブラウザに表示されていることを確認する

    end

    it '画像の投稿に成功すると、投稿一覧に遷移して、投稿した画像が表示されている' do
      # サインインする
      sign_in(@room_user.user)

      # 作成されたチャットルームへ遷移する
      click_on(@room_user.room.name)

      # 添付する画像を定義する
      image_path = Rails.root.join('public/images/test_image.png')

      # 画像選択フォームに画像を添付する

      # 送信した値がDBに保存されていることを確認する

      # 投稿一覧画面に遷移していることを確認する

      # 送信した画像がブラウザに表示されていることを確認する

    end

    it 'テキストと画像の投稿に成功すること' do
      # サインインする
      sign_in(@room_user.user)

      # 作成されたチャットルームへ遷移する
      click_on(@room_user.room.name)

      # 添付する画像を定義する
      image_path = Rails.root.join('public/images/test_image.png')

      # 画像選択フォームに画像を添付する

      # 値をテキストフォームに入力する

      # 送信した値がDBに保存されていることを確認する

      # 送信した値がブラウザに表示されていることを確認する

      # 送信した画像がブラウザに表示されていることを確認する

    end
  end

  # pending "add some scenarios (or delete) #{__FILE__}"
end
