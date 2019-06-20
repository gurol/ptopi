#' # ACCBAR - Accuracy Barrier Indicator
#' @author Gürol Canbek, <gurol44@gmail.com>  
#' Copyright (C) 2017-2019 Gürol CANBEK  
#' This file is licensed under  
#' 
#'   A p a c h e   L i c e n s e   2 . 0  
#' 
#' A permissive license whose main conditions require preservation of copyright  
#' and license notices. Contributors provide an express grant of patent rights.  
#' Licensed works, modifications, and larger works may be distributed under  
#' different terms and without source code.  
#'  
#' See the license file in <https://github.com/gurol/ptopi>  
#' @references <http://gurol.canbek.com>  
#' @keywords classification, performance evaluation, metrics, indicator, accuracy  
#' @title Accuracy Barrier Indicator (ACCBAR)  
#' @version 1.0  
#' @description R functions for calculating a novel performance evaluation
#' indicator named Accuracy Barriers (ACC). The indicator is proposed by
#' Gürol Canbek to identify whether the classification performance is close to
#' random classifier's performance
#' @note version history  
#' 1.1, 20 June 2019, Names are changed
#' 1.0, 17 June 2017, The first version
#' @date 20 June 2019  

#' libraries  
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
