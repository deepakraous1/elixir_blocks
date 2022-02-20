![](https://github.com/deepakraous/elixir_blocks/blob/master/assets/image/key.png?raw-true)

**Elemental Blockchain in Elixir**

Welcome , COVID-19 is still around, please stay safe,informed and gentle with yourself. Take a deep breath, the Mission is for the next 3 stories is to write few lines of code as possible and compose the stories using ***recursive state composition technique**, specifically creating to create simple State Machine!!. which we refer to as our MVP(Minimal Viable Product).
 
I plan to use existing code snippets as a baseline for from our storyline. Please feel free to fork your own path for 
***stories [ 9,10,11]*** -12,13 where we will be gluing to conclude this series in 13. for Tranasctions. 

***Elixir*** is the language of choice along with ***OTP(Open Transport(e) Protocol)***. We will use a simple { key, value } local db to store key:value. To speed up delivery time I  I am planning to use external libraries as I see fit. Please poke around @ the External Libraries in **mix.exs**,last but not the least I am trying to follow **DRY**(Don't Repeat Yourself).  

**Note***: **This is a personal Blog of mine and does not reflect the opinions of my current employer.**

# Transactions in Ethereum 

  **"Transactions"** is an important topic  and needs multiple chapters [9,10,11]. Chapter 9 we cover the Transaction fields[0-4]. Ethereum yellow paper defines Transaction(T) as Trie data strcuture.
  The yellow paper defines two types of transactions 1)Message call Txn 2) Contract creation Txn. Both types of Txn have the same set of fields as described in the table below.

  # Transactions[4.2 Yellow Paper] Symbol-table
  |Symbol  |Type| Description                                |
  |--------|----|--------------------------------------------|
  |Nonce   |[0] | Number of sent txn by sender               |
  |GasPrice|[1] | GP is the price has to pay for a Txn       |
  |GasLimit|[2] | GL is the max price set for the above Txn  |
  |To      |[3] | Address of the reciepent of the Eth Txn    |
  |Value   |[4] | The value of this Txn in Wie               |
  |v,r,s   |[5] | v,r,s are txns with diff signatures        |
  |data    |[6] | data                                       |
  |init    |[7] | initialize a program counter               |
 
v,r,s fields represents cryptographical signed (ECDSA) transaction fields by which the sender address can be deciphered,formally defined as Tw,Tr,Ts in Appdx F.Ethereum uses 3 elliptic curve functions ECDSAPUBKEY,ECDSASIGN,ECDSARECOVER
Have a look at the diagram below 

![image](https://github.com/deepakraous/elixir_blocks/blob/master/assets/image/txn.png?raw-true)


  |Concept |Chp| Topic |
  |--------|---|-------|
  |BlkChn-2|[Blkchain-1](https://derao.medium.com/ethereum-under-the-hood-part-8-blocks-2-5fba93293213)| Blk-1 |
  |BlkChn-1|[Blchain-0](https://derao.medium.com/ethereum-under-the-hood-part-7-blocks-c8a5f57cc356)| Blk-0 |
  |Keccak  |[Keccak](https://derao.medium.com/ethereum-under-the-hood-part-6-hashing-6abafa318bc6)| Hash  |
  |Fortnite|[Fortnite](https://derao.medium.com/ethereum-under-the-hood-part-5-fortniting-ethereum-4f0851f22673)| Game  |
  |Trie-Dat|[Trie](https://derao.medium.com/ethereum-under-the-hood-part-4-the-trie-fc029e25ed04)| Trie  |
  |RLP-D   |[RLP-d](https://derao.medium.com/ethereum-under-the-hood-part-3-rlp-decoding-df236dc13e58)| RLP-d |
  |RLP-E   |[RLP-e](https://derao.medium.com/ethereum-under-the-hood-part-2-rlp-encoding-ver-0-3-c37a69781855)| RLP-e |
  |VM      |[ETH](https://derao.medium.com/ethereum-under-the-hood-part-1-ver-0-4-7ac9ccbfd0f6)| ETH   |
  
  
  
 # Directory Structure
  ```bash
  .
    ├── crypto.ex
    ├── block.ex
    ├── blockchain.ex
    ├── cryp.ex
    ├── elixir_rlp
    │   ├── decode.ex
    │   └── encode.ex
    ├── key_value.ex
    ├── pow.ex
    ├── transaction.ex
    ├── trie.ex
    ├── wallet.ex

  ``` 

# Toy Blockchain

```elixir
 
iex(2)> Blockchain.init("a")
[
  [
    "3F79BB7B435B05321651DAEFD374CDC681DC06FAA65E374E38337B88CA046DEA",
    %{
      address_from: "232565FA051713BC8C67E58",
      address_to: "232565FA051713BC8C67E59",
      data: "[{k0,v0},{k1,v1},...,{Kn,Vn}]",
      hash: "242565FA051713BC8C67E58A38A34EBDE4B98AE2F168EFBA0A4BD16400E00CF",
      meta: "MASS65*",
      prev_hash: "232565FA051713BC8C67E58A38A34EBDE4B98AE2F168EFBA0A4BD16400E00CF3",
      timestamp: ~U[2020-10-04 20:06:25.236654Z]
    }
  ]
]

```

# TODO's
- [x] Genesis
- [x] BlockHeader
- [x] Construct a Block
- [ ] Form a Blockchain
- [ ] Construct a Wallet,Address
- [ ] Construct Transaction 
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

# Managing this project using Github
 I assume that you have gone through the series in its enterity. Notice the version on this section(v1.0) **"Transactions"** is a huge topic and hence needs multiple updates. 
  
# Live Progress on Github and Medium

  This article is being published in both Medium and in gitub. I propose a way to automate technical {publishing + coding} together. Authoring of the stories will be done using Github's Gist and on Medium

                   Github
    +--------+   +-------+    +-------+
    |        | --+ act   +--> |       |
    | MrkDwn |   +-------+    | Dploy |
    | SrcCode|   | plgins|    |       |
    |        |   |   !   |    |       |
    +---+----+   +-------+    +-------+
        :                         ^
        |                         |
        +-------------------------+

 

  # Why?

  For this chapter and the next two we will be trying a live way of publishing and coding at the same time. Please be patient with me while I am trying to Automate technical blogging.


  # External libraries[Elixir]
  ```
      {:dependency, "~> 0.2.0", override: true},    
      #{:exmoji, "~> 0.2.0"},
      {:poison, "~> 4.0"},
      {:retrieval, "~> 0.9.1"},
      {:cubdb, "~> 0.17.0"}

  ```

 
  ## Installation
  If [available in Hex](https://hex.pm/docs/publish), the package can be installed
  by adding `elixir_blocks` to your list of dependencies in `mix.exs`:

  ```elixir
  
  def deps do
    [
      {:elixir_blocks, "~> 0.1.0"}
    ]
  end
  
  ```

# References
https://deepakraous.github.io/elixir_blocks/
![link](https://github.com/aitoroses/elixir-kv)
