struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(false, true, true, true, false, true, false, false, false, true, true, true, true, true, true, false, true, false, false, false, true, false, false, false, false, false, true, true, true, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<bool>) -> f32 {
    let var_0 = select(vec3<u32>(arg_0.x, firstLeadingBit(arg_0.x), 4294967295u) ^ _wgslsmith_mod_vec3_u32(abs(vec3<u32>(arg_0.x, 8793u, 4294967295u)), _wgslsmith_sub_vec3_u32(vec3<u32>(48230u, 0u, arg_0.x), vec3<u32>(arg_0.x, 66956u, 1u))), vec3<u32>(~_wgslsmith_clamp_u32(arg_0.x, arg_0.x, arg_0.x), ~8895u, arg_0.x), arg_1.x || all(select(vec3<bool>(false, arg_1.x, false), vec3<bool>(arg_1.x, arg_1.x, false), arg_1.x))) | vec3<u32>(arg_0.x, ~77186u, 11697u);
    global0 = array<bool, 30>();
    let var_1 = select(arg_0.x, ~var_0.x, arg_1.x);
    let var_2 = u_input.a.x;
    global0 = array<bool, 30>();
    return _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-223f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1827f)), -703f)), _wgslsmith_div_f32(-666f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(792f + 381f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(select(-132f, 309f, global0[_wgslsmith_index_u32(~40796u, 30u)])), 1f, _wgslsmith_f_op_f32(-238f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -130f)))), ~vec3<u32>(50643u, 1u, _wgslsmith_mod_u32(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(3076u, 42136u), vec2<u32>(30859u, 62498u)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(273f + 925f))), _wgslsmith_f_op_f32(-158f - _wgslsmith_f_op_f32(abs(376f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(289f + 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(582f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1966f, 2526f, -1159f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2041f + 397f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<u32>(0u, 4294967295u), vec2<bool>(true, false))))) * -2214f));
}

