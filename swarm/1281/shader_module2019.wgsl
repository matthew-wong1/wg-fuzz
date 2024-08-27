struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(vec4<u32>(1u, 0u, 1u, 18870u))), Struct_2(Struct_1(vec4<u32>(26388u, 4294967295u, 39371u, 0u))), Struct_2(Struct_1(vec4<u32>(1u, 13611u, 102362u, 102480u))), Struct_2(Struct_1(vec4<u32>(24894u, 0u, 62583u, 23079u))), Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 42042u, 54629u))), Struct_2(Struct_1(vec4<u32>(0u, 15987u, 1u, 74075u))), Struct_2(Struct_1(vec4<u32>(22277u, 0u, 0u, 0u))), Struct_2(Struct_1(vec4<u32>(0u, 0u, 4294967295u, 4294967295u))), Struct_2(Struct_1(vec4<u32>(24302u, 0u, 27585u, 4294967295u))), Struct_2(Struct_1(vec4<u32>(20708u, 1u, 1u, 25738u))), Struct_2(Struct_1(vec4<u32>(0u, 32395u, 23381u, 1u))), Struct_2(Struct_1(vec4<u32>(5134u, 4294967295u, 0u, 0u))), Struct_2(Struct_1(vec4<u32>(18162u, 0u, 1u, 0u))), Struct_2(Struct_1(vec4<u32>(25435u, 43610u, 0u, 1u))), Struct_2(Struct_1(vec4<u32>(72959u, 4294967295u, 32612u, 59003u))), Struct_2(Struct_1(vec4<u32>(4294967295u, 20566u, 10431u, 0u))), Struct_2(Struct_1(vec4<u32>(48456u, 46100u, 4294967295u, 4294967295u))), Struct_2(Struct_1(vec4<u32>(9243u, 24668u, 14862u, 28815u))), Struct_2(Struct_1(vec4<u32>(1u, 1u, 1u, 66915u))), Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 26693u, 1u))));

var<private> global2: array<vec3<bool>, 23>;

var<private> global3: array<f32, 19> = array<f32, 19>(1515f, 990f, 896f, 1166f, -508f, 1077f, 1308f, -696f, -1369f, -122f, 857f, 256f, 664f, -260f, 488f, -444f, -1051f, -198f, -1197f);

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(27031i, -9114i))) << (~1u % 32u));
}

