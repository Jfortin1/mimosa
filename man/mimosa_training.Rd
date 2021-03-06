% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mimosa_training.R
\name{mimosa_training}
\alias{mimosa_training}
\title{Train MIMoSA model on full training set}
\usage{
mimosa_training(
  brain_mask,
  FLAIR,
  T1,
  T2 = NULL,
  PD = NULL,
  tissue = FALSE,
  gold_standard,
  normalize = "no",
  slices = NULL,
  orientation = c("axial", "coronal", "sagittal"),
  cores = 1,
  verbose = TRUE,
  outdir = NULL,
  optimal_threshold = NULL
)
}
\arguments{
\item{brain_mask}{vector of full path to brain mask}

\item{FLAIR}{vector of full path to FLAIR}

\item{T1}{vector of full path to T1}

\item{T2}{vector of full path to T2 if available. If not use NULL.}

\item{PD}{vector of full path to PD if available. If not use NULL.}

\item{tissue}{is a logical value that determines whether the brain mask is
a full brain mask or tissue mask (excludes CSF), should be FALSE unless
you provide the tissue mask as the brain_mask object}

\item{gold_standard}{vector of full path to Gold standard segmentations.
Typically manually segmented images.}

\item{normalize}{is 'no' by default and will not perform any normalization on data. To normalize data specify 'Z' for z-score normalization or 'WS' for WhiteStripe normalization}

\item{slices}{vector of desired slices to train on, if NULL then train
over the entire brain mask}

\item{orientation}{string value telling which orientation the training
slices are specified in, can take the values of "axial", "sagittal",
or "coronal"}

\item{cores}{numeric indicating the number of cores to be used
(no more than 4 is useful for this software implementation)}

\item{verbose}{logical indicating printing diagnostic output}

\item{outdir}{vector of paths/IDs to be pasted to objects that will be
saved. NULL if objects are not to be saved}

\item{optimal_threshold}{NULL. To run algorithm provide vector of thresholds}
}
\value{
GLM objects fit in the MIMoSA procedure and optimal threshold
evaluated for full training set
}
\description{
This function trains the MIMoSA model from the data frames
produced by mimosa_data on all subjects and determines optimal threshold
based on training data
}
