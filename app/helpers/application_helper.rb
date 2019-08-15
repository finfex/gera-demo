module ApplicationHelper
  MIDDOT = '&middot;'.html_safe.freeze

  def humanized_money_with_currency(money, text_if_empty: '-', thousands_separator: ' ')
    return text_if_empty if money.nil?

    # money.format(with_currency: true, symbol: false)
    symbol = "<span class='text-muted'>#{money.currency}</span></span>".html_safe
    "<span>#{money.format(symbol: symbol, format: '%n %u', decimal_mark: '.', thousands_separator: thousands_separator)}</span>".html_safe
  end

  def middot
    MIDDOT
  end

  def ps_icon(ps)
    ps.name
  end

  def app_title
    'GERA'
  end

  def show_direction_popover?
    true
  end

  def ion_icon(icon, css_class: nil, text: nil, title: nil)
    buffer = content_tag :i, '', class: ['icon', 'ion-' + icon.to_s, css_class]
    buffer << content_tag(:span, text, class: 'icon-text', title: title) if text.present?

    buffer
  end
end
