# typed: false
extend T::Sig

module I1
  def i1; end
end

module I2
  def i2; end
end

class C
  include I1
  include I2
end

class D
  include I1
  include I2
end

sig { params(x: T.all(I1, I2)).void}
def foo(x)
  x.i1
  x.i2
end

foo(C.new)
foo(D.new)
