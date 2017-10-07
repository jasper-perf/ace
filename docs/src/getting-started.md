# Getting started

- [Installation](#installation)
  * [Install Node.JS](#install-nodejs)
  * [Install Ace](#install-ace)
- [Usage](#usage)
  * [Checking an EPUB](#checking-an-epub)
  * [Getting the results](#getting-the-results)
  * [Viewing the report](#viewing-the-report)

## Installation

### Install Node.JS

* Go to [Node.JS](https://nodejs.org/)
* Download version 6 or higher
* Double-click to install

### Install Ace

* After installing Node, open a shell window
  * On Windows: `Windows System->Command Prompt` _or_ `Start->Run->cmd.exe`
  * On Mac: `Applications->Utilities->Terminal`
* Type `npm install ace-core -g` to install Ace

If everything went smoothly, you should now be able to run the `ace` command in your shell.

## Usage

### Checking an EPUB

You can check an EPUB by running the `ace` command followed by the path to the EPUB document. For example:

```
$ ace ~/Documents/moby-dick.epub
```

The above command will run the automated accessibility tests on the EPUB document and output the results.

### Getting the results

You can specify the directory for Ace to store its output with the `--outputdir` option. For example:

```
$ ace --outputdir ~/Documents/moby-dick-report ~/Documents/moby-dick.epub
```

_Note that if you do not specify a directory with `--outputdir`, no reports get saved. You would only see output in the shell._

If the specified directory does not exist, it will be created. In this example, two versions of the results report will be found under the `~/Documents/moby-dick-report` directory:

* `report.json`: A machine-readable version of the report, in JSON format
* `report.html`: A human-readable version of the report, in HTML format.

Read a [detailed overview](reports.html) of these formats.
