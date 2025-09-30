# My .dotfiles

## Deprecation Note

*I have fully moved all exisiting rcm tracked configs to a chezmoi setup. This branch marks the endpoint of the migration process. This README is the last leftover and preserved for posteriority. For earlier states, move back along this branch (`main-rcm`), probably up to `last-functional-rcm`*

## Setup (historic)

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
