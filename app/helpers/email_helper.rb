module EmailHelper
  def extract_username_from_email(email)
    match = email.match(/^([^@]+)@/)
    # From beginning of string - capture one or more characters that are not @ - Ensure there is an @ symbol
    match[1] if match
    # Match [1] instead of match[0] excludes the "@" symbol.
  end
end