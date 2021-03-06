% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{spotify_playlists}
\alias{spotify_playlists}
\title{Overview of Spotify Playlists used in data collection}
\format{A data frame with 56 rows and 4 variables:

\describe{
  \item{year}{year}
  \item{spotify_uri}{the uri of the playlist}
  \item{spotify_user}{the user id extracted from the uri}
  \item{spotify_playlist}{the playlist id extracted from the uri}
}}
\source{
\url{http://www.spotify.com/}
}
\usage{
spotify_playlists
}
\description{
A data set contaning 56 playlists from Spotify that were used to get the
songs for the feature extraction of Billboard Hot 100 songs from 1960 to 2015
that you find in \link{spotify_track_data}.
}
\details{
I was not possible to find playlists that had all 100 songs for all the years.
}
\examples{
if (require("dplyr")) {

  data(spotify_playlists)

  spotify_playlists \%>\% glimpse()

}
}
\keyword{datasets}
