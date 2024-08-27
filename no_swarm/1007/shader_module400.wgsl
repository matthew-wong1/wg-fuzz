struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
    c: vec3<bool>,
    d: i32,
}

struct Struct_5 {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(true, false, true, true, true, false, true, false, true, true, false, false, false);

var<private> global1: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(4294967295u, 0u), vec2<u32>(9659u, 9279u), vec2<u32>(4294967295u, 0u), vec2<u32>(4184u, 1u), vec2<u32>(0u, 11617u), vec2<u32>(4294967295u, 3584u), vec2<u32>(0u, 1u), vec2<u32>(50223u, 0u), vec2<u32>(4294967295u, 3123u), vec2<u32>(48937u, 24951u), vec2<u32>(0u, 4294967295u), vec2<u32>(37943u, 14118u), vec2<u32>(19286u, 22484u), vec2<u32>(63545u, 44762u), vec2<u32>(16516u, 4294967295u), vec2<u32>(1u, 12630u), vec2<u32>(4294967295u, 46417u), vec2<u32>(4294967295u, 18528u), vec2<u32>(0u, 0u), vec2<u32>(45552u, 1u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 68200u), vec2<u32>(1u, 45898u), vec2<u32>(1u, 88922u), vec2<u32>(53985u, 12648u), vec2<u32>(12534u, 5089u), vec2<u32>(51724u, 31571u), vec2<u32>(34549u, 4294967295u), vec2<u32>(55845u, 4294967295u));

var<private> global2: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(7164i, 29120i, -59986i, -1i), vec4<i32>(i32(-2147483648), 14123i, 59337i, -23003i), vec4<i32>(-11682i, 2147483647i, 9868i, -32656i), vec4<i32>(-1i, -1i, 45411i, -11256i), vec4<i32>(1i, 2147483647i, i32(-2147483648), 21397i), vec4<i32>(-11953i, 2147483647i, -8226i, i32(-2147483648)), vec4<i32>(-15132i, 2147483647i, 8112i, 0i), vec4<i32>(27456i, 35667i, 1i, 12971i), vec4<i32>(2147483647i, -1i, 44410i, -36857i), vec4<i32>(-21864i, -26825i, -38539i, -1i), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 2147483647i), vec4<i32>(1i, -9813i, 2147483647i, 0i), vec4<i32>(58947i, -1i, 5046i, 2147483647i), vec4<i32>(-18331i, -31617i, -43304i, 0i), vec4<i32>(2147483647i, -1i, 1i, -1i), vec4<i32>(-1i, 15213i, -35713i, -1i), vec4<i32>(24053i, 4162i, -1i, -378i), vec4<i32>(2147483647i, -14845i, -1i, 24660i), vec4<i32>(0i, 0i, 0i, -1i), vec4<i32>(0i, 5858i, -1i, -4535i), vec4<i32>(1i, 1i, -17568i, -1i), vec4<i32>(1i, 8027i, -31835i, -1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(1000f, u_input.b, _wgslsmith_dot_vec3_i32(abs(~vec3<i32>(-13175i, -18152i, -2147483647i)), vec3<i32>(-1i) * -(u_input.a.wxx ^ u_input.a.zyz)), vec2<f32>(-834f, _wgslsmith_f_op_f32(1373f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1055f), _wgslsmith_f_op_f32(-1214f * -1121f))))));
}

