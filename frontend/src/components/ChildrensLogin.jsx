import { useState } from "react";
import Button from "muicss/lib/react/button";

export default function Login(props) {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");

  const onSubmit = function (event) {
    event.preventDefault();
    email && props.login(email, password);
  };

  return (
    <main className="container">
      <article className="frame-login">
        <div>
          <p class="title">Welcome to Paykids!</p>
          <div className="row">
            <div className="small-5 small-offset-1 columns ">
              <div className="callout credit">
                <div className="row">
                  <div className="small-6 columns">
                    <h1 className="credit__bank"></h1>
                  </div>
                </div>
                <div className="row">
                  <div className="column">
                    <p className="credit__card-number">
                      {"E-Wallet for Kids!"}
                    </p>
                  </div>
                  <div className="small-9 columns"></div>
                  <div className="small-3 columns"></div>
                </div>
              </div>
            </div>
          </div>
          <div className="login">
            <form onSubmit={onSubmit}>
              <p>
                <input
                  type="text"
                  name="username"
                  value={email}
                  placeholder="Enter username or email"
                  onChange={(event) => setEmail(event.target.value)}
                />
              </p>
              <p>
                <input
                  type="password"
                  name="password"
                  value={password}
                  placeholder="Password"
                  onChange={(event) => setPassword(event.target.value)}
                />
              </p>
              <p className="submit">
                <Button className="button-login" type="submit" name="commit">
                  Login
                </Button>
              </p>
            </form>
          </div>
        </div>
      </article>
    </main>
  );
}
