# Ace, by DAISY

Ace, the Accessibility Checker for EPUB, is a tool developed by the [DAISY Consortium](http://daisy.org) to assist with the evaluation of accessibility features of EPUB publications.

## What is Ace?

Ace is a tool to run automated accessibility checks for EPUB Publications, in order to assist in the evaluation of conformance to the [EPUB Accessibility](http://www.idpf.org/epub/latest/accessibility) specification.

It is important to keep in mind that a limited portion of accessibility checks can be automated. Therefore, __Ace is not a complete accessibility conformance evaluation tool; instead, it is an aid for a broader, human driven evaluation process__.

Under the hood, Ace currently runs the [aXe engine for automated testing of HTML](https://github.com/dequelabs/axe-core), developed by Deque Systems.

## Documentation

* [Getting started](getting-started.html): install and start using Ace
* [Command Line](cli.html): Overview of Ace's command line syntax
* Report formats produced by Ace:
  * [HTML Report](report-html.html) (human-readable)
  * [JSON Report](report-json.html) (machine-readable)
* [HTTP API](http-api.html): How to use Ace's HTTP API (_note: this is aimed at developers_)


## Ace development

Source code, issues, and releases can all be found on our [github project page](https://github.com/daisy/ace).
