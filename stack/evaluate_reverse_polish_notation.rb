def eval_rpn(tokens)
  ops = ['+', '-', '*', '/']

  stack = []

  tokens.each do |token|
    unless ops.include? token
      stack.push(token.to_i)
      next
    end

    arg1, arg2 = stack.pop 2
    stack.push calc(arg1, arg2, token)
  end

  stack.last
end

def calc(arg1, arg2, operation)
  return arg1.send(operation, arg2.to_f).ceil.to_i if operation == '/' && (arg1.negative? ^ arg2.negative?)

  arg1.send(operation, arg2)
end

p eval_rpn(["4","13","5","/","+"])