struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(27356u, 1u), ~32218u), 24389u), 4294967295u, 0u, 1u), ~(~(~abs(vec4<u32>(36942u, 4294967295u, 83768u, 70793u)))));
    var var_1 = true;
    let var_2 = ~1u;
    var_1 = true;
    var_1 = true;
    let var_3 = vec2<u32>(4294967295u, var_2);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f * 203f), _wgslsmith_f_op_f32(276f * 1027f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1016f, -797f)), _wgslsmith_f_op_f32(505f + -595f)), _wgslsmith_f_op_f32(ceil(-1558f)))), _wgslsmith_mod_u32((1u ^ _wgslsmith_clamp_u32(1u, var_2, var_0)) & reverseBits(_wgslsmith_add_u32(var_3.x, var_2)), _wgslsmith_div_u32(~(var_3.x & 1u), var_0)));
}

