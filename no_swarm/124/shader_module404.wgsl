struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: i32,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: bool,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> u32 {
    var var_0 = Struct_1(!global0.e.yz, ~0u, -arg_0, global0.e, vec3<bool>(global0.a.x, false | (0u < _wgslsmith_div_u32(u_input.d, 97412u)), any(select(!arg_1.b, select(arg_1.b, arg_1.b, arg_1.b), select(arg_1.b, vec4<bool>(global0.e.x, false, true, false), false)))));
    let var_1 = Struct_2(vec2<bool>(var_0.a.x, all(vec3<bool>(arg_1.b.x, global0.e.x, global0.e.x)) | (!global0.a.x || (var_0.e.x | global0.a.x))), vec3<bool>(arg_1.a.x, true, true), all(!(!(!vec2<bool>(var_0.e.x, var_0.e.x)))), -abs(2147483647i), _wgslsmith_add_u32(0u, u_input.d));
    var var_2 = _wgslsmith_f_op_f32(select(-1120f, 1f, any(select(vec3<bool>(any(vec2<bool>(global0.d.x, false)), all(var_1.b), true), select(select(vec3<bool>(var_0.e.x, true, false), vec3<bool>(false, var_0.e.x, true), var_1.b), select(vec3<bool>(true, arg_1.a.x, arg_1.b.x), vec3<bool>(true, false, true), arg_1.b.wxy), select(var_0.d, var_1.b, var_0.e)), !(!global0.d)))));
    var var_3 = ~(~vec4<u32>(select(~u_input.d, ~101296u, true), min(4294967295u, abs(0u)), _wgslsmith_div_u32(~global0.b, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.e, 30153u, global0.b, global0.b), vec4<u32>(var_1.e, global0.b, arg_1.c.x, 98715u))), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(20220u, 1u, var_1.e), vec3<u32>(25883u, 13391u, u_input.d)))));
    var_2 = _wgslsmith_f_op_f32(select(arg_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1182f, -113f))))) + arg_1.d), true));
    return 0u;
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = vec2<u32>(48676u, _wgslsmith_clamp_u32(abs(func_3(0i, Struct_3(global0.e, vec4<bool>(global0.a.x, arg_0, false, true), vec2<u32>(global0.b, 0u), 275f, -63084i))), 2590u, _wgslsmith_div_u32(u_input.d, 56196u)));
    global0 = Struct_1(select(vec2<bool>((-1i == global0.c) & !arg_0, true), vec2<bool>(global0.a.x, !any(vec4<bool>(global0.e.x, false, true, arg_0))), vec2<bool>(select(true, global0.c == global0.c, all(global0.e)), !all(vec3<bool>(arg_0, true, arg_0)))), ~(~0u >> ((~global0.b << (abs(37153u) % 32u)) % 32u)), global0.c, global0.e, global0.d);
    global0 = Struct_1(global0.e.yz, _wgslsmith_mult_u32(global0.b | global0.b, min(var_0.x, 15362u)), u_input.b, vec3<bool>(var_0.x < ~(global0.b & u_input.d), false, arg_0), !(!(!vec3<bool>(global0.e.x, arg_0, global0.e.x))));
    var var_1 = Struct_1(!(!vec2<bool>(false, global0.a.x)), _wgslsmith_sub_u32(_wgslsmith_div_u32(global0.b, global0.b), ~min(69140u, global0.b)), -_wgslsmith_dot_vec2_i32(select(vec2<i32>(-56035i, -2147483647i), vec2<i32>(1i, 11083i), !global0.e.x), abs(u_input.a.yy) ^ vec2<i32>(u_input.a.x, global0.c)), global0.e, global0.d);
    var var_2 = u_input.a.x;
    return Struct_1(select(vec2<bool>(global0.a.x, true), global0.a, arg_0), select(1u, 0u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1329f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1848f)) * 1f)), var_1.c, global0.e, !vec3<bool>(!any(vec3<bool>(var_1.e.x, true, false)), false, false));
}

