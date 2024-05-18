# plop-create-remix-route

A [`plop`](https://plopjs.com/) generator for routes of [`Remix`](https://remix.run/docs/en/main/file-conventions/routes).
The package was developed to simplify the generation of the `route component` of the [`Folders for Organization`](https://remix.run/docs/en/main/file-conventions/routes#folders-for-organization) configuration in [`Remix`](https://remix.run/docs/en/main/file-conventions/routes)

# Installation

This package is hosted on [`npm`](https://www.npmjs.com/package/@soartec-lab/plop-create-remix-route).

```bash
npm install --save-dev @soartec-lab/plop-create-remix-route
```

If you haven't installed [`plop`](https://plopjs.com/) yet, please install it together.

```bash
npm install --save-dev plop
```

# Usage

First, load it in the [`plop`](https://plopjs.com/) file. Update `plopfile.js` as follows:

```diff:plopfile.js
export default async function (plop) {
+	await plop.load("@soartec-lab/plop-create-remix-route");
}
```

Now you are ready. Let's start the command.

```bash
$ npx plop create-remix-route-component

? Which type of component do you want to create? route from URL path
? What is the URL path?

  ex)

  | URL you need to input | route file path    | create component name |
  |-----------------------|--------------------|-----------------------|
  | /users                | users._index       | UsersRoute            |
  | /users/posts          | users.posts._index | UsersPostsRoute       |
  | users/:id             | users.$id          | UserRoute             |

  ? users/:id/posts/:id
✔  ++ /app/routes/users.$id.posts.$id/route.tsx
✔  ++ /app/routes/users.$id.posts.$id/route.test.tsx
```

Here, by selecting `route from URL path` as the `component type` to create and entering `users/:id/posts/:id`, we generate a `route component` that matches the `URL`.

## Types of Components that Can Be Created

The `component type` that can be individually created are as follows:

### route from URL path

If you want to create a `route component` from a `URL` path, select this type.
For example, if you enter `users/:id/posts/:id`, the following files will be created:

- app/routes/users.$id.posts.$id/route.tsx
- app/routes/users.$id.posts.$id/route.test.tsx

### route from file path

If you want to create a `route component` by specifying a file path, select this type.
For example, if you enter `users._index`, the following files will be created:

- app/routes/users._index/route.tsx
- app/routes/users._index/route.test.tsx

### feature

If you want to create a `feature component` instead of a `route component`, select this type.
For example, if you choose `users._index/user-list`, the following files will be created:

- app/routes/users._index/user-list.tsx
- app/routes/users._index/user-list.test.tsx

# Motivation

While routes of [`Remix`](https://remix.run/docs/en/main/file-conventions/routes) is flexible and consistent, I find the catch-up cost high. [`Folders for Organization`](https://remix.run/docs/en/main/file-conventions/routes#folders-for-organization) is one of the aspects.
By using this library, you can create components more intuitively.

# Questions

If you have any issues or ideas for feature additions, please create an issue or mention [`me`](https://twitter.com/SoartecL) on `X`. Feedback is welcome.
