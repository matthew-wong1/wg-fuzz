struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: Struct_2,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_5, arg_2: vec3<u32>, arg_3: vec4<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(min(1000f, -903f));
    var var_1 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.e, 4294967295u & arg_1.d.e.d), _wgslsmith_mult_vec2_u32(arg_1.e, _wgslsmith_clamp_vec2_u32(vec2<u32>(6179u, arg_2.x), arg_1.e, vec2<u32>(arg_1.e.x, 35942u)))), _wgslsmith_mult_u32(~firstTrailingBit(0u), _wgslsmith_clamp_u32(min(0u, 18072u), firstLeadingBit(162u), u_input.e))), 1u, arg_1.d.e.c, u_input.e, 108f);
    var var_2 = Struct_2(!arg_1.d.a, arg_1.b, -2147483647i, true | all(!select(vec4<bool>(arg_1.d.b, true, arg_1.d.d, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false))), Struct_1(min(_wgslsmith_div_u32(abs(0u), arg_2.x), u_input.e), 1u, vec2<f32>(-1413f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e))), (_wgslsmith_mod_u32(4294967295u, 3650u) | max(47522u, arg_3.x)) >> (4294967295u % 32u), -1000f));
    return arg_3.x;
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: i32, arg_3: Struct_4) -> Struct_5 {
    var var_0 = Struct_1(~19803u, 1u << (_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(arg_0.e.a, ~u_input.e, firstTrailingBit(4294967295u)), func_3(_wgslsmith_add_i32(arg_2, -1i), Struct_5(vec4<i32>(-10732i, arg_3.a.c, u_input.c, u_input.d.x), arg_0.d, arg_0.e.e, Struct_2(vec3<bool>(arg_3.a.b, false, arg_0.a.x), false, arg_2, false, Struct_1(1u, 5773u, vec2<f32>(569f, -570f), 4294967295u, 1376f)), vec2<u32>(arg_3.a.e.a, 22032u)), ~vec3<u32>(u_input.e, 1u, u_input.e), ~vec4<u32>(arg_3.a.e.b, 1u, 0u, arg_0.e.d)), 71047u) % 32u), arg_0.e.c, u_input.e >> (~countOneBits(~17163u) % 32u), _wgslsmith_f_op_f32(round(arg_0.e.e)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + arg_3.a.e.e) * 141f))));
    let var_2 = !vec2<bool>(arg_1, arg_0.d | arg_1);
    global0 = abs(u_input.e);
    let var_3 = arg_3.a.e;
    return Struct_5(vec4<i32>(-1i, u_input.c, _wgslsmith_dot_vec2_i32(select(u_input.d.wx, u_input.d.ww, vec2<bool>(arg_1, true)), vec2<i32>(-1i, u_input.d.x) << (vec2<u32>(var_3.b, 4552u) % vec2<u32>(32u))) >> (u_input.e % 32u), arg_0.c), any(var_2), _wgslsmith_f_op_f32(floor(arg_3.a.e.c.x)), arg_0, vec2<u32>(1u ^ (var_3.a >> (_wgslsmith_mult_u32(var_3.d, 44605u) % 32u)), 95948u));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_1(59029u, u_input.e, arg_1.d.c, _wgslsmith_dot_vec3_u32(~select(firstTrailingBit(vec3<u32>(u_input.e, arg_0.d.e.a, arg_0.e.x)), select(vec3<u32>(33472u, 14337u, arg_1.d.b), vec3<u32>(1u, arg_0.d.e.b, 0u), vec3<bool>(arg_0.d.b, true, arg_0.d.b)), all(vec4<bool>(arg_0.b, false, arg_0.b, arg_0.b))), _wgslsmith_clamp_vec3_u32(vec3<u32>(firstLeadingBit(4294967295u), arg_1.d.a, max(arg_0.e.x, 20077u)), max(~vec3<u32>(arg_1.e, arg_1.e, 4294967295u), abs(vec3<u32>(30017u, 4294967295u, arg_0.e.x))), vec3<u32>(53487u >> (u_input.e % 32u), u_input.e, _wgslsmith_mod_u32(0u, 83511u)))), 1837f);
    var_0 = arg_0.d.e;
    global0 = ~0u;
    var var_1 = Struct_1(16189u, 4294967295u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-151f, 169f)) - var_0.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.d.c)))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u | arg_0.e.x, arg_1.d.a, 1u, 4294967295u), abs(vec4<u32>(u_input.e, arg_1.e, arg_0.e.x, arg_0.d.e.a))), -2331f);
    let var_2 = vec3<u32>(~abs(4294967295u), u_input.e, (var_1.a & (arg_0.d.e.b & var_0.d)) & ~(~arg_1.d.d)) ^ vec3<u32>(24878u, _wgslsmith_add_u32(arg_0.e.x, _wgslsmith_div_u32(~arg_0.e.x, 21861u)), ~1u);
    return func_2(Struct_2(!(!func_2(Struct_2(vec3<bool>(false, false, true), true, arg_1.c, false, Struct_1(1u, u_input.e, var_0.c, 0u, var_0.c.x)), false, -34040i, Struct_4(Struct_2(vec3<bool>(true, true, false), true, arg_2, arg_0.d.d, arg_1.d))).d.a), arg_0.d.d, firstTrailingBit(-1i), true, Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, arg_0.d.e.d, 3404u), select(vec3<u32>(var_2.x, 0u, arg_1.d.a), vec3<u32>(arg_0.e.x, arg_0.d.e.a, arg_0.d.e.b), arg_0.d.a)), _wgslsmith_div_u32(firstTrailingBit(32723u), var_0.d << (4294967295u % 32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, 422f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, 564f) * var_0.c)), 34907u, -252f)), false, firstLeadingBit(arg_1.c), Struct_4(arg_0.d)).d.e;
}

