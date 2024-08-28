struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14> = array<u32, 14>(0u, 4294967295u, 0u, 17210u, 36335u, 0u, 0u, 90395u, 65057u, 1u, 4294967295u, 0u, 1u, 19666u);

var<private> global1: Struct_3 = Struct_3(4294967295u, Struct_1(vec2<bool>(false, false), false, vec2<bool>(false, false), -215f), vec3<u32>(28108u, 26640u, 4294967295u), vec3<f32>(777f, -1812f, -846f), Struct_2(1653f, vec4<i32>(2164i, 2147483647i, 1i, 14562i), 954f, Struct_1(vec2<bool>(false, false), false, vec2<bool>(false, false), -128f)));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = ~_wgslsmith_sub_vec4_u32(~vec4<u32>(_wgslsmith_sub_u32(global1.a, 4294967295u), 1u, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global1.c.x, 14u)], 2386u), min(global1.c.x, 0u)), ~(~vec4<u32>(global1.a, global1.a, 0u, global1.a)));
    var_1 = vec4<u32>(~_wgslsmith_div_u32(~global0[_wgslsmith_index_u32(1u, 14u)], ~u_input.c) | (global1.a & 1u), global0[_wgslsmith_index_u32(~0u, 14u)], ~65146u, 0u);
    let var_2 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(global1.e.b.ywx);
}

