class DisableUnaccentExtension < ActiveRecord::Migration[7.1]
  def change
    disable_extension 'unaccent'
  end
end
