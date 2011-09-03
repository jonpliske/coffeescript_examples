# https://github.com/jashkenas/coffee-script/wiki/Mixins

implements = (classes...) ->
    for klass in classes
        # static properties
        for prop of klass
            @[prop] = klass[prop]
        # prototype properties
        for prop of klass.prototype
            getter = klass::__lookupGetter__(prop)
            setter = klass::__lookupSetter__(prop)

            if getter || setter
                @::__defineGetter__(prop, getter) if getter
                @::__defineSetter__(prop, setter) if setter
            else
                @::[prop] = klass::[prop]
    return this

if Object.defineProperty
    Object.defineProperty Function.prototype, "implements", value : implements
else
    Function::implements = implements


class Mixin1
    @staticProp   = 42
    dymamicMethod : -> "Mixin1 : #{@name}"

class Mixin2
    dynamicMethod : -> "Mixin2 : #{@name}"

class ExampleClass # extends AnotherClass
    @implements Mixin1, Mixin2
    constructor : (@name) ->

obj = new ExampleClass 'Tim'

console.log ExampleClass.staticProp
console.log obj.dynamicMethod()