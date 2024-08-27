struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: f32 = 1813f;

var<private> global2: vec3<f32> = vec3<f32>(588f, 2301f, -2699f);

var<private> global3: vec4<i32>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(abs(u_input.d), 0u, _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.d, 28076u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.a), vec2<u32>(u_input.d, 1u)), ~4294967295u, ~u_input.a)), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(~(~var_0.zw), var_0.wz));
}

