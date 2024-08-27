struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_3,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 28>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 28>();
    global0 = array<vec4<i32>, 28>();
    let var_0 = vec2<bool>(true, true);
    let var_1 = abs(vec2<i32>(0i, -1945i));
    global0 = array<vec4<i32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a << (vec4<u32>(~u_input.d, u_input.a.x, _wgslsmith_div_u32(u_input.d >> (u_input.d % 32u), ~4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 0u), abs(u_input.a.zy))) % vec4<u32>(32u)), vec4<i32>(-1i) * -(~vec4<i32>(var_1.x, var_1.x, 0i, u_input.b.x)), -47147i, 1u, vec2<u32>(~1u, ~(abs(u_input.a.x) >> ((u_input.d << (4294967295u % 32u)) % 32u))));
}

