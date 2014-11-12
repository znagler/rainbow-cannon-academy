gameUI.firePlayerBullet = function() {
  if (game.time.now > gameUI.bulletTime) {
    playerBullets = gameState.groups.playerBullets.getFirstExists(false)
    if (playerBullets) {
      playerBullets.reset(gameState.player.body.x + 16, gameState.player.body.y + 16)
      playerBullets.lifespan = 4000
      playerBullets.body.velocity.x = 1000
    }
  }
}

gameUI.fireBossAlienBullet = function(){
  if (game.time.now > gameUI.bulletTime) {
    bossAlienBullets = gameState.groups.bossAlienBullets.getFirstExists(false)
    if (bossAlienBullets) {
      bossAlienBullets.reset(gameState.bossAlien.body.x, gameState.bossAlien.body.y + (gameState.bossAlien.height / 2))
      bossAlienBullets.lifespan = 4000
      bossAlienBullets.body.velocity.x = -500
    }
  }
}

gameUI.spawnAliens = function(){
  // position the block of aliens
  aliens.x = 1230
  aliens.y = 285
  for (var y = 0; y < 4; y++) {
    for (var x = 0; x < 5; x++) {
      var alien = aliens.create(x * 70, y * 70, 'invader') // space between aliens
      alien.health = 10
      alien.damage = 50
      alien.body.bounce.y = 1
      alien.body.bounce.x = 1
      alien.anchor.x = 0.5
      alien.anchor.y = 0.5
      game.physics.arcade.enable(alien)
    }
  }
  gameUI.sendAliens()
}

gameUI.scatterAliens = function(){
  gameState.groups.aliens.forEach(function(alien){
    alien.body.velocity.y = gameUI.getRandomInt(-20, 20)
    alien.body.velocity.x = gameUI.getRandomInt(-20, 0)
  })
  gameState.groups.aliens.setAll('body.collideWorldBounds', true)
  gameUI.alienScatterEnabled = false
}

gameUI.sendAliens = function(){
  var tween = game.add.tween(aliens)
  .to(
    { x: 90 },
    20000,
    Phaser.Easing.Linear.None,
    true)
}

gameUI.updateScore = function(){
   gameUI.score += 10
   gameUI.scoreObject.text = "Score: " + gameUI.score
 }

gameUI.aliensExist = function(){
  return (gameState.groups.aliens.countLiving() > 0)
}

gameUI.hitAlien = function(bullet, alien){
  alien.health -= bullet.damage
  if (alien.health <= 0) gameUI.killAlien(alien)
  bullet.kill()
}

gameUI.killAlien = function(alien){
  var explosion = gameState.groups.explosions.getFirstExists(false)
  explosion.reset(alien.body.x, alien.body.y)
  alien.kill()
  explosion.play('explosion', 30, false, true)
  gameUI.updateScore()
}
gameUI.wipeAlien = function(alien){
  alien.kill()
}

gameUI.killAllAliens = function(){
  gameState.groups.aliens.forEach(gameUI.wipeAlien)
  gameState.bossAlien.kill()
}

gameUI.aliensDead = function(){
  return (gameState.groups.aliens.countLiving() === 0 && !gameState.bossAlien.alive)
}

gameUI.spawnAlienBoss = function(){
  bossAlien = gameState.bossAlien = game.add.sprite(900, 250, 'diamond')
  game.physics.arcade.enable(bossAlien)
  bossAlien.enableBody = true
  game.physics.arcade.enable(bossAlien)
  bossAlien.scale.setTo(1,1)
  bossAlien.anchor.x = 0.5
  bossAlien.anchor.y = 0.5

  var bossTween = game.add.tween(bossAlien).to(
  { x:400 },
  15000,
  Phaser.Easing.Linear.None,
  true,
  0,
  1000,
  true)
}

gameUI.upgradeGun = function(questionsCorrect){
  if (questionsCorrect === 10){
    gameUI.firePlayerGunRate = 1
  } else{
    gameUI.firePlayerGunRate = Math.ceil((11 - questionsCorrect) * 6)
  }
}

gameUI.shrinkBoss = function(boss, bullet){
  bullet.kill()
  gameState.bossAlien.scale.x *= .8 // makes boss 80% of size when hit
  gameState.bossAlien.scale.y *= .8
  if (gameState.bossAlien.scale.x <= 1) boss.kill() // boss dies at scale 1
}

gameUI.growBoss = function(){
  gameState.bossAlien.scale.x *= 1.25 // makes boss 125% of size
  gameState.bossAlien.scale.y *= 1.25
}

gameUI.alienBossScale = function(questionsCorrect){
  if (questionsCorrect === 10) return 1
  return (1.25 * gameUI.alienBossScale(questionsCorrect+1))
}

gameUI.hitPlayer = function(player, objectThatHits){
  objectThatHits.kill() // object that collides with player
  player.health -= objectThatHits.damage
  // if Player dies, kill him/her & reset the round & subtract 10% points
  if (player.health <= 0) {
    player.kill()
  }
}

gameUI.playerDead = function(player){
  return player.health <= 0
}

gameUI.respawnPlayer = function(){
  var player = gameState.player = game.add.sprite(32, game.world.height - 150, 'dude')
  game.physics.arcade.enable(player)
  player.body.bounce.y = 0.2
  player.body.collideWorldBounds = true
  player.health = 100
}

gameUI.getRandomInt = function(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}




