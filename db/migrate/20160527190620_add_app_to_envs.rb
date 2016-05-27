class AddAppToEnvs < ActiveRecord::Migration
  def change
    add_reference :envs, :app, index: true, foreign_key: true
  end
end
