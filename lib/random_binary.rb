prng2 = [0,1]

prng2.sample
prng2.sample(2)


requrie 'matrix'
test = Matrix[[prng2.sample(1)]]


Matrix.build(10,10) {|row, col| rand(2)}

battlematrix = Matrix.build(10,10) {|row, col| rand(2)}.to_s

battlestring = battlematrix.to_s


battlestring.center(999)



battlematrix
=> Matrix[[1, 0, 0, 0, 1, 0, 0, 0, 0, 1], [1, 1, 1, 1, 1, 0, 0, 1, 1, 1], [0, 1, 0, 1, 0, 1, 0, 0, 0, 1], [0, 0, 1, 0, 0, 0, 1, 1, 1, 0], [0, 0, 0, 0, 0, 1, 0, 0, 1, 0], [0, 0, 0, 0, 1, 0, 0, 0, 0, 1], [1, 1, 0, 1, 1, 1, 1, 1, 1, 0], [0, 0, 0, 1, 1, 1, 1, 1, 0, 0], [0, 0, 0, 0, 0, 1, 0, 1, 0, 0], [1, 1, 1, 0, 1, 0, 0, 1, 1, 0]]
