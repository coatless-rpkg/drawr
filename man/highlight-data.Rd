% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/highlight.R
\name{highlight_data}
\alias{highlight_data}
\alias{highlight_data.numeric}
\alias{highlight_data.integer}
\alias{highlight_data.vector}
\alias{highlight_data.matrix}
\alias{highlight_data.default}
\alias{highlight_rows}
\alias{highlight_columns}
\alias{highlight_locations}
\title{Highlight data}
\usage{
highlight_data(x, rows = NULL, columns = NULL, locations = NULL, ...)

\method{highlight_data}{numeric}(x, rows = NULL, columns = NULL, locations = NULL, ...)

\method{highlight_data}{integer}(x, rows = NULL, columns = NULL, locations = NULL, ...)

\method{highlight_data}{vector}(x, rows = NULL, columns = NULL, locations = NULL, ...)

\method{highlight_data}{matrix}(x, rows = NULL, columns = NULL, locations = NULL, ...)

\method{highlight_data}{default}(x, rows = NULL, columns = NULL, locations = NULL, ...)

highlight_rows(x, rows = NULL)

highlight_columns(x, columns = NULL)

highlight_locations(x, locations = NULL)
}
\arguments{
\item{x}{A matrix.}

\item{rows}{An interger vector with valid row index locations.}

\item{columns}{An integer vector containing valid column indexlocations.}

\item{locations}{An m by 2 matrix with points listed in x, y format for a 2D object
or a vector of integer indices in a 1D format.}

\item{...}{Additional values (not used)}
}
\value{
A logical matrix or vector with the required rows and/or columns or points set to
\code{TRUE}. All other values are given as \code{FALSE}.
}
\description{
Generate a logical structure codifies active areas.
}
\examples{
## 2D Highlighting for Matrices ----
# Example data
x <- matrix(1:12, nrow = 4)

# Highlight points using an x, y pairing
locations <- rbind( 
  c(1, 3), 
  c(2, 2),
  c(4, 1)
)
highlight_locations(x, locations)

# Highlight entries only in the 1st and 3rd rows.
highlight_rows(x, rows = c(1, 3))

# Highlight entries only in the first two rows:
highlight_rows(x, rows = 1:2)

# Highlight entries in the last column
highlight_columns(x, columns = ncol(x))

# Highlight entries in the first column
highlight_columns(x, columns = 1)

# Highlight entries in the first column or first row.
highlight_data(x, rows = 1, columns = 1)

## 1D Highlighting for Vectors ----
vec <- c(3, NA, -1, 2, NaN, Inf, 42)
highlight_data(vec, locations = c(2, 4, 6))
}
