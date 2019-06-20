library(plyr)

accbar.category.names <- c('Over', 'Close', 'Very Close', 'Hit', 'Under')
accbar.colors <- c('#F2FF00', '#FFE500', '#FFBF00', '#FF9900', '#FF4C00')

getIndicatorACCBAR <- function(acc, p, n, delta=acc-(max(p, n)/(p+n)),
                                   unit_step_length=0.05)
{
  return (ifelse(delta <= 0,
                 1,
                 1-((delta*100 + 4) %/% 5 * unit_step_length)))
  # Old method
  # if (delta <= unit_step_length) {
  #   # In Accuracy Barrier
  #   ACCBAR <- 1
  # }
  # else if (delta <= 2*unit_step_length) {
  #   # Very close to Accuracy Barrier
  #   ACCBAR <- 2
  # }
  # else if (delta <= 3*unit_step_length) {
  #   # Close to Accuracy Barrier
  #   ACCBAR <- 3
  # }
  # else {
  #   # Not close to Accuracy Barrier (no Accuracy Paradox)
  #   ACCBAR <- 0
  # }
}

getIndicatorACCBARCategory <- function(indACCBAR, unit_step_length=0.05)
{
  accbar.category.limits <- c(0,                    # Over
                              1-3*unit_step_length, # Close
                              1-2*unit_step_length, # Very close
                              1-unit_step_length,   # Hit
                              1                     # Under
                              )
  
  return (accbar.category.names[findInterval(indACCBAR,
                                             accbar.category.limits,
                                             all.inside=TRUE
                                             #, left.open=TRUE
                                             )])
}
