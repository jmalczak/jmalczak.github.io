def edit_config(name, value)
  config = File.read('_config.yml')
  regexp = Regexp.new('(^\s*' + name + '\s*:\s*)(\S+)(\s*)$')
  config.sub!(regexp,'\1'+value+'\3')
  File.open('_config.yml', 'w') {|f| f.write(config)}
end