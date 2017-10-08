# Ace, by DAISY

Ace, the Accessibility Checker for EPUB, is a tool developed by the [DAISY Consortium](http://daisy.org) to assist with the evaluation of accessibility features of EPUB publications.

## What is Ace?

Ace is a tool to run automated accessibility checks for EPUB Publications, in order to assist in the evaluation of conformance to the [EPUB Accessibility](http://www.idpf.org/epub/latest/accessibility) specification.

It is important to keep in mind that only a limited portion of accessibility checks can be automated, and therefore __Ace is just a helper tool to assist in a broader, human-driven, evaluation process__.

Under the hood, Ace currently runs the [aXe engine for automated testing of HTML](https://github.com/dequelabs/axe-core), developed by the good folks at Deque Systems.

## Documentation

* [Getting started](getting-started.html): install and start using Ace
* [Command Line](cli.html): Overview of Ace's command line syntax
* [Reports](reports.html): Documentation about the reports produced by Ace
* [HTTP API](http-api.html): How to use Ace's HTTP API (_note: this is aimed at developers_)


## What's next?

Feel free to read the [project requirements](https://github.com/daisy/ace-core/wiki/Requirements) to have a better idea of where we’re heading to.

You can also review the current work plan by looking at the [current milestones](https://github.com/daisy/ace-core/milestones) defined in the issue tracker.