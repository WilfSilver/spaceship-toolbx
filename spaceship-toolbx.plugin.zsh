#
# toolbx
#
# toolbx is a supa-dupa cool tool for making you development easier.
# Link: https://www.toolbx.xyz

# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_TOOLBX_SHOW="${SPACESHIP_TOOLBX_SHOW=true}"
SPACESHIP_TOOLBX_ASYNC="${SPACESHIP_TOOLBX_ASYNC=true}"
SPACESHIP_TOOLBX_PREFIX="${SPACESHIP_TOOLBX_PREFIX="in"}"
SPACESHIP_TOOLBX_SUFFIX="${SPACESHIP_TOOLBX_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_TOOLBX_COLOR="${SPACESHIP_TOOLBX_COLOR="yellow"}"

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------
get_toolbox_name() {
}

# Show current toolbox
# spaceship_ prefix before section's name is required!
# Otherwise this section won't be loaded.
spaceship_toolbx() {
  # If SPACESHIP_TOOLBX_SHOW is false, don't show toolbx section
  [[ $SPACESHIP_TOOLBX_SHOW == false ]] && return

  # Check if foobar command is available for execution
  spaceship::exists toolbx || return

  # Show foobar section only when there are foobar-specific files in current
  # working directory.

  # spaceship::upsearch utility helps finding files up in the directory tree.
  local is_toolbx_context="$(spaceship::upsearch toolbx.conf)"
  # Here glob qualifiers are used to check if files with specific extension are
  # present in directory. Read more about them here:
  # http://zsh.sourceforge.net/Doc/Release/Expansion.html
  [[ -n "$is_toolbx_context" || -n *.foo(#qN^/) || -n *.bar(#qN^/) ]] || return

  declare -r containerenvpath='/run/.containerenv'

  if [ -r $containerenvpath ]; then
    source $containerenvpath
  else
    return
  fi

  # Display toolbx section
  # spaceship::section utility composes sections. Flags are optional
  spaceship::section::v4 \
    --color "$SPACESHIP_TOOLBX_COLOR" \
    --prefix "$SPACESHIP_TOOLBX_PREFIX" \
    --suffix "$SPACESHIP_TOOLBX_SUFFIX" \
    --name "$name"
}
