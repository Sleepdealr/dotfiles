## Platforms with a built-in command-not-found handler init file

for file (
  # Arch Linux. Must have pkgfile installed: https://wiki.archlinux.org/index.php/Pkgfile#Command_not_found
  /usr/share/doc/pkgfile/command-not-found.zsh
); do
  if [[ -r "$file" ]]; then
    source "$file"
    unset file
    return 0
  fi
done
unset file

