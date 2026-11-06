import 'rpg_game.dart';

enum SuperAbility {
  heal,
  boost,
  criticalDamage,
  blockRevert,
  protect,
  dodge,
  resurrect,
  stun
}

abstract class GameCharacter {
  String name;
  int _health;
  int damage;

  set health(int value) {
    if (value < 0) {
      _health = 0;
    } else {
      _health = value;
    }
  }

  int get health => _health;

  GameCharacter(this.name, this._health, this.damage);

  bool isAlive() {
    return health > 0;
  }

  @override
  String toString() {
    return '${runtimeType.toString()} $name health: $health damage: $damage';
  }
}

class Boss extends GameCharacter {
  SuperAbility? defence;
  bool isStunned = false;

  Boss(super.name, super.health, super.damage);

  void chooseDefence() {
    List<SuperAbility> variants = SuperAbility.values;
    int randomIndex = RpgGame.random.nextInt(variants.length); // 0,1,2,3
    defence = variants[randomIndex];
  }

  void attack(List<Hero> heroes) {
    for (Hero h in heroes) {
      if (h.isAlive()) {
        if (h is Golem) {
          h.health -= damage;
          continue;
        }
        if (h is Lucky && RpgGame.random.nextInt(100) < 25) {
          print('Lucky ${h.name} dodged the attack!');
          continue;
        }
        // Ищем живого Golem
        Golem? golem;

        for (Hero hero in heroes) {
          if (hero is Golem && hero.isAlive()) {
            golem = hero;
            break;
          }
        }
        int redirectedDamage = 0;

        if (golem != null) {
          redirectedDamage = damage ~/ 5;
          golem.health -= redirectedDamage;
        }
        int damageToHero = damage - redirectedDamage;
        if (h is Berserk) {
          h.blockedDamage = 0;
          if (defence != SuperAbility.blockRevert) {
            int block = (RpgGame.random.nextInt(2) + 1) * 5;
            if (block > damageToHero) {
              block = damageToHero;
            }
            h.blockedDamage = block;

            damageToHero -= block;
          }
        }
        h.health -= damageToHero;
      }
    }
  }

  @override
  String toString() {
    if (defence == null) {
      return '${super.toString()} defence: No defence';
    } else {
      return '${super.toString()} defence: ${defence!.name}';
    }
  }
}

abstract class Hero extends GameCharacter {
  SuperAbility ability;

  Hero(super.name, super.health, super.damage, this.ability);

  void attack(Boss boss) {
    boss.health -= damage;
  }

  void applySuperPower(Boss boss, List<Hero> heroes);
}

class Warrior extends Hero {
  Warrior(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.criticalDamage);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    int crit = (RpgGame.random.nextInt(5) + 2) * damage; // 2,3,4,5,6
    boss.health -= crit;
    print('Warrior $name hit critically $crit');
  }
}

class Magic extends Hero {
  Magic(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.boost);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    if (RpgGame.roundNumber <= 4) {
      int teamAttackBonus = (RpgGame.random.nextInt(6) + 2);
      for (Hero h in heroes) {
        if (h.isAlive()) {
          h.damage += teamAttackBonus;
          // print(h);
        }
      }
    }
  }
}

class Berserk extends Hero {
  int blockedDamage = 0;

  Berserk(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.blockRevert);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    boss.health -= blockedDamage;
    print('Berserk $name reverted $blockedDamage');
  }
}

class Healer extends Hero {
  int healPoints;

  Healer(String name, int health, int damage, this.healPoints)
    : super(name, health, damage, SuperAbility.heal);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    for (Hero h in heroes) {
      if (h.isAlive() && h != this) {
        h.health += healPoints;
      }
    }
  }
}

class Golem extends Hero {
  Golem(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.protect);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    // TODO: implement applySuperPower
  }
}

class Lucky extends Hero {
  Lucky(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.dodge);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {}
}

class Witcher extends Hero {
  bool hasResurrected = false;

  Witcher(String name, int health)
    : super(name, health, 0, SuperAbility.resurrect);

  @override
  void attack(Boss boss) {}

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    if (!isAlive() || hasResurrected) {
      return;
    }

    for (Hero hero in heroes) {
      if (!hero.isAlive()) {
        hero.health = health;
        health = 0;
        hasResurrected = true;

        print('Witcher $name sacrificed himself to resurrect ${hero.name}');

        break;
      }
    }
  }
}

class Thor extends Hero {
  Thor(String name, int health, int damage)
      : super(name, health, damage, SuperAbility.stun);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    if (RpgGame.random.nextBool()) {
      boss.isStunned = true;
      print('>>>>>Thor $name stunned the boss!!!<<<<<');
    }
  }
}
