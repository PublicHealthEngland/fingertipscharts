% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spine_chart_utils.R
\name{spine_rescaler}
\alias{spine_rescaler}
\title{Rescale spine data}
\usage{
spine_rescaler(
  data,
  area_code,
  indicator,
  significance,
  polarity,
  area_type,
  value,
  timeperiod,
  local_area_code,
  median_line_area_code,
  comparator_area_code = NA,
  percent_display,
  dps = 1
)
}
\arguments{
\item{data}{a data frame to create the spine chart from. The data frame
should contain records for all area types included in the chart (eg, if
plotting for County & UA with a comparator of region and a median line for
national, the data frame should contain records for all of these data). The
minimum field requirements in the data frame are; value, count, area_code,
indicator, timeperiod, polarity, significance, area_type. See below for the
definitions of these fields}

\item{area_code}{unquoted field name for the field where area codes are
stored (local_area_code, median_line_area_code and comparator_area_code, if
using, should all exist in this field)}

\item{indicator}{unquoted field name for the field of the field containing
the indicator labels. Take care as errors will occur where indicator labels
are the same but data exist for multiple sub-categories (for example, sex
or age)}

\item{significance}{unquoted field name for the field describing the
statistical significance for that indicator. This determines the colour of
the point within the spine for the area. Colours are built in for the
following significances; 'Better', 'Same', 'Worse', 'Not compared', 'None',
'Higher', 'Similar', 'Lower'. Use the cols argument to colour other
significance values}

\item{polarity}{unquoted field name for the field containing the polarity
information (currently only handles "Not applicable", "RAG - Low is good",
"RAG - High is good", "BOB - Blue orange blue")}

\item{area_type}{unquoted field name for the field containing area type
information. This ensures the vertabra are only plotted for the same area
types as the local_area area type (eg, when plotting a spine chart for
County & UA areas, regions and national area types will be removed)}

\item{value}{unquoted field name for the field containing the values to be
plotted}

\item{timeperiod}{unquoted field name for the field of the time period field.
This gets used in the accompanying data table}

\item{local_area_code}{string; the code of the area whose data is being
presented}

\item{median_line_area_code}{string; area code for the median line. Defaults
to "E92000001" (England)}

\item{comparator_area_code}{string; area code for the comparator point.
Defaults to NA}

\item{percent_display}{number between 0 and 1; the percentage of values that
needs to exist for a spine to display. Default is 0.25}

\item{dps}{number; number of decimal places to be displayed in the data
table. The default is 1. Set to NA if this should be the same as the input
data}
}
\value{
A list containing "bars" and "points" which contains data that can be
  passed to the phe_spine_chart function
}
\description{
Rescales data so it can be plotted on a spine chart
}
