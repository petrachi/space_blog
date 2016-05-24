In my opinion, code should be simple. `RKit::Override` brings simplicity along behavior sharing patterns. It unifies under a unique syntax the override of a methods defined through inheritance, delagation or DSL injection.

### How to install

You'll first need to add the [r_kit](https://rubygems.org/gems/r_kit) gem.

```ruby
gem 'r_kit', '~> 1.0.1'
```

And then, add this line into one of your initializers. Please note that `:override` is needed as a dependency for `%w(active_record_utility pagination utility)`, so it will be loaded if any of these services are loaded.

```ruby
RKit.load :override
```





Idea : réécrire en mode histoire
le 'commander video' (nom à fixer), qui rencontre le super méchant 'pattern divergence' dans la 'supernature'. Le 'commander', en utilisant son super-outil 'rkit' parvient à uniformiser sa capacité d'override, en dépuit des efforts du supervilain.







### Overview

```ruby
class Coffee
  def price() 4 end
end

class WithSugar < SimpleDelegator
  override_method :price do
    __olddef__ + 2
  end
end

?> WithSugar.new(Coffee.new).price
=> 6
```

```ruby
class Class
  def sugar_dsl
    override_method :price do
      __olddef__ + 2
    end
  end
end

class Coffee
  def price() 4 end

  sugar_dsl
end


?> Coffee.new.price
=> 6
```



In Ruby, there is a keyword named 'super', that is used to retreive the inherited behavior of a method. There are times, however, where you wish you could use the 'super' keyword, and you can't, because your are not using inheritance.
'RKit::Override' provides a unique way to retreive the previous definition of a method, by defining a new keyword '__olddef__'. So you, as a developer, no longer need to care about how your objects get behavior, whether it is inheritance, DSL injection or delegation, you will always be able to simply override them.


test:

When you try to override an inherited method in ruby, you have the keyword 'super' that allow you to call the previous method definition. However, this 'super' keyword works only in this case, in the context of inheritance.

If you try to call 'super' when overriding a method that has been previously defined in the same class, let say a method defined by a DSL (like active record relations), it will fail. If you try to call 'super' when overriding a method in a delegation class, it will also fail.

'RKit::Override' patch these failures by giving a way to ALWAYS get the previous definition of a method. It comes with a simple DSL and a new keyword named '__olddef__'. The '__olddef__' keyword has the same use as the built-in 'super' keyword.

-------------------> Exemple 1, override simple

The advantage of using 'RKit::Override' is that the '__olddef__' keyword will always return a value, in a context on inheritance, like 'super', but also when using DSL and delegations objects. If '__olddef__' fails to find a previous method definition, it will simply return 'nil', instead of raising an error (note de l'auteur, je crois que c'est nodefinintionerror, à vérifier et à mettre).

The 'RKit::Override' DSl will work not only for instances methods, but also for singleton methods (also called class methods), and in included/prepended modules. This mentionned, it is important to note that both overriding and calling an overrided method, defined by 'RKit::Override', is about eight times longer than the regular speed. It's okay for your application's object, but not for the ruby core objects.

-------------------> Exemple 2, override multiple sur un delegator


-> faire une conslusion


-> Liste des méthodes publiques & arguments


-> faire un second article dans la série sur les patterns & la méthode 'depend'
'RKit::Override' also provide patterns (note de l'auteur: et je suis fatigué, je continue d'écrire plus tard)

(note de l'auteur: mettre la liste de toutes les méthodes publiques, comme sur les docs ruby)

(side note de l'auteur: faire un article 'patchnote' + update le gemspec/readme de rkit)





-> quick quote like "I just hate when, just because you don't use inheritance, you can't use 'super' and then you have to do all the work!"
-> Install (gem rkit, initializer, dependencies(if present)) - Version
-> Overview (the idea + 1 example)
-> List of public API (with links to following docs w/ more details if needed (like 'patterns'))

next article: Patterns
-> Overview
-> Availables patterns
-> Real world Examples


pour la prez vodeclic:
-> montrer de ex d'utilisation dans vodeclic
-> 1: le 'depend' sur tout un tas de 'if', on de vrait trouver
-> 2: le override classique sur le @_csp_titres
-> 2.2: la généralisation (via une dsl) du @csptitres qui devient super easy
-> 3: implementation: faire un grounds avec une implémentation simplifiée





























Today, as we return to the supernature, we found a world threatened y division. Here, in front of us, in a universe where everything is an object, where harmony should rule the physics of this world, we found three doors.

The middle one is labeled "inheritance", the next to the left is "delegation", and the last one is "dsl injection". The three doors leads to a path, in every path, our behavior is shared by ???. But far behing, comming at the speed of light come the spaceman! He hold the key to our delivrance: Override! A single way to define patterns of behaviors, no matter where they come from.
...
--
... but look who comes, it's the spaceman!

The spaceman is some sort of phiscologist here, he opens your mind and give tools on his owns way, some osrt of mental telekenisis. I remember the first he say to me:


```ruby
gem 'r_kit', '~> 1.0.1'
```

That day tough, he was a little diferent. Not the warm and king pcaracter I would normally describe. Facing theses three doors, he seems concerned, like if he knew something was very wrong, like the doors was really only one thing, only one big and scary monter.

Before I could put my tough together, I saw him facing the 'three doors giant', and whispering something that looked like an incantation, a sentence of three words that he kept saying over and over. I remember these words very well, cause they changed the hole structure of the supernature that day. these words where:

```ruby
RKit.load :override
```
And something changed, when I looked at the doors once more, there was no doors anymore, no three doors I mean, it was only one left.

At the moment, I didn't understood what really happend. I just thought he beat the monster, just like that, with three powerful words. But now, I can say that this day, the whole structure of the supernature had been shaked that day, changed.

What really happend is that the way we behave, the way we lear our behaviors from other objects can be different now, unique. Diversity is gone, for the good of all living thing of the supernature. Tommorow, when I'll teach my son how to walk, i'll be simple, I'll just say:

```ruby
class Child

  override_methods do
    def walk
      __old_def__

      if rand(age) == 0
        fall and raise
      end
    rescue
      retry
    end
  end

end
```

No matter if my child was born out of love

```ruby
class GrownUp
  def walk
    # ...
  end
end

class Child < GrownUp
end
```

Or if he was adopted

```ruby
class Child < SimpleDelegator
end

child = Child.new(GrownUp.new)
```

Or even, fed with knowledge

```ruby
class Child
  acts_as_walkers
end
```

All of this doesn't matter now, tomorrow, for my kid firsts steps, I will teach him the same way all other parents teach their kids how to walk. This is the gift the spaceman give us on that day, and, speaking for me, I now realized that I owe him.

'Till we met again.







---------
my name is paul, i'm the kin of `Person` who knows how to `#walk`...
