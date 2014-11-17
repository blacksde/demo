#' Make movie
#'
#' This function makes movie using existing pictures
#' in selected file
#'
#' This function uses ffmpeg in the system and makes
#' movie by connecting pictures in selected file
#'
#' @param name, loc, pic, frames
#' @return a video file
#' @keywords misc
#' @note names must end with an video file extension, like ".mp4". pic must be jpg file.
#' @export
#' @examples
#' draw_singleyear(1952)


make_mov <- function(name , loc, pic, frames = 4){
	system(paste("ffmpeg -r ", frames, " -i ", loc, "/", pic, "%02d.jpg ", name, sep = ''))
}
