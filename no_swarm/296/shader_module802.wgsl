struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: f32 = -654f;

var<private> global2: Struct_1 = Struct_1(1282f);

var<private> global3: array<vec2<i32>, 10>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec2<u32>) -> f32 {
    return global0.x;
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = !all(vec3<bool>(false, true, !(!arg_0)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(func_2(~u_input.d.x, true, ~u_input.a)));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1000f) * vec2<f32>(_wgslsmith_f_op_f32(282f + -1504f), _wgslsmith_f_op_f32(229f + global2.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, 2438f) + vec2<f32>(-976f, var_1.a))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-557f, global0.x))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(744f, global0.x))) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, global0.x)))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), global2.a)));
    var var_2 = ~u_input.e;
    global1 = _wgslsmith_f_op_f32(round(global2.a));
    return var_1;
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = func_1(true);
    let var_1 = Struct_1(arg_0);
    global3 = array<vec2<i32>, 10>();
    global2 = func_1(global2.a == _wgslsmith_f_op_f32(-global2.a));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
    return u_input.a.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: u32) -> vec4<u32> {
    global0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global2.a)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a, global2.a) + vec2<f32>(-1256f, -167f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1457f, 730f)))), vec2<bool>(744f >= global0.x, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a, -118f) * vec2<f32>(418f, global2.a)))), vec2<bool>(true, true))));
    let var_0 = vec4<bool>(false, all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), all(vec4<bool>(false, true, false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), any(vec4<bool>(true, false, false, false)))), !((~arg_1 != (0u & u_input.a.x)) | all(vec3<bool>(false, true, true))), any(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), any(vec4<bool>(true, false, true, false)))));
    global3 = array<vec2<i32>, 10>();
    global2 = func_1(any(var_0));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-113f + _wgslsmith_f_op_f32(-global2.a)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(471f * _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(abs(-1547f)))))));
    return _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(0u, u_input.a.x, 1u, 21914u)), _wgslsmith_mult_vec4_u32(~(abs(vec4<u32>(arg_1, u_input.a.x, u_input.a.x, arg_1)) | vec4<u32>(arg_1, 17252u, u_input.e.x, arg_1)), ~u_input.e), u_input.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1073f, -520f))))));
    let var_1 = func_1(true);
    var var_2 = select(vec4<bool>(true, all(vec2<bool>(true, true)), true, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.e.x, 1u, u_input.e.x), vec4<u32>(4294967295u, u_input.e.x, u_input.e.x, u_input.a.x), u_input.e), abs(u_input.e)) < ~(~u_input.e.x)), !(!vec4<bool>(any(vec3<bool>(false, true, false)), true, any(vec2<bool>(false, false)), true)), 22806i != (1i >> (u_input.a.x % 32u)));
    global3 = array<vec2<i32>, 10>();
    let var_3 = _wgslsmith_dot_vec4_i32(u_input.d, u_input.b) ^ -1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(34943u, ~(~u_input.e.x), 1u, u_input.e.x) & func_4(u_input.b, func_3(_wgslsmith_f_op_f32(min(global2.a, -343f)))), _wgslsmith_f_op_f32(f32(-1f) * -536f), abs(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.e.zxx, reverseBits(vec3<u32>(0u, u_input.a.x, u_input.e.x))), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.e.x), u_input.e.xxw))));
}

