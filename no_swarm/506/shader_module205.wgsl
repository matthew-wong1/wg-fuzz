struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 23>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, any(vec3<bool>(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 60364u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 0u << (1u % 32u), 4294967295u, ~u_input.c.x)), vec4<u32>(0u, u_input.c.x, ~u_input.c.x, u_input.c.x)), u_input.a, vec2<f32>(_wgslsmith_f_op_f32(1000f - -166f), _wgslsmith_div_f32(3535f, _wgslsmith_f_op_f32(-324f - _wgslsmith_f_op_f32(f32(-1f) * -1972f)))), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(~u_input.c.x, ~u_input.c.x), firstTrailingBit(u_input.c)), ~vec2<u32>(4294967295u, 4294967295u) | (vec2<u32>(59821u, 4294967295u) | (u_input.c >> (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u))))));
}

