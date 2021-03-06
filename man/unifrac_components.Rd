% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/beta_components.R
\name{unifrac_components}
\alias{unifrac_components}
\alias{unweighted_unifrac_turnover}
\alias{unweighted_unifrac_nestedness}
\alias{phylosor_turnover}
\alias{phylosor_nestedness}
\title{Nestedness and turnover components of unweighted UniFrac distance}
\usage{
unweighted_unifrac_turnover(x, y, tree, xy_labels = NULL)

unweighted_unifrac_nestedness(x, y, tree, xy_labels = NULL)

phylosor_turnover(x, y, tree, xy_labels = NULL)

phylosor_nestedness(x, y, tree, xy_labels = NULL)
}
\arguments{
\item{x, y}{Numeric vectors of species counts or proportions.}

\item{tree}{A phylogenetic tree object.}

\item{xy_labels}{A character vector of species labels for \code{x} and
\code{y}.}
}
\value{
The nestedness or turnover component of the UniFrac distance
  between communities \code{x} and \code{y}. This quantity is undefined
  when either \code{x} or \code{y} have all elements equal to zero, in
  which case we return \code{NaN}.
}
\description{
Nestedness and turnover components of unweighted UniFrac distance
}
\details{
Leprieur et al. (2012) showed that measures of phylogenetic beta diversity
could be partitioned into nestedness and turnover components, following the
approach of Baselga (2010) for Sorenson dissimilarity.
}
\examples{
# Vectors x and y have turnover but no nestedness
x <- c(1, 1, 1, 0, 0, 0, 0, 0)
y <- c(0, 1, 1, 1, 0, 0, 0, 0)

unweighted_unifrac(x, y, leprieur_tree)
unweighted_unifrac_turnover(x, y, leprieur_tree)
unweighted_unifrac_nestedness(x, y, leprieur_tree)

phylosor(x, y, leprieur_tree)
phylosor_turnover(x, y, leprieur_tree)
phylosor_nestedness(x, y, leprieur_tree)

# Vectors y and z have nestedness but no turnover
z <- c(0, 1, 1, 1, 1, 1, 1, 1)

unweighted_unifrac(y, z, leprieur_tree)
unweighted_unifrac_turnover(y, z, leprieur_tree)
unweighted_unifrac_nestedness(y, z, leprieur_tree)

phylosor(y, z, leprieur_tree)
phylosor_turnover(y, z, leprieur_tree)
phylosor_nestedness(y, z, leprieur_tree)
}
\references{
Baselga A. Partitioning the turnover and nestedness components of beta
diversity. Global Ecol. Biogeogr. 2010;19:134-143.

Leprieur F, Albouy C, De Bortoli J, Cowman PF, Bellwood DR, Mouillot D.
Quantifying phylogenetic beta diversity: distinguishing between "true"
turnover of lineages and phylogenetic diversity gradients. PLoS One.
2012;7(8):e42760. 10.1371/journal.pone.0042760
}
