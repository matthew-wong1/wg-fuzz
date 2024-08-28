struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 23546i;

var<private> global1: f32 = 312f;

var<private> global2: array<f32, 31> = array<f32, 31>(-158f, 2398f, -219f, 1306f, -373f, -102f, 1134f, 1652f, -804f, -104f, 160f, 401f, -1149f, -156f, 1373f, 2384f, 144f, 766f, 920f, 159f, -617f, 286f, 1103f, -306f, -542f, -1115f, 1192f, 1776f, -751f, -138f, -793f);

var<private> global3: Struct_2 = Struct_2(827f, vec2<bool>(false, true));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(abs(70398i), u_input.a), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(u_input.a), u_input.a, -u_input.a, u_input.a << (u_input.b.x % 32u)), abs(vec4<i32>(-33839i, u_input.a, u_input.a, 25910i))), ~max(1i, reverseBits(u_input.a))), vec3<u32>(85023u, min(u_input.b.x, ~1u) | u_input.b.x, u_input.b.x));
}

