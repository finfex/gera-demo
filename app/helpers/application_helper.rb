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

  def allow_edit_column?(record, column)
    return false if column.to_s == 'id'

    # Бывает в декораторе есть метод, а в самой модели нет
    return false unless record.respond_to? column
    return false unless record.respond_to? column.to_s + '='

    value = record.send column
    return false if value.is_a? ActiveRecord::Associations::CollectionProxy

    return record.respond_to?(:parent) && record.parent.updatable_by?(current_user) unless record.respond_to? :udpatable_by?
    return false unless record.updatable_by? current_user

    true
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
