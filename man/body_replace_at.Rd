% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/docx_add.R
\name{body_replace_at}
\alias{body_replace_at}
\title{replace text at a bookmark location}
\usage{
body_replace_at(x, bookmark, value)
}
\arguments{
\item{x}{a docx device}

\item{bookmark}{bookmark id}

\item{value}{the replacement string, of type character}
}
\description{
replace text content enclosed in a bookmark
with different text. A bookmark will be considered as valid if enclosing words
within a paragraph; i.e., a bookmark along two or more paragraphs is invalid,
a bookmark set on a whole paragraph is also invalid, but bookmarking few words
inside a paragraph is valid.
}
\examples{
library(magrittr)
doc <- read_docx() \%>\%
  body_add_par("centered text", style = "centered") \%>\%
  slip_in_text(". How are you", style = "strong") \%>\%
  body_bookmark("text_to_replace") \%>\%
  body_replace_at("text_to_replace", "not left aligned")
}
