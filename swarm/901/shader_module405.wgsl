struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6> = array<f32, 6>(453f, -564f, 873f, -1000f, -748f, -377f);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec4<bool>(true, any(vec2<bool>(true, true)), 43255i >= (u_input.c.x << (u_input.a.x % 32u)), true));
    global0 = array<f32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(~u_input.a.x, ~4294967295u, ~u_input.d)), vec2<i32>(_wgslsmith_clamp_i32((i32(-1i) * -1i) >> (1u % 32u), max(1i, 1i), countOneBits(2147483647i)), ~(-1i)), _wgslsmith_div_vec2_u32(u_input.a, ~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.d), u_input.a)), abs(~(u_input.b & -u_input.b)), ~u_input.d);
}

