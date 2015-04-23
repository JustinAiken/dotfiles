alias -g db:redo="db:drop db:create db:migrate db:seed"

railsnew() {
  rails new "$*" --skip-turbolinks --skip-test-unit
}
