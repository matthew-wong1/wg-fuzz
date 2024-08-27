struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<bool>(true, true, true), vec3<bool>(true, false, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(14918u, ~(~1u) >> (u_input.a.x % 32u), 49477u), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(248f, 295f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(173f, 1000f) + _wgslsmith_f_op_f32(f32(-1f) * -342f))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1901f, -105f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1212f, 245f) - vec2<f32>(-601f, -121f))))), max(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 45104u, 65203u, u_input.a.x), u_input.a)), ~1u, _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), u_input.a.x ^ 0u), u_input.a.x), u_input.a), countOneBits(~u_input.a.x));
}

