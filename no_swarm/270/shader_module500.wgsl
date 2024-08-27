struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: u32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> vec4<u32> {
    let var_0 = Struct_1(u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-343f, arg_0)), 1f), 1936u, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(590f))))), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -134f))));
    let var_1 = false;
    global1 = 0u | _wgslsmith_dot_vec3_u32(vec3<u32>(1u, min(94828u, ~u_input.b.x), _wgslsmith_dot_vec3_u32(u_input.b & u_input.b, ~vec3<u32>(81761u, 42403u, var_0.c))), select(firstTrailingBit(vec3<u32>(4294967295u, u_input.b.x, 4294967295u) ^ vec3<u32>(u_input.b.x, var_0.c, u_input.b.x)), u_input.b, !select(vec3<bool>(true, false, true), vec3<bool>(var_1, var_1, var_1), var_1)));
    var var_2 = 1f;
    var var_3 = 17652u;
    return ~firstTrailingBit(firstLeadingBit(~reverseBits(vec4<u32>(u_input.b.x, 89031u, u_input.b.x, 1u))));
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    global1 = 1u;
    var var_0 = -1267f;
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(476f, arg_0.x, -2771f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1097f, arg_0.x, -1207f)))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1020f)), -427f)));
    global0 = _wgslsmith_add_u32(u_input.b.x, u_input.b.x);
    var var_2 = ~firstTrailingBit(firstLeadingBit(vec4<i32>(1i, 1i, 4126i, u_input.a.x)) | vec4<i32>(~u_input.a.x, -37953i, u_input.a.x, ~0i));
    return Struct_2(vec3<f32>(var_1.x, arg_0.x, arg_0.x), Struct_1(u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(349f))), _wgslsmith_f_op_f32(f32(-1f) * -166f)), u_input.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1 + vec3<f32>(arg_0.x, 1074f, 1000f)))), _wgslsmith_dot_vec4_u32(func_3(var_1.x, _wgslsmith_f_op_vec3_f32(-var_1)), _wgslsmith_sub_vec4_u32(select(select(vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x), vec4<u32>(u_input.b.x, 12365u, u_input.b.x, u_input.b.x), false), min(vec4<u32>(28969u, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(1u, u_input.b.x, 0u, 0u)), vec4<bool>(true, true, false, true)), vec4<u32>(u_input.b.x, 13082u, 1u, 0u) | firstLeadingBit(vec4<u32>(1u, u_input.b.x, u_input.b.x, 13830u)))), !any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)), Struct_1(var_2.wy, -1000f, ~(~u_input.b.x << (29339u % 32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_div_f32(arg_0.x, arg_0.x)))));
}

fn func_4(arg_0: Struct_2) -> i32 {
    let var_0 = Struct_1(arg_0.b.a, _wgslsmith_f_op_f32(min(arg_0.b.d.x, 1f)), _wgslsmith_clamp_u32(4294967295u, reverseBits(max(u_input.b.x | 84225u, u_input.b.x ^ u_input.b.x)), u_input.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e.d.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.a.x * arg_0.e.d.x))), -831f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(2287f, arg_0.e.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(-var_0.b)), -239f), -547f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1272f, arg_0.a.x, arg_0.a.x, arg_0.e.d.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-1321f * arg_0.b.d.x), _wgslsmith_f_op_f32(trunc(1292f)), _wgslsmith_f_op_f32(round(707f))))));
    let var_2 = vec3<i32>(_wgslsmith_sub_i32(~_wgslsmith_clamp_i32(var_0.a.x, -23454i, 1i) ^ (arg_0.b.a.x << (u_input.b.x % 32u)), -3229i), 7430i, ~(-33827i));
    global1 = func_3(-1000f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.xxz - vec3<f32>(var_1.x, 1438f, var_1.x)) - _wgslsmith_f_op_vec3_f32(-arg_0.a))))).x;
    var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1929f, 1202f, var_0.d.x, -293f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(698f, arg_0.b.b, var_1.x, 1131f) * vec4<f32>(617f, var_1.x, var_1.x, arg_0.e.b)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, var_0.b, var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.d.x)) - var_0.b)))));
    return abs(57357i);
}

fn func_1(arg_0: i32) -> vec4<bool> {
    global0 = 4294967295u;
    var var_0 = Struct_3(vec2<i32>(max(_wgslsmith_div_i32(arg_0, u_input.a.x), countOneBits(2147483647i)), u_input.a.x) | max(-vec2<i32>(-2147483647i, arg_0), u_input.a));
    let var_1 = arg_0;
    var var_2 = select(vec4<i32>(var_0.a.x, u_input.a.x, arg_0, var_0.a.x), vec4<i32>(func_4(func_2(vec2<f32>(1f, 1f))), ~func_4(func_2(vec2<f32>(-335f, -797f))), arg_0, var_0.a.x), select(vec4<bool>(any(vec4<bool>(false, true, false, true)) | func_2(vec2<f32>(751f, -618f)).d, _wgslsmith_f_op_f32(-493f - -127f) <= _wgslsmith_f_op_f32(round(351f)), true || any(vec4<bool>(false, true, true, true)), func_2(_wgslsmith_div_vec2_f32(vec2<f32>(-1080f, 1151f), vec2<f32>(-924f, -517f))).d), vec4<bool>(true, true, true, true), vec4<bool>(true, _wgslsmith_sub_u32(u_input.b.x, 4294967295u) >= func_3(386f, vec3<f32>(-1578f, 756f, -975f)).x, !any(vec4<bool>(true, false, true, true)), true)));
    let var_3 = min(vec3<i32>(~_wgslsmith_sub_i32(_wgslsmith_add_i32(var_0.a.x, var_1), 2147483647i), min(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(62115i, 51882i), vec2<i32>(-9908i, var_1), var_2.xx), abs(vec2<i32>(-20000i, -15001i))), -var_1 ^ _wgslsmith_sub_i32(var_1, -2147483647i)), var_2.x), abs(_wgslsmith_mult_vec3_i32(var_2.yxw, max(abs(vec3<i32>(arg_0, var_1, var_1)), var_2.zyy))));
    return vec4<bool>(!select(true, var_1 <= var_1, _wgslsmith_mod_u32(u_input.b.x, 121471u) < 20646u), (true == all(vec2<bool>(true, true))) | true, true, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec4<bool>(true, true, any(vec4<bool>(false, false, false, true)), true), select(func_1(abs(u_input.a.x)), vec4<bool>(all(vec3<bool>(false, false, false)), func_1(-11148i).x, true, func_1(u_input.a.x).x), !func_1(u_input.a.x)), vec4<bool>(true, true, false, select(all(vec4<bool>(false, true, false, true)), false, false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-276f, -1000f), _wgslsmith_f_op_f32(round(-140f)), _wgslsmith_f_op_f32(-416f * -626f), -1699f))));
}

