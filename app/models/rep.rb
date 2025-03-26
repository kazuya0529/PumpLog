class Rep < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' }
  ] + (1..30).map { |n| { id: n + 1, name: n.to_s } }
end