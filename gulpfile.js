var gulp = require('gulp');
var coffee = require('gulp-coffee');

var htmlSrc = 'public/**/*.html';
var htmlDest = 'build';

var coffeeSrc = 'coffee/**/*.coffee';
var coffeeDest = 'build/js';

function handleError(err) {
  console.log(err.toString());
  this.emit('end');
}

gulp.task('js', function() {
  return gulp.src(coffeeSrc)
    .pipe(coffee())
    .on("error", handleError)
    .pipe(gulp.dest(coffeeDest))
    ;
});

gulp.task('html', function() {
  return gulp.src(htmlSrc)
    .pipe(gulp.dest(htmlDest));
});

gulp.task('watch', function() {
  gulp.watch(coffeeSrc, ['js']);
  gulp.watch(htmlSrc, ['html']);
});

gulp.task('default', ['js', 'html', 'watch']);

