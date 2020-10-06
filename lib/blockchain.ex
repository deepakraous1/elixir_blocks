import Block
import Crypto
defmodule Blockchain do

  def init do
    block_chain = Block.genesis_block()
    block_chain
  end

  @doc "Build a new block for given data and previous hash"
  def new(block_chain, data) do
  
  newblock = %{
    meta: "RND*",
    address_from:  "232565FA051713BC8C67E58",#"hash(address(MASS65*))"
    address_to: "232565FA051713BC8C67E59",
    timestamp: DateTime.utc_now(),
    prev_hash: "232565FA051713BC8C67E58A38A34EBDE4B98AE2F168EFBA0A4BD16400E00CF3",
    hash: "242565FA051713BC8C67E58A38A34EBDE4B98AE2F168EFBA0A4BD16400E00CF", #"hash(next(MASS65*)))",
    data: "[{k1,v1},{k1,v1},...,{Kn,Vn}]"
  } 

  [block_chain,newblock]
end

end
