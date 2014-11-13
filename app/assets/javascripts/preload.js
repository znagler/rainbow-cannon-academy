function preLoad (){}

preLoad.prototype = {
  preload: function() {
    rain.preload(game)
    game.load.image('planet_bg', '../assets/space_bg.png') /* Planet BG for scrolling */
    game.load.image('hud', '../assets/hud.png') /* Player HUD screen */
    game.load.image('phaser', '../assets/phaser.png') /* placeholder for logo */
    game.load.image('bullet', '../assets/rainbow_cannon.png')
    game.load.image('dude', '../assets/dude.png')
    game.load.image('boss_alien', '../assets/boss.png')
    game.load.spritesheet('invader', '../assets/baddie.png', 32, 32)
    game.load.spritesheet('explosion', '../assets/explosion.png', 40, 40)
    game.load.spritesheet('dude_hit', '../assets/reddude.png', 64, 39)
    game.load.image('enemyBullet', '../assets/bullet.png')
  },

  create: function() {
    console.log(game.state.current)
    game.state.start('welcome')
  },

  update: function() {
  },

  render: function(){
  }
}
