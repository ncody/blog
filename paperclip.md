PaperClip
-needs ImageMagick
  brew install imagemagick
-add paperclip to gemfile
-run paperclip migration
  rails generate paperclip post image
 **show post model
-must add html: { multipart: true } to form and file field
-include image params in controller
-image tag helper
-built in validations for the model
