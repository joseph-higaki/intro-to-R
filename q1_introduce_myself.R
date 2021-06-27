# Variable names
my_name <- "Joseph"
number_of_cats_I_own <- 1
my_job_history <- c("programmer", "business analyst", "software engineering supv", "scrum monster", "delivery manager")



#' build_job_list_phrase
#' Turns a job position vector into a string phrase
#' @param job_list string vector of job positions
#'
#' @return string Phrase of job positions, comma separated for the n-1 first item. Last item is concatenated to the phrase with an 'and'
build_job_list_phrase <- function(job_list){
  if (length(job_list) == 0) {
    return("")
  }
  if (length(job_list) == 1) {
    return(job_list[1])
  }
  else {
    if (length(job_list) == 2) {
      return(paste(job_list[1], build_job_list_phrase(job_list[-1]), sep = " and "))
    }
    else  {
      return(paste(job_list[1], build_job_list_phrase(job_list[-1]), sep =  ", "))
    }
  }
}


#' build_cat_ownership_phrase
#' Builds a phrase stating how many cats one has owned
#' @param number_of_cats_owned integer Amount of cats  
#'
#' @return string Phrase stating how many cats one has owned. Recognizes zero, one (singular) more than one (plural)
build_cat_ownership_phrase <- function(number_of_cats_owned){
  return_value  <- ""
  if (number_of_cats_owned > 0) {
    return_value <- paste("owns", number_of_cats_owned, "cat")
    if (number_of_cats_owned > 1)
      return_value <- paste(return_value, "s")
  }
  return(return_value) 
}

#' build_introduction_message
#' Builds the introductory message for a person
#' @param name string Name of the person
#' @param number_of_cats_owned integer Amount of cats owned by the person
#' @param job_list string vector of job positions the person has had
#'
#' @return string with an introductory message  
build_introduction_message <- function(name, number_of_cats_owned, job_list){
  return (
    paste(my_name, 
          build_cat_ownership_phrase(number_of_cats_owned),
          ifelse(length(job_list != 0), "has been a", ""),
          build_job_list_phrase(job_list))
  )
}

# body of program
introduction_message <- build_introduction_message(my_name, number_of_cats_I_own, 
                                                    my_job_history)
print(introduction_message)


