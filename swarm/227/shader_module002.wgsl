struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 18>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> f32 {
    let var_0 = arg_0;
    var var_1 = Struct_1(559f, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_0.b), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -197f), _wgslsmith_f_op_f32(f32(-1f) * -2074f)), arg_0.b)))));
    var var_2 = ~arg_1;
    let var_3 = Struct_1(-130f, arg_0.b);
    var var_4 = -(~reverseBits(~vec2<i32>(-53855i, u_input.b.x)));
    return -366f;
}

fn func_3(arg_0: vec3<u32>) -> vec3<u32> {
    global0 = array<vec2<bool>, 18>();
    global0 = array<vec2<bool>, 18>();
    global0 = array<vec2<bool>, 18>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-131f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1000f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -870f) - _wgslsmith_f_op_f32(842f - 278f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1694f, 1962f)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-401f, -1000f)))))) * vec2<f32>(_wgslsmith_f_op_f32(-779f - _wgslsmith_f_op_f32(-1368f + 1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(174f)), _wgslsmith_f_op_f32(floor(-381f)))))));
    global0 = array<vec2<bool>, 18>();
    return arg_0;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), func_3(reverseBits(~vec3<u32>(15075u, 8153u, 27917u)))), vec3<u32>(_wgslsmith_div_u32(max(4294967295u, 0u), abs(1u)), func_3(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 43150u, 14437u), vec3<u32>(4294967295u, 1u, 44018u), vec3<u32>(35000u, 0u, 1u))).x, 3235u) ^ vec3<u32>(~1u, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 56077u, 1u), vec4<u32>(1u, 19004u, 25338u, 1u))), min(2507u, _wgslsmith_div_u32(0u, 81987u))));
    var var_1 = arg_0.yw;
    var var_2 = Struct_1(arg_1.b.x, arg_2.b);
    var_2 = Struct_1(_wgslsmith_f_op_f32(round(-1229f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1231f, arg_2.b.x)) * _wgslsmith_f_op_vec2_f32(arg_1.b - vec2<f32>(arg_2.b.x, arg_2.a))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, arg_1.b.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, 1207f))))));
    var_0 = abs(~min(select(_wgslsmith_add_vec3_u32(vec3<u32>(1u, var_0.x, var_0.x), vec3<u32>(var_0.x, var_0.x, var_0.x)), vec3<u32>(1u, 4294967295u, 4294967295u) << (vec3<u32>(4294967295u, var_0.x, var_0.x) % vec3<u32>(32u)), !vec3<bool>(var_1.x, true, true)), ~(~vec3<u32>(var_0.x, var_0.x, var_0.x))));
    return _wgslsmith_f_op_f32(-var_2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-265f + -615f)), 765f, _wgslsmith_f_op_f32(round(1f))) + vec3<f32>(-446f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(Struct_1(954f, vec2<f32>(2211f, 1000f)), 18450u)), 868f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<bool>(true, false, false, true), Struct_1(1566f, vec2<f32>(513f, 526f)), Struct_1(-257f, vec2<f32>(-957f, 468f)), vec3<bool>(true, true, false)))))), ~_wgslsmith_mult_u32(max(1u, 1u), _wgslsmith_clamp_u32(1u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(9727u, 1u, 1u, 44511u), vec4<u32>(0u, 0u, 60240u, 40016u)))), u_input.b.zz ^ vec2<i32>(u_input.a, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x) >> (~35175u % 32u)));
}

