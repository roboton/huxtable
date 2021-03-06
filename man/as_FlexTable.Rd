% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/FlexTable.R
\name{as_FlexTable}
\alias{as_FlexTable}
\alias{as_FlexTable.huxtable}
\alias{as_FlexTable.huxtable}
\title{Convert a huxtable for Word/Powerpoint}
\usage{
as_FlexTable(x, ...)

\method{as_FlexTable}{huxtable}(x, header_rows = 0, footer_rows = 0, ...)
}
\arguments{
\item{x}{A huxtable.}

\item{...}{Not currently used.}

\item{header_rows}{How many rows to use as headers.}

\item{footer_rows}{How many rows to use as footers.}
}
\value{
an object of class FlexTable.
}
\description{
Huxtables can be converted to \code{\link[ReporteRs]{FlexTable}} objects, for use in Word and Powerpoint documents.
}
\details{
Note: you can't use ReporteRs Word output with R markdown word output. Instead you have to write the Word file
yourself. See the ReporteRs documentation.

Properties are supported, with the following exceptions:
\itemize{
  \item Cells can span only multiple rows or multiple columns, but not both.
  \item Rotation of 0, 90 or 270 is supported, only in header rows.
  \item Non-numeric column widths and table widths are not supported. Table width is treated as a fraction of 6
    inches.
  \item Table height, row heights, wrap, captions and table position are not supported.
}
}
\section{Challenge}{


Try to say \code{as_FlexTable.huxtable} ten times without pausing.
}

\examples{
\donttest{
if (require('ReporteRs')) {
  ht <- huxtable(a = 1:3, b = 1:3)
  ft <- as_FlexTable(ht)
  ft
  my_doc <- docx()
  my_doc <- addFlexTable(my_doc, ft)
}
}
}