fn func_1() -> vec4<bool> {
    global0 = func_2(false);
    global0 = Struct_1(select(select(select(!vec2<bool>(global0.e.x, true), global0.d.yx, vec2<bool>(global0.a.x, true)), vec2<bool>(any(vec2<bool>(true, global0.a.x)), true), true), global0.e.yx, global0.a), abs(abs(firstLeadingBit(0u >> (1u % 32u)))), -1i, select(global0.d, func_2(false).d, global0.e), !(!func_2(global0.a.x).e));
    global0 = func_2(func_2(select(!global0.a.x, false, any(global0.d.zy))).d.x && all(vec2<bool>(select(global0.d.x, false, global0.d.x), select(false, global0.e.x, false))));
    global0 = func_2(firstLeadingBit(_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 0i, global0.c), vec3<i32>(-2147483647i, -2147483647i, u_input.c.x) | vec3<i32>(global0.c, 10043i, global0.c))) < _wgslsmith_mult_i32(i32(-1i) * -global0.c, reverseBits(firstTrailingBit(1802i))));
    global0 = Struct_1(global0.a, ~max(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.b, 14861u), vec3<u32>(12163u, 118247u, 4294967295u))), _wgslsmith_dot_vec2_u32(vec2<u32>(1460u, 16420u), ~vec2<u32>(global0.b, 99903u))), _wgslsmith_mult_i32(u_input.b | ~(i32(-1i) * -9771i), -_wgslsmith_dot_vec3_i32(~u_input.c, vec3<i32>(-29863i, u_input.c.x, -8910i))), vec3<bool>(global0.a.x, !any(!global0.d), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a.zyw, u_input.a.zzy), u_input.a.zyy & vec3<i32>(global0.c, u_input.a.x, 1i)) != 1i), select(vec3<bool>((global0.d.x || global0.a.x) && false, !global0.a.x, true & (true & global0.d.x)), global0.d, !(global0.b < 42152u) || !global0.a.x));
    return select(select(!vec4<bool>(all(vec3<bool>(false, false, global0.d.x)), true, true, true), vec4<bool>(all(!vec4<bool>(false, global0.d.x, global0.d.x, global0.a.x)), global0.e.x, true & !global0.d.x, any(!global0.e)), vec4<bool>(global0.d.x, true, true, !(global0.c <= 20847i))), select(vec4<bool>(all(select(vec4<bool>(true, global0.e.x, false, global0.d.x), vec4<bool>(global0.e.x, global0.a.x, global0.d.x, global0.e.x), true)), global0.d.x, select(global0.e.x, true, !global0.e.x), any(vec4<bool>(true, global0.e.x, true, true))), vec4<bool>(!(!global0.d.x), all(vec3<bool>(global0.a.x, global0.a.x, global0.e.x)), global0.e.x, false && !global0.d.x), !vec4<bool>(global0.c != 0i, true, global0.c < u_input.c.x, global0.a.x)), global0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -global0.c;
    var var_1 = !(!func_1());
    let var_2 = Struct_2(var_1.xy, global0.e, !(_wgslsmith_f_op_f32(round(212f)) <= _wgslsmith_f_op_f32(-502f * 729f)) && true, _wgslsmith_mult_i32(global0.c, -(-global0.c >> (func_2(var_1.x).b % 32u))), ~36142u);
    var_0 = _wgslsmith_mod_i32(-1i, u_input.a.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(158f, -871f, 601f), vec3<f32>(300f, 707f, -3077f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1692f, -492f, 1401f)))))));
    var_1 = func_1();
    let var_4 = max(abs(_wgslsmith_div_i32(-3891i, reverseBits(u_input.c.x))), -global0.c) | (2147483647i << (global0.b % 32u));
    var var_5 = var_1.wxz;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, vec4<f32>(_wgslsmith_f_op_f32(select(-223f, 576f, true)), _wgslsmith_f_op_f32(exp2(var_3.x)), -1000f, -1063f), ~(~_wgslsmith_add_u32(14045u, 1420u)) & u_input.d, _wgslsmith_sub_i32(~23862i, i32(-1i) * -u_input.c.x), countOneBits(_wgslsmith_clamp_i32(u_input.b, 1i, i32(-1i) * -2147483647i)));
}

