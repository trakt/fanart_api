class FanartApi::Tv < FanartApi::Base
  include Ov

  let :find, Any do |id|
    find(id: id)
  end

  let :find, Hash do |options|
    find_path_with_params(options).get
  end

  let :find_url, Any do |id|
    find_url(id: id)
  end

  let :find_url, Hash do |options|
    find_path_with_params(options).url
  end

  let :latest, Any do |date|
    latest(date: date)
  end

  let :latest, Hash do |options|
    latest_path_with_params(options).get
  end

  let :latest_url, Any do |date|
    latest_url(date: date)
  end

  let :latest_url, Hash do |options|
    latest_path_with_params(options).url
  end

  private

  def find_path_with_params(options)
    path_with_params(find_path, options.merge(kind: :tv))
  end

  def latest_path_with_params(options)
    path_with_params(latest_path, options.merge(kind: :tv))
  end
end