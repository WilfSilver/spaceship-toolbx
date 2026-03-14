#
# toolbx
#
# toolbx is use for managing containers to use for development using an atomic distro
# Link: https://docs.fedoraproject.org/en-US/atomic-desktops/toolbox/

# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_TOOLBX_SHOW="${SPACESHIP_TOOLBX_SHOW=true}"
SPACESHIP_TOOLBX_ASYNC="${SPACESHIP_TOOLBX_ASYNC=false}"
SPACESHIP_TOOLBX_PREFIX="${SPACESHIP_TOOLBX_PREFIX="in "}"
SPACESHIP_TOOLBX_SUFFIX="${SPACESHIP_TOOLBX_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_TOOLBX_SYMBOL="${SPACESHIP_FOOBAR_SYMBOL="🧰 "}"
SPACESHIP_TOOLBX_COLOR="${SPACESHIP_TOOLBX_COLOR="yellow"}"

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

# Show current toolbox
# spaceship_ prefix before section's name is required!
# Otherwise this section won't be loaded.
spaceship_toolbx() {
  # If SPACESHIP_TOOLBX_SHOW is false, don't show toolbx section
  [[ $SPACESHIP_TOOLBX_SHOW == false ]] && return

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
    --symbol "$SPACESHIP_TOOLBX_SYMBOL" \
    "$name"
}
