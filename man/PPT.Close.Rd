\name{PPT.Close}
\alias{PPT.Close}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Close a PowerPoint presentation}
\description{
Closes a PowerPoint presentation.
}
\usage{
PPT.Close(ppt)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{ppt}{Required list of COM objects as initialised by PPT.Init. See example.}

}
%\details{}
\value{
  \item{ppt}{Invisibly returns a list of COM objects. }
}

\references{ 
See \url{ http://sunsite.univie.ac.at/rcom} for more details on rcom and \url{http://www.omegahat.org/RDCOMClient/} for more details on RDCOMClient.
}

\author{ Wayne Jones \email{wayne_betws@hotmail.com}}
\section{Warning}{You must save the returned list of COM objects initialised with PPT.Init to an R object. See the example. }

%\note{}
\seealso{\code{\link{PPT.Init}},\code{\link{PPT.SaveAs}},\code{\link{PPT.AddTitleSlide}},\code{\link{PPT.AddTextSlide}},\cr
\code{\link{PPT.AddTitleOnlySlide}},\code{\link{PPT.Present}},\code{\link{PPT.ApplyTemplate}},\code{\link{PPT.AddGraphicstoSlide}}}


\examples{

\dontrun{
#Example of generating a presentation without making it visible (can be a lot quicker!).
myPres<-PPT.Init(visible=FALSE)
myPres<-PPT.AddTitleSlide(myPres,title="Title Slide",subtitle="Subtitle here")
myPres<-PPT.AddTitleOnlySlide(myPres,title="Title Only",title.fontsize=40,title.font="Arial")
myPres<-PPT.AddTextSlide(myPres,title="Text Slide",text="Text1 \rText2 \rText3",text.font="Arial")
myPres<-PPT.SaveAs(myPres,file=paste(getwd(),"test R2PPT Pres.ppt",sep="/"))
myPres<-PPT.Close(myPres)
rm(myPres)

### Open presentation
myPres<-PPT.Open(file=paste(getwd(),"test R2PPT Pres.ppt",sep="/"))
myPres<-PPT.Present(myPres)
} 

}
\keyword{IO}
\keyword{connection}
