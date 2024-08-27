struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1619f, -274f, -246f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<f32> {
    let var_0 = u_input.c << (u_input.e % 32u);
    let var_1 = -21203i;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -607f), global0.x, _wgslsmith_f_op_f32(global0.x + global0.x));
    global0 = vec3<f32>(1229f, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, 459f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1591f)) + -2167f))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(579f, _wgslsmith_f_op_f32(global0.x + -997f), _wgslsmith_f_op_f32(floor(global0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -722f) * vec3<f32>(global0.x, global0.x, global0.x)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1209f, global0.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 125f, global0.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0.x, global0.x))))));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-173f)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(186f, 299f)))))), global0.x, _wgslsmith_f_op_f32(-global0.x));
}

fn func_2() -> vec4<u32> {
    global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-714f + 1000f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -258f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-563f, 165f, -1000f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-516f, global0.x, global0.x), vec3<f32>(global0.x, 156f, global0.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -1296f)), _wgslsmith_f_op_vec3_f32(func_3()), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false))))))))));
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3()).x)), _wgslsmith_f_op_f32(-485f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(709f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - 750f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 366f))))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-469f, global0.x, global0.x)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(-254f - 418f), _wgslsmith_div_f32(var_0.x, -1242f)))));
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, global0.x, var_0.x) + vec3<f32>(global0.x, 577f, global0.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, -1379f, global0.x), vec3<f32>(522f, global0.x, 1318f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-387f, 1152f, -2822f), vec3<f32>(global0.x, 1173f, var_0.x)))), (-36312i > -u_input.d) || true)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_div_f32(var_0.x, 147f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + global0.x) * _wgslsmith_f_op_f32(abs(var_0.x))), global0.x))));
    var var_1 = Struct_2(Struct_1(-2147483647i, _wgslsmith_clamp_i32(-30240i, select(u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b, u_input.d), vec3<i32>(-18036i, 1i, -30047i)), select(true, true, true)), 0i), abs(-2147483647i), vec4<bool>(false, any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), true, any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true))), ~(_wgslsmith_mod_vec4_u32(vec4<u32>(62008u, 4294967295u, u_input.a.x, u_input.c), vec4<u32>(u_input.e, u_input.e, u_input.a.x, u_input.a.x)) | vec4<u32>(u_input.a.x, 0u, 1u, 42442u))));
    return vec4<u32>(reverseBits(0u), 1u, u_input.e >> (~u_input.e % 32u), abs(_wgslsmith_sub_u32(~u_input.c, _wgslsmith_mod_u32(0u, 13030u)) ^ ~_wgslsmith_clamp_u32(u_input.c, var_1.a.e.x, u_input.e)));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: bool) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(-arg_1.yyw);
    let var_0 = false;
    let var_1 = ~_wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(select(vec4<u32>(4294967295u, u_input.a.x, 1u, 4294967295u), vec4<u32>(4294967295u, 50613u, 0u, u_input.e), true), firstLeadingBit(vec4<u32>(u_input.a.x, u_input.e, u_input.e, 1u))), max(_wgslsmith_mult_vec4_u32(func_2(), ~vec4<u32>(u_input.a.x, 0u, u_input.c, 0u)), vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, 1u), u_input.e, _wgslsmith_dot_vec3_u32(vec3<u32>(17235u, u_input.a.x, 9101u), vec3<u32>(4294967295u, u_input.a.x, u_input.e)), ~1u)));
    var var_2 = Struct_2(Struct_1(u_input.d, -1i, -(0i << (u_input.c % 32u)), select(select(select(vec4<bool>(var_0, arg_2, false, var_0), vec4<bool>(true, true, arg_2, arg_2), arg_2), !vec4<bool>(var_0, arg_2, arg_2, false), select(vec4<bool>(var_0, false, false, true), vec4<bool>(arg_2, arg_2, false, false), false)), !vec4<bool>(false, arg_2, var_0, true), true), var_1));
    let var_3 = var_2.a.d.xy;
    return Struct_1(0i, var_2.a.b, ~(1i << (~(var_1.x ^ var_2.a.e.x) % 32u)), var_2.a.d, vec4<u32>(u_input.a.x, func_2().x, var_1.x, ~_wgslsmith_div_u32(4294967295u, ~1u)));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -339f, 1521f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -467f, -1529f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1000f, 448f)))));
    var var_0 = 2147483647i;
    var_0 = 0i;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, global0.x, arg_0.d.x)) * _wgslsmith_f_op_f32(sign(-909f))) - -1074f)), 1112f, _wgslsmith_div_f32(280f, _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1445f + 1000f) * global0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))))));
    let var_2 = var_1.zxx;
    return Struct_2(arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(u_input.d, vec4<f32>(1000f, global0.x, _wgslsmith_f_op_f32(-1103f + global0.x), _wgslsmith_f_op_f32(f32(-1f) * -268f)), 410f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(263f, -447f, true)) - -1728f)));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 331f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3()).x))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3()));
    let var_1 = ~abs(0u);
    let var_2 = var_1;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(934f, global0.x, global0.x) + vec3<f32>(global0.x, 1410f, -779f))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(abs(1710f)), -883f)))));
    let var_4 = vec3<i32>(var_0.a.b, -_wgslsmith_div_i32(~u_input.b, func_4(var_0.a).a.b), _wgslsmith_mult_i32(-23505i, abs(_wgslsmith_sub_i32(u_input.b, 27411i) >> (~var_0.a.e.x % 32u))));
    let var_5 = var_0;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(550f, -1153f, 756f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 137f, global0.x))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1719f, global0.x, -986f))), vec3<f32>(-1491f, -116f, global0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(559f, 175f, _wgslsmith_div_f32(global0.x, global0.x))), all(select(select(vec3<bool>(true, var_5.a.d.x, true), var_0.a.d.xxw, false), var_0.a.d.zyy, true || var_5.a.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, var_4.yz ^ _wgslsmith_add_vec2_i32(vec2<i32>(firstTrailingBit(9515i), _wgslsmith_add_i32(1i, -10766i)), vec2<i32>(var_5.a.c >> (var_2 % 32u), u_input.d & var_0.a.b)), var_5.a.e);
}

