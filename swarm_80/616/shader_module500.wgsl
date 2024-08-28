struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: Struct_1;

var<private> global2: array<vec3<i32>, 10> = array<vec3<i32>, 10>(vec3<i32>(-17578i, 1i, 1i), vec3<i32>(64583i, -2605i, -29751i), vec3<i32>(-34658i, -1i, 2147483647i), vec3<i32>(0i, 2147483647i, -1i), vec3<i32>(-12612i, 24999i, 11537i), vec3<i32>(71926i, 1i, 1i), vec3<i32>(36155i, -13785i, 1i), vec3<i32>(2147483647i, 17340i, i32(-2147483648)), vec3<i32>(-1i, -1i, -1i), vec3<i32>(i32(-2147483648), 38070i, -60508i));

var<private> global3: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(-673f, -661f, 1420f), vec3<f32>(-825f, 1275f, 330f), vec3<f32>(-1000f, 2127f, -1148f), vec3<f32>(148f, 2308f, -1094f), vec3<f32>(170f, -619f, 1653f), vec3<f32>(-249f, 741f, 191f), vec3<f32>(-798f, 330f, -362f), vec3<f32>(1000f, 1248f, 1000f), vec3<f32>(843f, 616f, -1000f), vec3<f32>(256f, -834f, 198f), vec3<f32>(-189f, 1851f, 1083f), vec3<f32>(292f, -363f, -1247f), vec3<f32>(1053f, -348f, 387f), vec3<f32>(902f, -120f, -879f), vec3<f32>(1238f, -1689f, -765f), vec3<f32>(402f, -1436f, 225f), vec3<f32>(101f, 2160f, 556f), vec3<f32>(1447f, 1220f, 632f), vec3<f32>(399f, 511f, -479f), vec3<f32>(621f, -538f, -645f), vec3<f32>(513f, 279f, 683f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<f32>, 21>();
    let var_0 = !(!any(vec2<bool>(true, all(global1.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -599f));
}

