struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<i32>(29314i, i32(-2147483648))), Struct_1(vec2<i32>(2147483647i, 0i)), Struct_1(vec2<i32>(47924i, 37731i)), Struct_1(vec2<i32>(13330i, i32(-2147483648))), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(vec2<i32>(13019i, 2147483647i)), Struct_1(vec2<i32>(1i, -6387i)), Struct_1(vec2<i32>(-5589i, -48067i)), Struct_1(vec2<i32>(-6842i, -205i)), Struct_1(vec2<i32>(15464i, 1i)), Struct_1(vec2<i32>(-1i, 22186i)), Struct_1(vec2<i32>(-1i, 1i)), Struct_1(vec2<i32>(7226i, -1i)), Struct_1(vec2<i32>(-1i, -1i)), Struct_1(vec2<i32>(-27221i, -42542i)), Struct_1(vec2<i32>(-19296i, -19933i)), Struct_1(vec2<i32>(-40104i, 68687i)), Struct_1(vec2<i32>(1i, 6563i)), Struct_1(vec2<i32>(1635i, 1i)), Struct_1(vec2<i32>(-18485i, 2147483647i)), Struct_1(vec2<i32>(16966i, -1i)), Struct_1(vec2<i32>(394i, -5539i)), Struct_1(vec2<i32>(0i, 2147483647i)), Struct_1(vec2<i32>(-54516i, 25582i)), Struct_1(vec2<i32>(i32(-2147483648), 1i)), Struct_1(vec2<i32>(-11209i, 0i)));

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<i32>(1i, -1i)), Struct_1(vec2<i32>(28413i, 0i)), Struct_1(vec2<i32>(-29855i, 2537i)), Struct_1(vec2<i32>(1i, 27942i)), Struct_1(vec2<i32>(-13401i, -1i)), Struct_1(vec2<i32>(2147483647i, 0i)), Struct_1(vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec2<i32>(-1i, -17364i)), Struct_1(vec2<i32>(11382i, 22401i)), Struct_1(vec2<i32>(1i, -34676i)), Struct_1(vec2<i32>(-1i, 74464i)), Struct_1(vec2<i32>(1i, 0i)), Struct_1(vec2<i32>(i32(-2147483648), -49220i)), Struct_1(vec2<i32>(-1i, -44984i)), Struct_1(vec2<i32>(5351i, 1i)), Struct_1(vec2<i32>(1i, 2147483647i)), Struct_1(vec2<i32>(0i, -11314i)), Struct_1(vec2<i32>(37323i, 14215i)), Struct_1(vec2<i32>(-2820i, i32(-2147483648))), Struct_1(vec2<i32>(-1i, 1i)), Struct_1(vec2<i32>(-1658i, -1i)), Struct_1(vec2<i32>(-1i, -1i)), Struct_1(vec2<i32>(i32(-2147483648), -1092i)), Struct_1(vec2<i32>(-12790i, 1i)), Struct_1(vec2<i32>(2147483647i, 61063i)), Struct_1(vec2<i32>(1i, 21224i)), Struct_1(vec2<i32>(0i, 2147483647i)), Struct_1(vec2<i32>(61009i, 0i)), Struct_1(vec2<i32>(2147483647i, 34732i)), Struct_1(vec2<i32>(-43928i, -8011i)), Struct_1(vec2<i32>(-1i, -31088i)));

var<private> global3: Struct_1;

var<private> global4: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec2<i32>(-1i, -20608i)), Struct_1(vec2<i32>(0i, 0i)), Struct_1(vec2<i32>(-16535i, 4564i)), Struct_1(vec2<i32>(-19645i, -1192i)), Struct_1(vec2<i32>(-56782i, 56i)), Struct_1(vec2<i32>(66649i, 0i)), Struct_1(vec2<i32>(0i, 18831i)), Struct_1(vec2<i32>(1i, -10585i)), Struct_1(vec2<i32>(2147483647i, 2147483647i)), Struct_1(vec2<i32>(-15756i, -1i)), Struct_1(vec2<i32>(2147483647i, 0i)), Struct_1(vec2<i32>(-74014i, 49465i)), Struct_1(vec2<i32>(-38861i, -22576i)), Struct_1(vec2<i32>(40821i, 5458i)), Struct_1(vec2<i32>(2147483647i, 2147483647i)), Struct_1(vec2<i32>(0i, -1i)), Struct_1(vec2<i32>(-26019i, -43532i)), Struct_1(vec2<i32>(2147483647i, 4891i)), Struct_1(vec2<i32>(2147483647i, 9793i)), Struct_1(vec2<i32>(0i, 23805i)), Struct_1(vec2<i32>(29621i, 0i)), Struct_1(vec2<i32>(-33533i, 2147483647i)), Struct_1(vec2<i32>(23858i, 43189i)), Struct_1(vec2<i32>(49236i, 20450i)), Struct_1(vec2<i32>(-1i, 62131i)), Struct_1(vec2<i32>(-1i, -13534i)), Struct_1(vec2<i32>(-1i, 0i)));

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x & max(~u_input.a.x & (u_input.a.x ^ u_input.a.x), 38725u));
}

