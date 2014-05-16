var gulp = require('gulp');
var coffee = require('gulp-coffee');

var htmlSrc = 'src/**/*.html';
var htmlDest = 'build';

var coffeeSrc = 'src/js/**/*.coffee';
var coffeeDest = 'build/js';

gulp.task('js', function() {
  return gulp.src(coffeeSrc)
    .pipe(coffee())
    .pipe(gulp.dest(coffeeDest));
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

