class User < ApplicationRecord
  include Authority::UserAbilities

  authenticates_with_sorcery!

  def has_permission?(subject, method)
    true
    # role.present? && role.has_any_permission?(subject, method, self)
  end
end
