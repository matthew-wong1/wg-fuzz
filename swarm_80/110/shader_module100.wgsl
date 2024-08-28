struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<bool>,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> u32 {
    let var_0 = -780f;
    global0 = array<Struct_1, 9>();
    let var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), u_input.a.yw), _wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 35983u, u_input.a.x, u_input.a.x), u_input.a))), u_input.a.yx) | u_input.a.yx;
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    return 111886u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    var var_0 = abs(~max(2147483647i | _wgslsmith_sub_i32(u_input.b, u_input.b), u_input.b));
    var_0 = firstTrailingBit(-2147483647i);
    let var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(210f - _wgslsmith_f_op_f32(step(-412f, _wgslsmith_f_op_f32(-266f + 966f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(634f * _wgslsmith_f_op_f32(f32(-1f) * -3047f)) + 716f))), abs(vec2<u32>(0u, func_1())), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(311f, -533f, -817f, _wgslsmith_f_op_f32(f32(-1f) * -254f)))))));
}

