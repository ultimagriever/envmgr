json.array!(@envs) do |env|
  json.extract! env, :id, :title, :content
  json.url env_url(env, format: :json)
end