fn func_5(arg_0: Struct_3) -> vec2<bool> {
    global0 = _wgslsmith_clamp_u32(arg_0.d.b, ~(~72270u), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(11884u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 3208u, arg_0.e), vec3<u32>(u_input.e, 0u, 36091u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 112391u, arg_0.e, 1073u), vec4<u32>(arg_0.d.b, arg_0.d.a, arg_0.e, 6841u)))), u_input.e, func_4(Struct_5(min(vec4<i32>(u_input.b, arg_0.c, u_input.a, -1i), u_input.d), true, _wgslsmith_f_op_f32(arg_0.d.e - -620f), func_2(Struct_2(vec3<bool>(true, false, true), false, -1287i, false, arg_0.d), false, 2147483647i, Struct_4(Struct_2(vec3<bool>(false, true, true), false, 1i, true, Struct_1(u_input.e, arg_0.d.a, vec2<f32>(-1000f, 2013f), u_input.e, -1242f)))).d, ~vec2<u32>(arg_0.d.b, 41318u)), arg_0, func_2(Struct_2(vec3<bool>(true, false, true), false, 0i, true, Struct_1(arg_0.e, 24519u, vec2<f32>(638f, -103f), u_input.e, arg_0.b)), false, arg_0.c, Struct_4(Struct_2(vec3<bool>(false, false, true), true, u_input.a, false, arg_0.d))).d.c | (u_input.d.x >> (4294967295u % 32u))).d));
    let var_0 = func_4(func_2(func_2(Struct_2(vec3<bool>(false, true, true), false, -u_input.a, true, arg_0.d), true, -2147483647i, Struct_4(Struct_2(vec3<bool>(true, false, false), true, -7363i, true, arg_0.d))).d, true, abs(_wgslsmith_sub_i32(max(arg_0.c, u_input.d.x), _wgslsmith_dot_vec3_i32(u_input.d.wwy, vec3<i32>(u_input.b, -2147483647i, 0i)))), Struct_4(Struct_2(vec3<bool>(true, true, true), 4294967295u <= u_input.e, u_input.a, false, arg_0.d))), arg_0, 0i);
    let var_1 = (1u << (~u_input.e % 32u)) > arg_0.d.b;
    global0 = 4294967295u;
    let var_2 = ~vec2<i32>(1i, arg_0.c);
    return !func_2(Struct_2(vec3<bool>(false, true, true), var_1, 1i, var_1, Struct_1(1u, min(0u, u_input.e), _wgslsmith_f_op_vec2_f32(round(arg_0.d.c)), ~1u, _wgslsmith_f_op_f32(trunc(728f)))), func_2(Struct_2(vec3<bool>(false, var_1, false), any(vec4<bool>(true, var_1, false, true)), var_2.x, var_1 || var_1, var_0), any(select(vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(var_1, var_1, true, var_1), var_1)), _wgslsmith_clamp_i32(arg_0.c, ~(-16031i), i32(-1i) * -19647i), Struct_4(func_2(Struct_2(vec3<bool>(true, false, true), var_1, -1i, var_1, var_0), true, u_input.a, Struct_4(Struct_2(vec3<bool>(false, false, true), var_1, -1i, true, Struct_1(50333u, u_input.e, vec2<f32>(arg_0.d.c.x, var_0.c.x), var_0.d, var_0.c.x)))).d)).b, u_input.c, Struct_4(Struct_2(vec3<bool>(var_1, var_1, true), true, _wgslsmith_mult_i32(u_input.c, -2147483647i), true, func_4(Struct_5(vec4<i32>(arg_0.c, 7797i, var_2.x, 1i), var_1, arg_0.d.c.x, Struct_2(vec3<bool>(var_1, var_1, var_1), true, var_2.x, false, Struct_1(1u, u_input.e, vec2<f32>(1650f, var_0.c.x), var_0.d, -2038f)), vec2<u32>(43331u, 0u)), Struct_3(var_0.c.x, arg_0.a, u_input.b, arg_0.d, var_0.b), arg_0.c)))).d.a.xy;
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: bool) -> i32 {
    let var_0 = select(vec4<bool>(true, false, arg_2, true), select(vec4<bool>(all(vec2<bool>(false, true)), !(!arg_2), arg_2, !arg_2), select(vec4<bool>(u_input.a <= arg_0, true, true, true), !(!vec4<bool>(true, false, true, arg_2)), arg_2), !arg_2), false);
    var var_1 = vec3<u32>(1u, u_input.e, 1u);
    let var_2 = all(func_5(Struct_3(_wgslsmith_f_op_f32(-1571f + _wgslsmith_f_op_f32(636f * -1639f)), 889f, ~u_input.b, func_4(func_2(Struct_2(vec3<bool>(false, true, var_0.x), true, arg_1.x, false, Struct_1(u_input.e, u_input.e, vec2<f32>(561f, -204f), var_1.x, 1818f)), var_0.x, arg_1.x, Struct_4(Struct_2(var_0.zyz, true, u_input.b, true, Struct_1(1u, u_input.e, vec2<f32>(2248f, 1752f), 26084u, 696f)))), Struct_3(115f, 1372f, 1i, Struct_1(u_input.e, 1u, vec2<f32>(2230f, -1978f), 6154u, 885f), var_1.x), ~arg_1.x), ~u_input.e)));
    let var_3 = Struct_3(786f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(493f, 262f))) * 1336f) + _wgslsmith_f_op_f32(round(func_2(func_2(Struct_2(vec3<bool>(var_0.x, var_2, false), false, 1i, var_2, Struct_1(0u, u_input.e, vec2<f32>(1058f, 748f), 0u, -925f)), var_2, arg_1.x, Struct_4(Struct_2(var_0.xwy, true, u_input.b, true, Struct_1(0u, 0u, vec2<f32>(1045f, -519f), 25814u, -401f)))).d, true, -u_input.d.x, Struct_4(Struct_2(var_0.zyx, arg_2, 41643i, false, Struct_1(var_1.x, u_input.e, vec2<f32>(888f, -388f), 8483u, 896f)))).c))), u_input.d.x, Struct_1(74170u, 0u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(928f, -214f)), _wgslsmith_f_op_f32(946f * -609f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1103f, -447f) * vec2<f32>(859f, -1225f))), 58506u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1084f), 1420f))), select(~u_input.e, ~_wgslsmith_mult_u32(var_1.x, var_1.x), true));
    var var_4 = var_0;
    return firstLeadingBit(arg_1.x);
}

