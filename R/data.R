# spotify_playlists ----

#' Overview of Spotify Playlists used in data collection
#'
#' A data set contaning 56 playlists from Spotify that were used to get the
#' songs for the feature extraction of Billboard Hot 100 songs from 1960 to 2015
#' that you find in \link{spotify_track_data}.
#'
#' I was not possible to find playlists that had all 100 songs for all the years.
#'
#' @format A data frame with 56 rows and 4 variables:
#'
#' \describe{
#'   \item{year}{year}
#'   \item{spotify_uri}{the uri of the playlist}
#'   \item{spotify_user}{the user id extracted from the uri}
#'   \item{spotify_playlist}{the playlist id extracted from the uri}
#' }
#'
#' @source \url{http://www.spotify.com/}

"spotify_playlists"

# wiki_hot_100s ----

#' Overview of Billboards Hot 100 from 1960 to 2016
#'
#' A data set containing 57 years of Billboards Hot 100 songs. The data is scraped
#' from Wikipedia from the urls 'https://en.wikipedia.org/wiki/Billboard_Year-End_Hot_100_singles_of_'
#' and then the year added. Example: https://en.wikipedia.org/wiki/Billboard_Year-End_Hot_100_singles_of_1960.
#' One year has more than a 100 songs due to a tie.
#'
#' @format A data frame with 5701 rows and 4 variables:
#'
#' \describe{
#'   \item{no}{the rank that the song had that year}
#'   \item{title}{the title of the song}
#'   \item{artist}{the artist of the song}
#'   \item{year}{year}
#' }
#'
#' @source \url{http://www.wikipedia.com/}

"wiki_hot_100s"

# spotify_track_data ----

#' Track features extracted from the Spotify API
#'
#' Using the playlists in the \link{spotify_playlists} data set, this data contains
#' the features of all of the tracks on the playlists.
#'
#' @format A data frame with 5497 rows and 23 variables:
#'
#' \describe{
#'   \item{year}{year}
#'   \item{artist_name}{the artist of the song}
#'   \item{artist_id}{the Spotify ID of the artist}
#'   \item{explicit}{if the track is rated as explicit}
#'   \item{track_name}{the name of the track}
#'   \item{track_id}{the Spotify ID of the track}
#'   \item{danceability}{Danceability describes how suitable a track is for dancing based on a combination of musical elements including tempo, rhythm stability, beat strength, and overall regularity. A value of 0.0 is least danceable and 1.0 is most danceable.}
#'   \item{energy}{Energy is a measure from 0.0 to 1.0 and represents a perceptual measure of intensity and activity. Typically, energetic tracks feel fast, loud, and noisy. For example, death metal has high energy, while a Bach prelude scores low on the scale. Perceptual features contributing to this attribute include dynamic range, perceived loudness, timbre, onset rate, and general entropy.}
#'   \item{key}{The key the track is in. Integers map to pitches using standard Pitch Class notation. E.g. 0 = C, 1 = C#/Db, 2 = D, and so on.}
#'   \item{loudness}{The overall loudness of a track in decibels (dB). Loudness values are averaged across the entire track and are useful for comparing relative loudness of tracks. Loudness is the quality of a sound that is the primary psychological correlate of physical strength (amplitude). Values typical range between -60 and 0 db.}
#'   \item{mode}{Mode indicates the modality (major or minor) of a track, the type of scale from which its melodic content is derived. Major is represented by 1 and minor is 0.}
#'   \item{speechiness}{Speechiness detects the presence of spoken words in a track. The more exclusively speech-like the recording (e.g. talk show, audio book, poetry), the closer to 1.0 the attribute value. Values above 0.66 describe tracks that are probably made entirely of spoken words. Values between 0.33 and 0.66 describe tracks that may contain both music and speech, either in sections or layered, including such cases as rap music. Values below 0.33 most likely represent music and other non-speech-like tracks.}
#'   \item{acousticness}{A confidence measure from 0.0 to 1.0 of whether the track is acoustic. 1.0 represents high confidence the track is acoustic.}
#'   \item{instrumentalness}{Predicts whether a track contains no vocals. "Ooh" and "aah" sounds are treated as instrumental in this context. Rap or spoken word tracks are clearly "vocal". The closer the instrumentalness value is to 1.0, the greater likelihood the track contains no vocal content. Values above 0.5 are intended to represent instrumental tracks, but confidence is higher as the value approaches 1.0.}
#'   \item{liveness}{Detects the presence of an audience in the recording. Higher liveness values represent an increased probability that the track was performed live. A value above 0.8 provides strong likelihood that the track is live.}
#'   \item{valence}{A measure from 0.0 to 1.0 describing the musical positiveness conveyed by a track. Tracks with high valence sound more positive (e.g. happy, cheerful, euphoric), while tracks with low valence sound more negative (e.g. sad, depressed, angry).}
#'   \item{tempo}{The overall estimated tempo of a track in beats per minute (BPM). In musical terminology, tempo is the speed or pace of a given piece and derives directly from the average beat duration.}
#'   \item{type}{The object type: "audio_features"}
#'   \item{uri}{The Spotify URI for the track.}
#'   \item{track_href}{A link to the Web API endpoint providing full details of the track.}
#'   \item{analysis_url}{An HTTP URL to access the full audio analysis of this track. An access token is required to access this data.}
#'   \item{duration_ms}{The duration of the track in milliseconds.}
#'   \item{time_signature}{An estimated overall time signature of a track. The time signature (meter) is a notational convention to specify how many beats are in each bar (or measure).}
#' }
#'
#' @source \url{https://developer.spotify.com/web-api/get-audio-features/}

"spotify_track_data"


# lyrics ----

#' Lyrics from songs on Billboards Hot 100 from 1960 to 2016
#'
#' A data set containing lyrics for songs on the Billboard Hot 100 over the past
#' 57 years. The lyrics were identified and collected by webscraping so there
#' might be some errors and mistakes - have that in mind.
#'
#'
#' @format A data frame with 5701 rows and 4 variables:
#'
#' \describe{
#'   \item{title}{the title of the song}
#'   \item{artist}{the artist of the song}
#'   \item{year}{year}
#'   \item{lyrics}{lyrics of the song}
#' }
#'
#' @source \url{http://www.genius.com/}

"lyrics"

