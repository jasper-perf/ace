# Ace, by DAISY

Ace, the Accessibility Checker for EPUB, is a tool developed by the [DAISY Consortium](http://daisy.org) to assist with the evaluation of accessibility features of EPUB publications. Its automated accessibility checks assist in the evaluation of conformance to the [EPUB Accessibility](http://www.idpf.org/epub/latest/accessibility) specification.

It is important to keep in mind that only a limited portion of accessibility checks can be automated, and therefore __Ace is just a helper tool to assist in a broader, human-driven, evaluation process__.

# About this guide

This document is intended to help new users get started with Ace. Ace is a command line tool, which means that you'll run it by typing commands into a terminal window (also called a _"shell"_ or _"command prompt"_). Here's how to open a terminal window:

* On Windows: `Windows System->Command Prompt` _or_ `Start->Run->cmd.exe`
* On Mac: `Applications->Utilities->Terminal`

Depending on which style of terminal window you use, the actual prompt might look like a dollar sign (`$`) or a greater-than sign (`>`), perhaps preceded by something (e.g. `c:\>`). The convention used here is `$` followed by what you should type (i.e. you don't type the dollar sign, that's just to indicate that we're using the command prompt).

Another thing you should understand before using Ace is how to type the path to a file. E.g. if I have a file named `my-book.epub` in my `Documents` directory, its path would be:

* On Mac: `~/Documents/my-book.epub` (or, in expanded form, `/Users/username/Documents/my-book.epub`)
* On Windows: `c:\Users\username\Documents\my-book.epub`.

Ace will require that you enter the path to your EPUB file and also the path where you would like Ace's report stored.

Additional documentation for Ace, recommended for advanced users, can be found over at [github](https://daisy.github.io/ace).

# Getting started

- [Installation](#installation)
  * [Install Node.JS](#install-nodejs)
  * [Install Ace](#install-ace)
- [Usage](#usage)
  * [Checking an EPUB](#checking-an-epub)
  * [Storing the results](#storing-the-results)
- [The report](#the-report)
  * [Violations table](#violations-table)
  * [Outlines](#outlines)
  * [Accessibility metadata summary](#accessibility-metadata-summary)
  * [Images](#images)

## Installation

### Install Node.JS

Ace relies on an open source Javascript framework called Node, which is freely available to download. You must install Node first before installing Ace. Installing Node requires administrator privileges.

* Go to [Node.JS](https://nodejs.org/)
* Download version 6 or higher
* Double-click to install and follow the instructions.


### Install Ace

* After installing Node, open a shell window
* Type `$ npm install ace-core -g` to install Ace

If everything went smoothly, you should now be able to run the `ace` command in your shell. Try typing

```
$ ace --help
```

Ace should display usage information and then exit.

## Usage

### Checking an EPUB

You can check an EPUB by running the `ace` command followed by the path to the EPUB document. For example:

```
$ ace ~/Documents/moby-dick.epub
```

The above command will run the automated accessibility tests on the EPUB document and output the results in the shell.

### Storing the results

You can specify the directory for Ace to store its output with the `--outputdir` option. For example:

```
$ ace --outputdir ~/Documents/moby-dick-report ~/Documents/moby-dick.epub
```

_Note that if you do not specify a directory with `--outputdir`, no reports get saved. You would only see output in the shell._

If the specified directory does not exist, it will be created. In this example, two versions of the results report will be found under the `~/Documents/moby-dick-report` directory:

* `report.html`: A human-readable version of the report, in HTML format.
* `report.json`: A machine-readable version of the report, in JSON format

## The report

Open `report.html` in your web browser to see the results. The report contains several sections, described below.

### Violations table

The report contains a table listing the violations found in the EPUB. The table columns are:

* `Impact`: the severity of the violation
* `Rule`: identifier for the rule that was violated
* `Location`: where in the book the violation occurred
* `Details`: suggestions on how to fix the problem, as well as a link to the relevant topic page in our online knowledge base.

There is a set of drop-down filters at the top of the table where you can refine by Impact, File, and Rule.

### Outlines

The outlines are intended to assist with manual checking. They represent extracted views of different aspects of the EPUB. The outlines are:

* __Table of contents__, taken from the EPUB navigation document
* __Headings__, including indications of missing heading levels (i.e. going from `h1` to `h3` with no `h2` in between)
* __HTML__, which represents heading content and sectioning content

### Accessibility metadata summary

This section lists both present accessibility metadata, summarized in a table, as well as a list of what's missing or empty.

### Images

This table contains each image in the EPUB and information about it. The table columns are:

* `Image`: the image itself
* `alt attribute`: the contents of the `alt` attribute
* `aria-describedby`: the contents of the element referenced by the `aria-describedby` attribute
* `Associated figcaption`: the `figcaption` for this image
* `Location`: location in the EPUB of this image
