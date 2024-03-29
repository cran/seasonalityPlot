% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/seasonPlot.R
\name{seasonPlot}
\alias{seasonPlot}
\title{seasonPlot: create seasonality variation plots for stock prices or cryptocurrencies}
\usage{
seasonPlot(
  Symbols,
  StartYear = lubridate::year(Sys.Date()) - 11,
  EndYear = lubridate::year(Sys.Date()) - 1,
  useAdjusted = FALSE,
  LineColor = 1,
  xlab = "Month",
  BackgroundMode = TRUE,
  alpha = 0.05,
  OutputData = FALSE,
  Save = FALSE,
  output_width = 1000,
  output_height = 700,
  family = "Helvetica",
  PlotAll = FALSE
)
}
\arguments{
\item{Symbols}{a character vector specifying the names of each symbol to be loaded.
e.g. ^IXIC (NASDAQ Composite), ^DJI (Dow Jones Industrial Average), SPY (SPDR S&P500 ETF),
BTC-USD (Bitcoin), ETH-USD (Ethereum), and XRP-USD (Ripple).}

\item{StartYear}{a numeric of start year (Common Er). The default is 11 years from now.}

\item{EndYear}{a numeric of end year (Common Er). The default is the last year.}

\item{useAdjusted}{Choose whether to use the closing price adjusted for dividends.
If FALSE, normal close price is used. In the case of cryptocurrencies,
the useAdjusted option is expected to return the same result.}

\item{LineColor}{a numeric between 1 and 4; The value 1 is to select red1,
the value 2 is to select blue1, the value 3 is to select green1,
and the value 4 is to select black.
When BackgroundMode is TRUE, this argument is disabled.}

\item{xlab}{a character of X-axis label.}

\item{BackgroundMode}{a logical; draw a background color by react.}

\item{alpha}{a numeric; The alpha parameter is a number between 0.0 (fully transparent)
and 1.0 (fully opaque).}

\item{OutputData}{a logical; output as a data.frame type or not.}

\item{Save}{a logical; save as an image (PNG) or not}

\item{output_width}{a output size of width (pixel). Initial value recommended.}

\item{output_height}{a output size of height (pixel). Initial value recommended.}

\item{family}{a character of font.}

\item{PlotAll}{a logical; display all period by dygraph function or not.}
}
\value{
plot results
}
\description{
This function is to easily create seasonality variation plots of
annual averages of stock prices or cryptocurrencies with some color options.
This can use the same symbols as the 'quantmod' package.
For the average calculation, the trading days for each month are aligned and then
the percentages of change with the beginning of the year being zero are calculated.
This function can set any given time period for averaging.
In addition, years with many missing data are automatically excluded before the average calculation.
The positive and negative monthly changes are shown in green and red background color, respectively.
}
\examples{
## Plot seasonality of NASDAQ Composite Index (^IXIC)
seasonPlot(Symbols = "^IXIC", useAdjusted = TRUE)

## Plot seasonality of Bitcoin (BTC-USD)
seasonPlot(Symbols = "BTC-USD", StartYear=2015, EndYear=2020)


}
\author{
Satoshi Kume
}
