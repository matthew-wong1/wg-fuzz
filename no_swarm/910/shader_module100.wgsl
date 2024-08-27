struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = -49186i;
    global0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1094f, arg_0, -516f, arg_0), vec4<f32>(global0.x, arg_0, global0.x, global0.x))), vec4<f32>(111f, -474f, global0.x, global0.x))), vec4<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_div_f32(898f, -118f)), _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -814f))), _wgslsmith_f_op_f32(594f + arg_0)))));
    let var_1 = Struct_1(-751f, ~_wgslsmith_add_vec4_u32(countOneBits(select(vec4<u32>(u_input.a.x, u_input.a.x, 50443u, 8571u), vec4<u32>(20165u, u_input.a.x, u_input.a.x, 1u), vec4<bool>(false, true, true, true))), ~vec4<u32>(0u, u_input.a.x, u_input.a.x, 50208u)), var_0, false);
    let var_2 = (47684u >= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x & 4294967295u, 1u, ~u_input.a.x), ~vec3<u32>(57851u, 0u, 4294967295u))) & (u_input.a.x == ~0u);
    let var_3 = vec2<bool>(!(!var_2), (any(!vec4<bool>(var_1.d, var_2, var_2, false)) | true) || all(!vec3<bool>(var_1.d, var_1.d, false)));
    return var_1.a;
}

fn func_2() -> i32 {
    global0 = vec4<f32>(1470f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -110f)), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(382f, global0.x, true)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1169f, global0.x)) + _wgslsmith_f_op_f32(-1152f + global0.x))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 1506f, global0.x)))))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 198f, global0.x, 1085f), vec4<f32>(global0.x, global0.x, 670f, -488f)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1610f, global0.x, global0.x, 815f)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-384f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_3(-152f)), 967f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-667f, 1766f, 171f, -1533f)))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-521f, global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -2352f), global0.x, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(232f)) + _wgslsmith_f_op_f32(trunc(-861f))))));
    return u_input.b;
}

fn func_4(arg_0: vec2<f32>, arg_1: i32) -> Struct_2 {
    var var_0 = vec4<u32>(min(reverseBits(u_input.a.x), u_input.a.x), ~24341u, 1u, min(u_input.a.x, u_input.a.x));
    var var_1 = 1i;
    let var_2 = var_0.x;
    var_1 = _wgslsmith_mod_i32(u_input.b, _wgslsmith_mod_i32(-(20482i >> (var_0.x % 32u)), _wgslsmith_clamp_i32(2147483647i, func_2(), _wgslsmith_sub_i32(arg_1, u_input.b))) | u_input.b);
    let var_3 = false;
    return Struct_2(u_input.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1013f)) * arg_0.x) - 459f), abs(~abs(vec4<u32>(1u, 0u, 46589u, u_input.a.x))), u_input.b, var_3 & !var_3), -749f, vec3<f32>(288f, arg_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-790f, global0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global0.x)))), true))), !vec2<bool>(arg_1 > -u_input.b, true));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>) -> vec4<f32> {
    var var_0 = !(!func_4(vec2<f32>(global0.x, -1000f), 16904i).e);
    let var_1 = abs(~u_input.b) < 1i;
    var_0 = arg_0.e;
    let var_2 = false;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_0.b.a)), _wgslsmith_f_op_f32(max(380f, global0.x)))) * _wgslsmith_div_f32(arg_0.c, 1853f)))));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1364f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(sign(arg_0.d.x)))), _wgslsmith_f_op_f32(-240f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3, _wgslsmith_f_op_f32(func_3(arg_0.d.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) + _wgslsmith_f_op_f32(abs(1057f))))));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a, 1711f, arg_3.a, 354f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(723f, -1627f, 738f, -207f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-728f, global0.x, arg_3.a, 1081f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -125f, 959f, 139f) - vec4<f32>(global0.x, global0.x, 961f, global0.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, 1000f, -198f, 751f))))), arg_3.d))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(func_4(vec2<f32>(arg_3.a, arg_3.a), func_2()), min(vec4<i32>(arg_1, 2147483647i, -2147483647i, arg_0), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, arg_1, arg_0, -59710i), vec4<i32>(-1i, u_input.b, arg_3.c, 18699i), vec4<i32>(u_input.b, arg_1, arg_0, 0i)))))));
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-1418f, 135f)), 1370f, global0.x, arg_3.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.x, global0.x)) - -817f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.x)), global0.x)), global0.x, _wgslsmith_f_op_f32(ceil(-307f))) + _wgslsmith_f_op_vec4_f32(func_1(0i & (u_input.b >> (8531u % 32u)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(abs(-13133i), ~u_input.b), _wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, 1i, 2147483647i)), abs(vec3<i32>(u_input.b, 28754i, u_input.b)))), ~u_input.a.x, Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(step(-410f, -1380f)), false)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, 26284u, 16915u, 0u), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<u32>(u_input.a.x, u_input.a.x, 11308u, u_input.a.x)), ~abs(1500i), true))));
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1691f, _wgslsmith_div_f32(1702f, 1068f), 514f, global0.x) - vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(abs(global0.x)), -669f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x), global0.x, global0.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(177f, global0.x, global0.x, global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, -975f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, 136f, -377f, -726f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-func_4(vec2<f32>(1213f, global0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 18530i), vec2<i32>(-2147483647i, u_input.b))).b.c, i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(u_input.b, -1344i)), u_input.b), select(max(vec4<u32>(3806u, abs(u_input.a.x), countOneBits(59023u), max(u_input.a.x, 1u)), ~(~vec4<u32>(4294967295u, 1u, u_input.a.x, 4294967295u))), ~vec4<u32>(u_input.a.x, u_input.a.x, 5078u, u_input.a.x) ^ (~vec4<u32>(u_input.a.x, u_input.a.x, 1u, 50703u) | (vec4<u32>(u_input.a.x, 27795u, 43064u, 4294967295u) & vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 19109u))), all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false)) & true), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1245f))))), u_input.a.x);
}

