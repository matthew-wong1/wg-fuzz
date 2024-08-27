struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(56847u, 41877u, 37950u, 10020u), vec4<u32>(1u, 28992u, 1u, 4294967295u), vec4<u32>(1u, 1u, 100151u, 1u), vec4<u32>(1u, 4294967295u, 1u, 0u), vec4<u32>(8276u, 128142u, 4294967295u, 4294967295u), vec4<u32>(0u, 8677u, 1u, 4515u), vec4<u32>(1u, 10693u, 20594u, 0u), vec4<u32>(17429u, 4294967295u, 43382u, 1u), vec4<u32>(14647u, 54670u, 0u, 99092u), vec4<u32>(57720u, 32875u, 58709u, 84554u), vec4<u32>(1u, 1u, 0u, 0u), vec4<u32>(0u, 20690u, 1u, 77709u), vec4<u32>(4895u, 109956u, 38491u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 1u, 3279u), vec4<u32>(9577u, 13377u, 1171u, 688u), vec4<u32>(1u, 4294967295u, 108910u, 1u), vec4<u32>(36352u, 34433u, 30845u, 54135u), vec4<u32>(1388u, 4294967295u, 4294967295u, 20746u), vec4<u32>(4294967295u, 114191u, 4294967295u, 0u), vec4<u32>(0u, 67986u, 4294967295u, 0u), vec4<u32>(1u, 1u, 13801u, 40431u), vec4<u32>(85180u, 18745u, 60535u, 10184u));

var<private> global1: array<u32, 25>;

var<private> global2: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(false), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(true));

var<private> global3: Struct_3 = Struct_3(vec4<u32>(97699u, 25125u, 0u, 53793u), vec3<bool>(true, false, false), vec3<f32>(-1049f, 1523f, -944f), Struct_2(1000f, vec2<bool>(false, false), vec4<f32>(-1583f, 841f, -361f, -597f), true));

var<private> global4: array<Struct_4, 6> = array<Struct_4, 6>(Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(true));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(global3.a.yx, -(-_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(1i, 40653i)) ^ -(i32(-1i) * -9622i)), global1[_wgslsmith_index_u32(global3.a.x, 25u)]);
}

