if [[ ! -d './emscripten-terminal' ]]; then
    # Terminal application
    git clone https://github.com/madhmanoj/emscripten-terminal
    cd emscripten-terminal
    npm install
    cd ..
fi

if [[ ! -d './emscripten' ]]; then
    # Emscripten fork implementing custom wasmfs backend for file system api (for local files and folders)
    git clone https://github.com/madhmanoj/emscripten
    cd emscripten
    git switch feature/wasmfs-custom-backend
    cp ../.emscripten ./
    bootstrap
    cd ..
fi

cd emscripten-terminal
npm run dev