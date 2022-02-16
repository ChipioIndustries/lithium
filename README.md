![Unit Tests](https://github.com/username_here/package_name_here/actions/workflows/ci.yml/badge.svg)
![Create Release](https://github.com/username_here/package_name_here/actions/workflows/release.yml/badge.svg)
![Docs Deploy](https://github.com/username_here/package_name_here/actions/workflows/docs-deploy.yml/badge.svg)

# PACKAGE_NAME_HERE

PACKAGE_NAME_HERE is a template for creating Roblox package repositories.

## SETTING UP REPOSITORY (REMOVE THIS)

* Copy this repository's contents into a new repository
* Find and replace all instances of the following terms:

|Term|Replace with|
|-|-|
|username_here|your github username|
|package_name_here|your package name|
|PACKAGE_NAME_HERE|your package name as it appears to users and as a Studio instance|
|package_description_here|your package description|
|TAGLINE_HERE|your package tagline|

* Copy the contents of your .wally/auth.toml file into a Github secret named "WALLY_AUTH"

## Installing with Wally

* Add this line to your `wally.toml` file under `[dependencies]`:

	```toml
	PACKAGE_NAME_HERE = "username_here/package_name_here@0.1.0"
	```

* Then run `wally install` to install the package.

For usage instructions, see the [documentation](https://username_here.github.io/package_name_here).
