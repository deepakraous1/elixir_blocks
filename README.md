**Elemental Blockchain in Elixir**

  Welcome , COVID-19 is still around, please stay safe,informed and gentle with yourself. Take a deep breath, the Mission is for the next 3 stories is to write few lines of code as possible and compose the stories using ***recursive state compostion technique**, specifically creating a simple computational FlexCapacitor! State Machine!!. which we refer to as our MVP(Minimal Viable Product).
 
I plan to use existing code snippets as a baseline for from our storyline. Please feel free to fork your own path for ***[ 9,10,11]*** -12 where we will be gluing to conclude this series in 13. 

***Elixir*** will be language of choicce along with ***OTP(Open Transport(e) Protocol)***. We will use a simple { key, value } local db to store [key:valu\. To speed up delivery time I  I am planning to use external libraries as I see fit. Please poke around @ the External Libraries in **mix.exs**,last but not the least I am trying to follow **DRY**(Don't Repeat Yourself). so let us keep the chatter in the low, finally we will recap,redo,refine and show off our fruit of Labour as ***MVP0.0090.001***. 

**Note***: **This is a personal Blog of mine and does not reflect the opinions of my current employer.**

  |Concept |Chp| Topic |
  |--------|---|-------|
  |ToyBlock|[ToyBlkchain](https://medium.com/@derao512/ethereum-under-the-hood-part-9-transactions-3ead47725a8f)| ToyBlk|
  |BlkChn-2|[Blkchain-1](https://medium.com/@derao512/ethereum-under-the-hood-part-8-blocks-2-8941d88014c0)  | Blk-1 |
  |BlkChn-1|[Blchain-0](https://medium.com/@derao512/ethereum-under-the-hood-part-7-blocks-7f223510ba10)]| Blk-0 |
  |Keccak  |[Keccak](https://medium.com/@derao512/ethereum-under-the-hood-part-6-hashing-31077c7659ca)| Hash  |
  |Fortnite|[Fortnite](https://medium.com/coinmonks/ethereum-under-the-hood-part-5-fortniting-ethereum-eaf314c970c8)| Game  |
  |Trie-Dat|[Trie](https://medium.com/coinmonks/ethereum-under-the-hood-part-4-the-trie-a3f71f8dbef8)| Trie  |
  |RLP-D   |[RLP-d](https://medium.com/coinmonks/ethereum-under-the-hood-part-3-rlp-decoding-c0c07f5c0714)| RLP-d |
  |RLP-E   |[RLP-e](https://medium.com/coinmonks/ethereum-under-the-hood-part-ii-i-933411deebe1)| RLP-e |
  |VM      |[ETH](https://medium.com/coinmonks/ethereum-under-the-hood-part-i-ver-0-1-4f2fb24b3d68)| ETH   |
  
  # Transactions[4.2 Yellow Paper] Symbol-table
  |Symbol  |Type| Description |
  |--------|----|-------------|
  |Nonce   |[2] | A Nonce     |
  |GasPrice|[3] | Gas Price   |
  |GasLimit|[4] | Gas Limit   |
  |To      |[5] | To          |
  |Value   |[6] | Value       |
  |v       |[5] | v           |
  |r       |[4] | r           |
  |s       |[3] | s           |
 
  #Symbols definition( In Progress... )
  
  |Symbol  |Type| Description |
  |--------|----|-------------|
  |+       |[2] | Add.        |
  |0       |[3] | Null        |
  |1       |[4] | A Value     |
  |f       |[5] | A Function  |
  |g       |[6] | Genesis     |
  |c       |[5] | Compose     |
  |a       |[4] | Ariety      |
  |x       |[3] | para-0      |
  |y       |[2] | para-1      |
  |z       |[1] | para-2      |
  |a1      |[0] | para-3      |

# TODO's
- [x] Genesis
- [x] BlockHeader
- [x] Construct a Block
- [ ] Construct a Wallet,Address
- [ ] Construct Transaction Model
- [ ] Form a { K,V }
- [ ] RLP { K,V }
- [ ] Trie
- [ ] Cubdb
- [ ] Repl.it

## Installation( In Progress.. )

- [ ] Local test
- [ ] Build success
- [ ] Test a simple state
- [ ] Note depth
- [ ] Form {K,V}
- [ ] Repl.it

## Refer to:
- [9](https://medium.com/p/3ead47725a8f/edit)

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `elixir_blocks` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:elixir_blocks, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/elixir_blocks](https://hexdocs.pm/elixir_blocks).
