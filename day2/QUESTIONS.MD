1. Ledger canister is controlled by `r7inp-6aaaa-aaaaa-aaabq-cai` which is controlled by the dfinity foundation.
2. `mwrha-maaaa-aaaab-qabqq-cai` is canister of Motoko Playground on subnet is `pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe` with 16 nodes.
3. Amount: 10 ICP
Delay bonus: 1.5
Age bonus: 1 + 0.25 * 2 / 4 = 1.125
Total = 10 * 1.5 * 1.125 = 16.875
4. Missing importing Nat module `import Nat "mo:base/Nat";`
5. The array is `languages` mutable but you can't share a mutable array.
Fix it by either making the array non-mutable

```
actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [Text] {
    return languages
  };
};
```

or make the array mutable by adding `var` in the initialization and properly return in the function

```
import Array "mo:base/Array";
actor {
  var languages : [var Text] = [var "English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [Text] {
    return (Array.freeze(languages));
  };
 
}
```

6. Missing importing the Array module to be able to use the `append` function.