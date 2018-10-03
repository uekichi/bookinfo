
class String
  alias_method(:orig_concat, :concat)
  def concat(value)
    if RUBY_VERSION > "1.9"
      orig_concat value.force_encoding('Windows-31J')
    else
      orig_concat value
    end
  end
end
