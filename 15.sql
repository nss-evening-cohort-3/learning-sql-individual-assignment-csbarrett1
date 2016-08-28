SELECT
  Playlist.Name,
  COUNT (Track.TrackId)
FROM Playlist
INNER JOIN PlaylistTrack
  ON Playlist.PlaylistId = PlaylistTrack.PlaylistId
INNER JOIN Track
  ON PlaylistTrack.TrackId = Track.TrackId
GROUP BY Playlist.Name