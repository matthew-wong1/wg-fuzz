struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: bool,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -517f;

var<private> global1: array<vec4<i32>, 24> = array<vec4<i32>, 24>(vec4<i32>(13836i, 40708i, 55283i, i32(-2147483648)), vec4<i32>(13898i, -12813i, 1i, 24592i), vec4<i32>(2147483647i, -34312i, -13692i, -1i), vec4<i32>(13257i, 0i, -1i, i32(-2147483648)), vec4<i32>(-1i, i32(-2147483648), -31504i, -26793i), vec4<i32>(-1i, i32(-2147483648), 1i, 1i), vec4<i32>(i32(-2147483648), -14269i, -7596i, -24687i), vec4<i32>(1i, 0i, i32(-2147483648), -1i), vec4<i32>(0i, 2147483647i, 41139i, -6829i), vec4<i32>(i32(-2147483648), 2147483647i, 0i, -19993i), vec4<i32>(0i, -9832i, 2193i, 0i), vec4<i32>(-9556i, -1i, i32(-2147483648), 56173i), vec4<i32>(-31336i, 0i, -852i, 2612i), vec4<i32>(2147483647i, 29511i, -19369i, 15449i), vec4<i32>(2833i, 1i, -45149i, i32(-2147483648)), vec4<i32>(-42954i, -1i, -1i, i32(-2147483648)), vec4<i32>(0i, -44263i, 2147483647i, 1i), vec4<i32>(-44376i, 2147483647i, 1197i, 14920i), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 3613i), vec4<i32>(20804i, -64499i, -17470i, 74534i), vec4<i32>(-1i, -1i, -49135i, -19490i), vec4<i32>(-30880i, -1i, 0i, -18793i), vec4<i32>(1179i, 2147483647i, -1i, -2412i), vec4<i32>(15756i, -1i, i32(-2147483648), -1i));

var<private> global2: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(~_wgslsmith_sub_vec3_u32(max(select(vec3<u32>(9011u, 48366u, 31333u), vec3<u32>(26801u, 0u, 59261u), vec3<bool>(false, false, false)), abs(vec3<u32>(65502u, 4294967295u, 15833u))), vec3<u32>(2860u, 4294967295u, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_0.x, ~var_0.x, 19113u), ~_wgslsmith_mult_u32(~(var_0.x >> (var_0.x % 32u)), _wgslsmith_mult_u32(var_0.x >> (var_0.x % 32u), var_0.x)));
}

