struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> vec2<bool> {
    let var_0 = ~(1u & u_input.a) >> (countOneBits(~(~u_input.a)) % 32u);
    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_0, vec3<f32>(747f, 296f, 469f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-290f, -1000f, -2112f))) - arg_0)));
    let var_1 = !select(!select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), true), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), false), true), true);
    global0 = vec3<f32>(-1178f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(min(-1000f, 546f))))), arg_0.x);
    var var_2 = u_input.c >= -6617i;
    return var_1;
}

fn func_3(arg_0: bool, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-985f, 1f)))), Struct_1(arg_1));
    var var_1 = ~u_input.a;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(685f, -2169f), _wgslsmith_f_op_f32(f32(-1f) * -864f), _wgslsmith_f_op_f32(-var_0.a.a.x))));
    var_1 = _wgslsmith_clamp_u32(u_input.a, 1u, 67668u & u_input.a);
    var var_2 = 1000f;
    return Struct_2(var_0.a, Struct_1(var_0.b.a));
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    var var_0 = Struct_5(u_input.c, func_3(!any(func_2(vec3<f32>(global0.x, -384f, 1049f), 1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.xx)) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.x, global0.x))))))));
    var var_1 = func_3(true, _wgslsmith_f_op_vec2_f32(step(var_0.b.b.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b.a.x + 716f)), 1425f))));
    var_0 = Struct_5(~_wgslsmith_dot_vec2_i32(~vec2<i32>(-37718i, arg_0.x), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, 2147483647i), vec2<i32>(1i, arg_0.x))), var_0.b);
    var var_2 = select(!any(vec2<bool>(true, false)), true, false);
    var var_3 = arg_0.x;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a.a.x))))), _wgslsmith_f_op_f32(f32(-1f) * -546f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(82691u, ~(~u_input.a), min(u_input.a, abs(1u))), ~firstLeadingBit(~vec3<u32>(u_input.a, u_input.a, 67575u))));
    var_0 = u_input.a;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(-global0.x), true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(165f * global0.x) * _wgslsmith_f_op_f32(func_1(vec4<i32>(-2147483647i, u_input.c, _wgslsmith_mod_i32(u_input.b.x, 24921i), -39424i)))), 522f);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(func_1(u_input.b >> (~_wgslsmith_add_vec4_u32(vec4<u32>(7287u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 4294967295u, 4294967295u, 4294967295u)) % vec4<u32>(32u)))), 1172f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.x, 667f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))))));
    var_0 = min(~(~74966u), ~min(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 44998u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 93766u), select(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(24208u, u_input.a), vec2<u32>(0u, u_input.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 28109u)), vec2<bool>(true, true)))), countOneBits(u_input.c));
}

