struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_3,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

var<private> global1: array<vec2<bool>, 25> = array<vec2<bool>, 25>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global2: array<vec4<i32>, 12> = array<vec4<i32>, 12>(vec4<i32>(-1i, -80207i, -18603i, -36800i), vec4<i32>(16531i, 1i, 36740i, 2147483647i), vec4<i32>(-15407i, 2147483647i, 2548i, 1i), vec4<i32>(32598i, 2147483647i, 1i, -11920i), vec4<i32>(-1i, -52653i, -1i, 13113i), vec4<i32>(-18667i, -31338i, 1i, 2147483647i), vec4<i32>(44084i, 48326i, -35524i, -3625i), vec4<i32>(2147483647i, 22808i, 79869i, 11529i), vec4<i32>(21828i, 19771i, 48914i, 1i), vec4<i32>(-34686i, -14686i, 2147483647i, -18553i), vec4<i32>(-1i, 1i, 48830i, 11783i), vec4<i32>(i32(-2147483648), 1i, -19527i, 31448i));

var<private> global3: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec2<u32>(0u, 8154u), 25718i, false, -397f), Struct_1(vec2<u32>(1u, 4294967295u), i32(-2147483648), true, 699f), Struct_1(vec2<u32>(28242u, 0u), 31385i, false, -848f), Struct_1(vec2<u32>(0u, 155958u), 1i, true, 1560f), Struct_1(vec2<u32>(20692u, 31493u), 6322i, true, -340f), Struct_1(vec2<u32>(42221u, 0u), 19345i, true, 547f), Struct_1(vec2<u32>(12127u, 12159u), -50905i, true, 665f), Struct_1(vec2<u32>(0u, 5270u), i32(-2147483648), true, -561f), Struct_1(vec2<u32>(1u, 4294967295u), 2147483647i, false, -1000f), Struct_1(vec2<u32>(1u, 49377u), i32(-2147483648), true, 775f), Struct_1(vec2<u32>(76886u, 1u), -6676i, true, 1133f));

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~36425u);
    let var_1 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~u_input.b)));
}

