
**Elemental Blockchain in Elixir**

  Welcome , COVID-19 is still around, please stay safe,informed and gentle with yourself. Take a deep breath, the Mission is for the next 3 stories is to write few lines of code as possible and compose the stories using ***recursive state compostion technique**, specifically creating a simple computational FlexCapacitor! State Machine!!. which we refer to as our MVP(Minimal Viable Product).
 
I plan to use existing code snippets as a baseline for from our storyline. Please feel free to fork your own path for 
***stories [ 9,10,11]*** -12,13 where we will be gluing to conclude this series in 13. 

***Elixir*** is the language of choice along with ***OTP(Open Transport(e) Protocol)***. We will use a simple { key, value } local db to store [key:valu\. To speed up delivery time I  I am planning to use external libraries as I see fit. Please poke around @ the External Libraries in **mix.exs**,last but not the least I am trying to follow **DRY**(Don't Repeat Yourself). so let us keep the chatter in the low, finally we will recap,redo,refine and show off our fruit of Labour as ***MVP0.0090.001***. 

**Note***: **This is a personal Blog of mine and does not reflect the opinions of my current employer.**

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
  
  # Transactions in Ethereum (v1.0)

  This section assumes that you have gone through the series in its enterity. Notice the version on this section(v1.0) **"Transactions"** is a huge topic and hence needs multiple updates. 
  
  
  # Transactions[4.2 Yellow Paper] Symbol-table
  |Symbol  |Type| Description                                |
  |--------|----|--------------------------------------------|
  |Nonce   |[0] | Nonce is the base unit of Ethereum Crypto  |
  |GasPrice|[1] | GP is the price one has to pay for a Txn   |
  |GasLimit|[2] | GL is the max price set for the above Txn  |
  |To      |[3] | Address of the reciepent of the Eth Txn    |
  |Value   |[4] | The value of this Txn in Wie               |
  |v,r,s   |[5] | v,r,s are txns with diff signatures        |

***********************Transaction*****************************
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
TBD Fillers section assumes that you have gone through the series in its enterity. Notice the version on this section(v1.0) **"Transactions"** is a huge topic and hence needs multiple updates. 
  
# Live Progress on Github and Medium

  This article is being published in both Medium and in gitub([ {Manual+Auto},{x},xx,n] ] ). I propose to 
  a way to automate technical {publishing + coding} together. Authoring of the stories will be done using Github's Gist.

                   Github
    +--------+   +-------+    +-------+
    |        | --+ act   +--> |       |
    | MrkDwn |   +-------+    | Dploy |
    |        |   | plgins|    |       |
    |        |   |   !   |    |       |
    +---+----+   +-------+    +-------+
        :                         ^
        |          Terraform      |
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
  8. Build sourcestream
  9. Push step:8 -> Quay.io
  10. Run all unit tests
  11. Update unit test status in Readme.md
  12. Goto Step 1
  
  # UseCase:Exceptions
  1. Save State[0,1,2,3,4,...,n]
  2. Audit State[0,1,2,3,4,...,n]
  3. Send Notification*[Cat:0,Cat:1,Cat:2,Cat:3,x:n]
  4. Generate Docs[Readme.md]
  5. Send Issue to Github^[if error]
  6. Fix Issue mentioned in step above[5]
  7. Repeat Step[1,n]
  
  *Notification:Research
  ^Github:Research
  
  # MVP0.090.01["WOLF"]
  (transaction) (data) (blockchain) (processing server) (processing) before:priority:20151105
  Above format State definition, share Sims to US.
  
  #  Rule Definition[In Progress]
  1. BR_0_0_0: Exception Code Should have Instrumentation@
  2. Audit State
  3. Send Notification*
  4. Generate Docs
  5. Send Issue to Github*
  6. Fix Issue mentioned in step above[5]
  7. Repeat Step[1,n]
 
  # Minimal Viable Product( WE )
  1. Fix Local build issues
  2. Emulate all steps for "Happy Path"
  3. Push code to Github 
  4. Form Team( Max: 4 - 6 ) 
  4. Demo Date+Hackacthon 
  5. **No PPT warriors**
  6. No Judging needed.
  7. We Push+Show
  8. Pick a lead to Prepare Iconic Slides
  9. All Slides should be in github
  10.Best Team Wins a Suprise
  12.Time Hallooooweeen
  
  # SharpTooling( Emulators )
  1. For workflow 2: ![Github](https://github.com/vgaidarji/android-github-actions-emulator)
  2. Emulate all steps mentioned in workflow
  3. Push code to Github
  4. On Push Auto Unit test
  5. Status on Github
  
  # Github Action( Option:1 )
  ![Github Actions](https://github.githubassets.com/images/modules/site/features/actions-workflow.svg)

  # Github Best Practices
  1. ![link](https://www.datree.io/resources/github-best-practices)
  2. xxxx
  3. yyyy
  
  # Docker Alternatives( Option:2 ) ?????
  1. Docker to test github actions?

  # External libraries[Elixir]
  ```
    {:poison, "~> 4.0"},
    {:retrieval, "~> 0.9.1"},
    {:cubdb, "~> 0.17.0"},
    {:qr_code, "~> 2.1.0"}

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
