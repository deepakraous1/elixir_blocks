![](https://github.com/deepakraous/elixir_blocks/blob/master/assets/image/key.png?raw-true)

**Elemental Blockchain in Elixir**

Welcome , COVID-19 is still around, please stay safe,informed and gentle with yourself. Take a deep breath, the Mission is for the next 3 stories is to write few lines of code as possible and compose the stories using ***recursive state composition technique**, specifically creating to create simple State Machine!!. which we refer to as our MVP(Minimal Viable Product).
 
I plan to use existing code snippets as a baseline for from our storyline. Please feel free to fork your own path for 
***stories [ 9,10,11]*** -12,13 where we will be gluing to conclude this series in 13. for Tranasctions. 

***Elixir*** is the language of choice along with ***OTP(Open Transport(e) Protocol)***. We will use a simple { key, value } local db to store key:value. To speed up delivery time I  I am planning to use external libraries as I see fit. Please poke around @ the External Libraries in **mix.exs**,last but not the least I am trying to follow **DRY**(Don't Repeat Yourself). so let us keep the chatter in the low, finally we will recap,redo,refine. 

**Note***: **This is a personal Blog of mine and does not reflect the opinions of my current employer.**

# Transactions in Ethereum 

  **"Transactions"** is important and needs multiple chapters [9,10,11]. Chapter 9 we cover the Transaction fields[0-4]. Ethereum yellow paper defines Transaction(T) as Trie data strcuture.   
  

  # Transactions[4.2 Yellow Paper] Symbol-table
  |Symbol  |Type| Description                                |
  |--------|----|--------------------------------------------|
  |Nonce   |[0] | Number of sent txn by sender               |
  |GasPrice|[1] | GP is the price has to pay for a Txn       |
  |GasLimit|[2] | GL is the max price set for the above Txn  |
  |To      |[3] | Address of the reciepent of the Eth Txn    |
  |Value   |[4] | The value of this Txn in Wie               |
  |v,r,s   |[5] | Signature of the Txn (Id of sndr)          |
  |data    |[6] | An byte array of data.                     |
  |init*    |[7] | returns the body of code fragment*         |

  *init: tbd
 
v,r,s fields represents cryptographical signed trancastion fields by which public transaction information can be deciphered. Lets take a look at the definition below

```bash
 
(279) ECDSAPUBKEY(pr ∈ B32) ≡ pu ∈ B64
(280) ECDSASIGN(e ∈ B32, pr ∈ B32) ≡ (v ∈ B1, r ∈ B32, s ∈ B32)
(281) ECDSARECOVER(e ∈ B32, v ∈ B1, r ∈ B32, s ∈ B32) ≡ pu ∈ B64

```
  
 

![image](https://github.com/deepakraous/elixir_blocks/blob/master/assets/image/txn.png?raw-true)




  |Concept |Chp| Topic |
  |--------|---|-------|
  |ToyBlock|[ToyBlkchain](https://medium.com/@derao512/ethereum-under-the-hood-part-9-transactions-3ead47725a8f)| ToyBlk|
  |BlkChn-2|[Blkchain-1](https://medium.com/@derao512/ethereum-under-the-hood-part-8-blocks-2-8941d88014c0)  | Blk-1 |
  |BlkChn-1|[Blchain-0](https://medium.com/@derao512/ethereum-under-the-hood-part-7-blocks-7f223510ba10)| Blk-0 |
  |Keccak  |[Keccak](https://medium.com/@derao512/ethereum-under-the-hood-part-6-hashing-31077c7659ca)| Hash  |
  |Fortnite|[Fortnite](https://medium.com/coinmonks/ethereum-under-the-hood-part-5-fortniting-ethereum-eaf314c970c8)| Game  |
  |Trie-Dat|[Trie](https://medium.com/coinmonks/ethereum-under-the-hood-part-4-the-trie-a3f71f8dbef8)| Trie  |
  |RLP-D   |[RLP-d](https://medium.com/coinmonks/ethereum-under-the-hood-part-3-rlp-decoding-c0c07f5c0714)| RLP-d |
  |RLP-E   |[RLP-e](https://medium.com/coinmonks/ethereum-under-the-hood-part-ii-i-933411deebe1)| RLP-e |
  |VM      |[ETH](https://medium.com/coinmonks/ethereum-under-the-hood-part-i-ver-0-1-4f2fb24b3d68)| ETH   |
  
  
 # Directory 
  ```bash
  .
    ├── crypto.ex
    ├── elixir_blocks.ex
    ├── elixir_rlp
    │   ├── decode.ex
    │   └── encode.ex
    ├── key_value.ex
    ├── blck_node.ex
    ├── recurser.ex
    ├── transaction.ex
    ├── trie.ex
    └── wallet.ex

  ``` 


```elixir
iex(2)> Block.init("a")
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

 [9-Toy Blockchain](https://medium.com/@derao512/ethereum-under-the-hood-part-9-transactions-3ead47725a8f)

  # Why?

  For this chapter and the next two we will be trying a live way of publishing and coding at the same time. Please be patient with me while I am trying to Automate technical blogging to the max.

# UseCase:Main Flow in using Github
  1. Push source code to Github
  2. Step 1 triggers Github Actions
  3. Github Actions is a part of Github workflow
  4. Generate Docs 
  5. Build status in Readme.md
  6. Update Gists
  7. Auto Publish
  8. Run tests
  9. Update unit test status in Readme.md
  10. Goto Step 1

  # SharpTooling( Emulators )
  1. For workflow 2: ![Github](https://github.com/vgaidarji/android-github-actions-emulator)
  2. Emulate all steps mentioned in workflow
  3. Push code to Github
  4. On Push Auto Unit test
  5. Status on Github
  6. Repl.it integ
  
  
  # Github Action( Option:1 )
  ![Github Actions](https://github.githubassets.com/images/modules/site/features/actions-workflow.svg)

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

  #Symbols sample( In Progress... )
  
  |Symbol  |Type| Description |
  |--------|----|-------------|
  |+       |[10] | Add.       |
  |0       |[9] | Null        |
  |1       |[8] | A Value     |
  |f       |[7] | A Function  |
  |g       |[6] | Genesis     |
  |c       |[5] | Compose     |
  |a       |[4] | Ariety      |
  |x       |[3] | para-0      |
  |y       |[2] | para-1      |
  |z       |[1] | para-2      |
  |a1      |[0] | para-3      |
# References
https://deepakraous.github.io/elixir_blocks/
![link](https://github.com/aitoroses/elixir-kv)