fn func_6(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_4(Struct_2(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), select(true, true, false))), true && func_5(Struct_3(-803f, -250f, 61676i, Struct_1(12080u, 0u, vec2<f32>(1072f, 876f), 1u, 202f), u_input.e)).x, -25936i, true, Struct_1(firstLeadingBit(1u), 1u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-697f, -1338f)), min(u_input.e, max(u_input.e, u_input.e)), func_2(func_2(Struct_2(vec3<bool>(true, false, true), false, -2147483647i, false, Struct_1(0u, u_input.e, vec2<f32>(226f, 216f), 65586u, -857f)), false, -1i, Struct_4(Struct_2(vec3<bool>(false, false, true), false, -10414i, true, Struct_1(4294967295u, 25566u, vec2<f32>(553f, -638f), u_input.e, 257f)))).d, true, i32(-1i) * -11689i, Struct_4(Struct_2(vec3<bool>(false, true, true), true, 15796i, false, Struct_1(1u, u_input.e, vec2<f32>(-331f, 482f), 46873u, 1000f)))).c)));
    let var_1 = ~(~(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.e, 70577u, var_0.a.e.b), vec3<u32>(var_0.a.e.a, 13792u, u_input.e)), min(vec3<u32>(0u, u_input.e, 0u), vec3<u32>(1u, 4294967295u, 1u))) << (reverseBits(firstTrailingBit(vec3<u32>(4294967295u, 10523u, 8003u))) % vec3<u32>(32u))));
    var_0 = Struct_4(func_2(Struct_2(vec3<bool>(all(var_0.a.a), func_5(Struct_3(-490f, 1048f, var_0.a.c, Struct_1(u_input.e, 1u, var_0.a.e.c, 4294967295u, -1420f), var_1.x)).x, true), !var_0.a.a.x | !var_0.a.b, 35505i >> (1u % 32u), var_0.a.b, Struct_1(_wgslsmith_mod_u32(u_input.e, var_1.x), var_1.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.e.c.x, var_0.a.e.e) + var_0.a.e.c), ~var_0.a.e.a, _wgslsmith_f_op_f32(var_0.a.e.c.x + 1444f))), var_0.a.b, u_input.d.x, Struct_4(var_0.a)).d);
    var var_2 = true;
    var_0 = Struct_4(Struct_2(vec3<bool>(var_0.a.a.x, any(vec3<bool>(var_0.a.d, true, false)), true), var_0.a.a.x, -5821i, any(!select(vec4<bool>(var_0.a.a.x, true, var_0.a.a.x, var_0.a.b), vec4<bool>(true, true, var_0.a.a.x, var_0.a.d), true)), Struct_1(~func_4(Struct_5(u_input.d, var_0.a.b, var_0.a.e.c.x, Struct_2(vec3<bool>(var_0.a.a.x, var_0.a.d, var_0.a.a.x), false, 2629i, var_0.a.a.x, Struct_1(u_input.e, 0u, var_0.a.e.c, u_input.e, -178f)), var_1.yz), Struct_3(var_0.a.e.c.x, var_0.a.e.c.x, 12542i, Struct_1(u_input.e, 0u, var_0.a.e.c, 28208u, var_0.a.e.e), 0u), var_0.a.c).b, ~0u, var_0.a.e.c, _wgslsmith_clamp_u32(24525u, u_input.e, func_3(-2147483647i, Struct_5(vec4<i32>(var_0.a.c, var_0.a.c, u_input.a, 16776i), var_0.a.a.x, -1518f, var_0.a, var_1.yx), vec3<u32>(u_input.e, 0u, 96488u), vec4<u32>(var_0.a.e.d, var_0.a.e.a, 13052u, 1u))), var_0.a.e.e)));
    return func_4(Struct_5(u_input.d, func_5(Struct_3(_wgslsmith_f_op_f32(var_0.a.e.c.x - 1685f), 642f, 40709i, func_4(Struct_5(vec4<i32>(var_0.a.c, arg_0, -2147483647i, 35341i), true, 1449f, var_0.a, vec2<u32>(0u, u_input.e)), Struct_3(var_0.a.e.c.x, var_0.a.e.e, u_input.b, Struct_1(40368u, 44727u, vec2<f32>(var_0.a.e.e, 626f), var_0.a.e.d, -537f), 14636u), 22255i), 16893u)).x, var_0.a.e.e, Struct_2(var_0.a.a, select(var_0.a.b & true, true, var_0.a.a.x), arg_0, var_0.a.d, Struct_1(~4294967295u, ~8428u, vec2<f32>(-1900f, -2015f), 0u, 506f)), _wgslsmith_add_vec2_u32(abs(var_1.xz), select(var_1.yz, var_1.xx, var_0.a.a.zz)) << (vec2<u32>(~22669u, var_0.a.e.b) % vec2<u32>(32u))), Struct_3(_wgslsmith_div_f32(254f, -509f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-211f)))), _wgslsmith_add_i32(~(~u_input.c), _wgslsmith_mult_i32(var_0.a.c, 32092i)), func_4(Struct_5(firstTrailingBit(u_input.d), false | var_0.a.b, _wgslsmith_f_op_f32(var_0.a.e.e - var_0.a.e.c.x), var_0.a, var_1.xz), Struct_3(var_0.a.e.c.x, 1198f, _wgslsmith_sub_i32(1i, var_0.a.c), Struct_1(0u, 0u, vec2<f32>(var_0.a.e.c.x, var_0.a.e.e), u_input.e, var_0.a.e.e), ~u_input.e), _wgslsmith_dot_vec3_i32(vec3<i32>(9931i, 1i, 0i), u_input.d.zxx) & var_0.a.c), 1u), 16524i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_1(369i, select(u_input.d, -_wgslsmith_add_vec4_i32(u_input.d, vec4<i32>(2147483647i, u_input.d.x, u_input.d.x, -2147483647i)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)))));
    global0 = ~(~(~_wgslsmith_mult_u32(u_input.e, 38834u))) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(func_2(Struct_2(vec3<bool>(true, true, true), false, u_input.b, true, var_0), true, u_input.c, Struct_4(Struct_2(vec3<bool>(false, true, true), true, -10199i, false, var_0))).e, min(vec2<u32>(u_input.e, var_0.b), vec2<u32>(u_input.e, var_0.d))), ~(~vec2<u32>(0u, u_input.e))), vec2<u32>(~3513u, abs(1u)) & _wgslsmith_clamp_vec2_u32(max(vec2<u32>(1u, u_input.e), vec2<u32>(var_0.b, u_input.e)), ~vec2<u32>(1u, 0u), _wgslsmith_add_vec2_u32(vec2<u32>(28991u, u_input.e), vec2<u32>(var_0.a, 28440u)))) % 32u);
    global0 = func_6(select(~_wgslsmith_mod_i32(u_input.b, 42378i), 88927i, true)).b;
    let var_1 = Struct_5(_wgslsmith_clamp_vec4_i32(select(-abs(vec4<i32>(u_input.a, u_input.b, u_input.c, u_input.a)), u_input.d, select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), true), true)), u_input.d, -_wgslsmith_div_vec4_i32(func_2(Struct_2(vec3<bool>(true, true, false), false, -63975i, true, var_0), true, -33250i, Struct_4(Struct_2(vec3<bool>(false, true, false), false, 2147483647i, false, var_0))).a, ~vec4<i32>(u_input.c, u_input.b, u_input.a, u_input.d.x))), !((_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, 0u, var_0.a), vec3<u32>(16047u, var_0.b, var_0.a)) <= (var_0.a ^ u_input.e)) & true), var_0.e, Struct_2(vec3<bool>(true, false, u_input.e >= select(u_input.e, var_0.d, true)), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), false), true)), -u_input.d.x, false, func_4(func_2(func_2(Struct_2(vec3<bool>(true, true, false), false, -31104i, false, var_0), false, u_input.c, Struct_4(Struct_2(vec3<bool>(true, false, true), true, -50470i, true, var_0))).d, false, i32(-1i) * -10265i, Struct_4(Struct_2(vec3<bool>(false, true, false), true, u_input.b, true, var_0))), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -106f), _wgslsmith_f_op_f32(step(731f, -2377f)), 1i, func_2(Struct_2(vec3<bool>(false, true, true), false, u_input.a, true, Struct_1(1u, 4294967295u, var_0.c, var_0.b, var_0.e)), true, 2147483647i, Struct_4(Struct_2(vec3<bool>(true, false, false), true, u_input.b, false, var_0))).d.e, 1u), ~u_input.c)), vec2<u32>(~1u, 1u) ^ ~(~func_2(Struct_2(vec3<bool>(true, true, true), true, u_input.d.x, true, Struct_1(var_0.d, 4294967295u, vec2<f32>(var_0.c.x, -2201f), u_input.e, -563f)), true, u_input.c, Struct_4(Struct_2(vec3<bool>(true, true, false), true, u_input.d.x, false, var_0))).e));
    global0 = ~(~0u);
    let x = u_input.a;
    s_output = StorageBuffer(-var_1.d.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_0.c, _wgslsmith_div_vec2_f32(vec2<f32>(-701f, -155f), vec2<f32>(var_0.c.x, -1000f))), vec2<f32>(var_1.d.e.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1023f)))), 922f, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 2454f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.e, var_1.d.e.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c))))), select(firstLeadingBit(_wgslsmith_div_vec3_u32(min(vec3<u32>(0u, u_input.e, u_input.e), vec3<u32>(4294967295u, 36707u, u_input.e)), abs(vec3<u32>(var_1.d.e.a, 19709u, u_input.e)))), _wgslsmith_mult_vec3_u32(min(vec3<u32>(26521u, 0u, 1u) & vec3<u32>(0u, var_0.a, u_input.e), vec3<u32>(1820u, var_1.e.x, var_1.d.e.d)), vec3<u32>(4294967295u, 1u, 11566u)), var_1.b | (true | !var_1.d.a.x)));
}

