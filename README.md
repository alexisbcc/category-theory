# category-theory
## Category

A category has Objects and arrows that go from one object to another.

### Properties of a category

- Abstraction: Forget the implementation details and threat them as equal.

- Composition: `(h o g) o f = h o (g o f)`

a ------> b -----> c -----> d        a ------------------------> d
    f         g        h                       h o g o f

- Identity: An object has a morphism that maps to itself

Arrows(Morphism): is a path from an object `a` to another `b`. Where objects are names for end of arrows.

a ------> b
    f

### Functions  

Mathematical function that for an element of the domain only corresponds a single element of the codomain, but for a codomain element there are multiple correponding elements in the domain.

Domain ------ Codomain

#### Isomorphism

A morphism that can be inverted, eg:

a ------> b ------> a   `f :: a -> b`    `g :: b -> a`    `f o g = `<code>id<sub>a</sub></code> `g o f = `<code>id<sub>b</sub></code>
    f          g  

Injective (Monomorphism): The elements from Codomain has at max a single image (`f`) element from the Domain. No shrinking colapsing.

![image](https://github.com/user-attachments/assets/08990457-a035-461e-b0c8-23b96d77ae7b)

Surjective (Epimorphism): Every element from the Codomain has at least one image from the Domain.

![image](https://github.com/user-attachments/assets/5f1a6a76-ac7c-4d76-a1b0-341134d18361)


Bijective (Isomorphism): Injective and Surjective at the same time, it means 1:1 relationship.

![image](https://github.com/user-attachments/assets/efcc001f-8c61-441b-b99d-049621308c89)

