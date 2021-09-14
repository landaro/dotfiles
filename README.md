# My .dotfiles

***Disclaimer:*** This repo is currently setup up as a backup for a single instance, so there is no use of tagging and/or host specific settings in use. We may refine this later.

## Setup

1. Establish PKI git access to github.com (install git, create keypair, etc.)

2. Clone this repository correctly:
   ```
   $ git clone git@priv.github.com:landaro/dotfiles.git ~/.dotfiles
   ```

3. Install `rcm`

   On Arch Linux (AUR)
   ```
   $ yay -S rcm
   ```

4. Bootstrap (link rcm config only)

   The dotfiles repo contains a predefined `.rcrc` file that configures the rcm commands.
   We deploy it first, to ensure that subsequent steps execute cleanly without too many extra options.
   ```
   $ rcup rcrc
   ```
   This should create a symlink from `~/.rcrc` to `~/.dotfiles/rcrc`.

5. Deploy all configuration

   Now perform a dry-run and see what would happen:
   ```
   $ lsrc
   ```
   If everything seems to be in order, bring up the full configuration:
   ```
   $ rcup
   ```

## Maintenance

1. Tracking new stuff

   Bless the new file or directory into the collection:
   ```
   $ mkrc .foo
   ```
   Then commit the changes to git and push.

2. Modifying tracked stuff

   Just edit the respective files through the symlinks, then commit changes to git and push.

3. Receiving new changes from upstream

   Simply resync the env with
   ```
   $ rcup
   ```

## Managment

- Tool: [rcm](https://github.com/thoughtbot/rcm)
