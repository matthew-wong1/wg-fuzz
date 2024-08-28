struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(59365u, 34648u, 0u, 26674u), vec4<u32>(4278u, 29989u, 37888u, 1u), vec4<u32>(26526u, 72407u, 0u, 17879u), vec4<u32>(4294967295u, 0u, 36824u, 21368u), vec4<u32>(39386u, 45349u, 0u, 13821u), vec4<u32>(22516u, 9960u, 64776u, 3254u), vec4<u32>(0u, 1u, 24481u, 1u), vec4<u32>(1u, 49165u, 1u, 4294967295u), vec4<u32>(6549u, 0u, 76526u, 4294967295u), vec4<u32>(99u, 33620u, 1u, 4294967295u), vec4<u32>(53712u, 16686u, 4294967295u, 41882u), vec4<u32>(1u, 16899u, 6333u, 0u), vec4<u32>(0u, 101566u, 0u, 0u), vec4<u32>(91276u, 1u, 4294967295u, 100362u), vec4<u32>(21102u, 4294967295u, 1u, 0u), vec4<u32>(0u, 1u, 0u, 42437u), vec4<u32>(4294967295u, 51480u, 2342u, 4294967295u), vec4<u32>(67944u, 25945u, 9412u, 1u), vec4<u32>(0u, 4294967295u, 269u, 0u), vec4<u32>(4294967295u, 79079u, 1u, 4294967295u), vec4<u32>(15703u, 15503u, 1u, 1u), vec4<u32>(4294967295u, 4294967295u, 0u, 50456u), vec4<u32>(4294967295u, 1465u, 88802u, 0u), vec4<u32>(111656u, 4294967295u, 0u, 19329u));

var<private> global1: array<f32, 27> = array<f32, 27>(-575f, -944f, 711f, 1285f, -2507f, 124f, -2058f, -572f, 973f, -3654f, -1145f, -1114f, -345f, 965f, -1725f, 225f, 693f, 439f, 352f, 1000f, -1019f, 561f, 572f, 1000f, -281f, 533f, -675f);

var<private> global2: Struct_2 = Struct_2(vec3<i32>(0i, 0i, 0i), Struct_1(1214f, vec2<f32>(-1550f, 468f)), vec4<i32>(i32(-2147483648), -25855i, 1i, i32(-2147483648)), Struct_1(-805f, vec2<f32>(-468f, -2173f)));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1() -> Struct_1 {
    global1 = array<f32, 27>();
    let var_0 = ~u_input.b.x;
    global0 = array<vec4<u32>, 24>();
    let var_1 = global2.d;
    global0 = array<vec4<u32>, 24>();
    return global2.d;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 27>();
    let var_0 = -960f;
    global1 = array<f32, 27>();
    let var_1 = u_input.e;
    let var_2 = ~(~countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(64799u, u_input.c, u_input.b.x), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 33639u), u_input.b.zyy))));
    var var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(max(global2.c, global2.c));
}

