function preLoad (){}

preLoad.prototype = {
  preload: function() {
    game.load.image('starfield', '../assets/starfield.png');
    game.load.image('star', '../assets/star.png')
    rain.preload(game)
    game.load.image('bullet', '../assets/bullets.png')
    game.load.image('dude', '../assets/ship.png')
    game.load.image('diamond', '../assets/diamond.png')
    game.load.spritesheet('invader', '../assets/baddie.png', 32, 32)
  },

  create: function() {
    game.state.start('welcome')
  },

  update: function() {
  },

  render: function(){
  }
}