module PageHelpers
  def make_a_url(url)
    # jpはデフォルトにする場合
    #if I18n.locale == :jp
    #  url
    #else
    #  "/#{I18n.locale}" + url
    #end

    # ロケールだけURLの先頭に付ける場合
    #"/#{I18n.locale}" + url

    # 何もしない（デフォルト言語がなくパスが付く場合はこれを使う）
    url
  end
end