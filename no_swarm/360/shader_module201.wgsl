struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<bool>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: bool,
    e: f32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(i32(-2147483648)), Struct_1(true, 900f, vec2<bool>(true, false), vec4<bool>(false, false, false, false), 1u), vec3<f32>(-155f, 1000f, -857f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    global0 = Struct_3(Struct_2(global0.a.a), global0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.c * vec3<f32>(742f, global0.c.x, 709f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, -141f, -207f))))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(global0.c, vec3<f32>(911f, -661f, global0.b.b)))))));
    global0 = Struct_3(Struct_2(_wgslsmith_dot_vec4_i32(~(-vec4<i32>(1i, global0.a.a, -23364i, -14669i)), ~(vec4<i32>(1i, -2147483647i, 0i, global0.a.a) ^ vec4<i32>(global0.a.a, global0.a.a, -31314i, global0.a.a)))), Struct_1(global0.b.d.x, global0.c.x, global0.b.c, vec4<bool>(true, !global0.b.a, false, true), u_input.a), global0.c);
    global0 = Struct_3(global0.a, Struct_1(global0.b.b < _wgslsmith_div_f32(_wgslsmith_f_op_f32(281f - global0.c.x), _wgslsmith_f_op_f32(-global0.b.b)), global0.c.x, vec2<bool>(true, _wgslsmith_f_op_f32(max(global0.b.b, -2083f)) <= global0.c.x), select(select(vec4<bool>(true, arg_0.x, false, global0.b.c.x), global0.b.d, vec4<bool>(true, true, true, true)), !vec4<bool>(false, global0.b.d.x, false, false), true), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.a, global0.b.e), vec3<u32>(u_input.a, global0.b.e, 40857u) & vec3<u32>(global0.b.e, 12412u, 35761u)), ~vec3<u32>(1u, 1u, 1u))), vec3<f32>(global0.b.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-395f, -469f)), global0.b.b) * global0.b.b), global0.b.b));
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2585f + _wgslsmith_f_op_f32(-global0.c.x)))), 108f)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global0.c)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1830f, global0.b.b, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-423f, global0.b.b, -1082f)))), vec3<bool>(global0.b.a | global0.b.a, global0.b.a, !global0.b.a))) * vec3<f32>(_wgslsmith_f_op_f32(round(-140f)), 1617f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1875f - global0.c.x)))));
    return global0.c.x;
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: Struct_5) -> vec3<f32> {
    global0 = Struct_3(global0.a, Struct_1(arg_1.d, global0.b.b, arg_2.d.zy, vec4<bool>(!(true | arg_2.b.c.x), arg_2.c.x, _wgslsmith_f_op_f32(round(-392f)) < arg_0, arg_1.d), 1u), vec3<f32>(1007f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a.x, 769f))), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(715f, 659f)) - _wgslsmith_f_op_f32(min(1085f, arg_0))))));
    var var_0 = Struct_4(global0.c.xz, vec2<u32>(_wgslsmith_dot_vec2_u32(min(arg_1.b, arg_1.b), arg_1.b & _wgslsmith_mod_vec2_u32(arg_1.b, vec2<u32>(u_input.a, u_input.a))), abs(48005u)), vec3<f32>(_wgslsmith_div_f32(1541f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1283f, global0.b.b)) * _wgslsmith_f_op_f32(abs(arg_2.b.b)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x + -279f)))), global0.c.x), arg_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_2.b.d.yzz))));
    var var_1 = arg_2.b;
    var var_2 = vec4<u32>(arg_2.b.e, firstLeadingBit(_wgslsmith_div_u32(~(var_1.e & arg_2.b.e), ~abs(var_1.e))), ~arg_2.b.e, 28876u);
    global0 = Struct_3(global0.a, global0.b, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.b, 321f, arg_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.b, _wgslsmith_f_op_f32(sign(global0.c.x)), _wgslsmith_f_op_f32(arg_0 - 376f)) + vec3<f32>(-624f, -1456f, _wgslsmith_div_f32(586f, var_0.c.x))), global0.b.a)));
    return var_0.c;
}

fn func_2(arg_0: vec3<bool>) -> bool {
    var var_0 = Struct_3(Struct_2(_wgslsmith_div_i32(global0.a.a, 61078i)), global0.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-2877f, -238f, _wgslsmith_f_op_f32(f32(-1f) * -1203f)) + global0.c));
    var_0 = Struct_3(var_0.a, global0.b, global0.c);
    global0 = Struct_3(var_0.a, Struct_1(!arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1018f, _wgslsmith_f_op_f32(-var_0.c.x))), arg_0.yy, select(select(global0.b.d, vec4<bool>(var_0.b.c.x, var_0.b.c.x, global0.b.a, var_0.b.d.x), global0.b.d), !(!vec4<bool>(global0.b.d.x, var_0.b.a, true, arg_0.x)), select(!vec4<bool>(false, arg_0.x, true, true), global0.b.d, global0.b.d)), 4294967295u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1233f, var_0.c.x, var_0.b.d.x)) - var_0.c.x), Struct_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-208f, -456f), vec2<f32>(var_0.b.b, 1434f), arg_0.xy)), vec2<u32>(0u, 11088u), var_0.c, false, _wgslsmith_f_op_f32(func_3(vec3<bool>(var_0.b.d.x, var_0.b.d.x, true)))), Struct_5(!vec4<bool>(var_0.b.c.x, false, false, global0.b.a), global0.b, vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, true, true, false)))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b.b), -266f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-936f))), _wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(sign(-434f)))), vec3<bool>(all(global0.b.d), true, var_0.b.d.x & false))));
    var var_1 = var_0.b;
    let var_2 = var_0.b.e;
    return false;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<f32>) -> Struct_4 {
    var var_0 = Struct_3(Struct_2(~countOneBits(firstLeadingBit(global0.a.a))), arg_0, global0.c);
    global0 = Struct_3(global0.a, Struct_1(all(var_0.b.d), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.c.x - _wgslsmith_f_op_f32(-arg_0.b)), var_0.b.b)), arg_0.d.xx, !select(vec4<bool>(var_0.b.d.x, global0.b.c.x, false, false), arg_0.d, vec4<bool>(var_0.b.c.x, var_0.b.c.x, false, false)), var_0.b.e), vec3<f32>(_wgslsmith_f_op_f32(exp2(global0.c.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -870f))), 1506f));
    let var_1 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.c.x - -1000f), global0.c.x)))), _wgslsmith_div_f32(-1923f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-975f * arg_0.b), 442f, !global0.b.c.x)))), ~abs(vec2<u32>(~0u, ~arg_0.e)), global0.c, false, _wgslsmith_f_op_f32(-arg_2.x));
    global0 = Struct_3(Struct_2(arg_1.x), var_0.b, vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(min(-1358f, 858f)), arg_2.x));
    let var_2 = Struct_3(global0.a, Struct_1(~(4294967295u >> (global0.b.e % 32u)) == _wgslsmith_mod_u32(min(var_1.b.x, var_0.b.e), ~arg_0.e), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), arg_0.b)), vec2<bool>(!arg_0.c.x, true), select(vec4<bool>(arg_0.c.x, !var_1.d, global0.b.d.x, global0.c.x > 1157f), arg_0.d, select(select(vec4<bool>(true, false, true, true), vec4<bool>(arg_0.a, var_0.b.d.x, true, global0.b.d.x), var_0.b.a), !vec4<bool>(var_1.d, false, global0.b.d.x, arg_0.a), arg_0.d)), _wgslsmith_clamp_u32(countOneBits(u_input.a), 24861u, ~arg_0.e) << (u_input.a % 32u)), var_1.c);
    return Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1055f, 756f), global0.c.zz)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1927f, -280f) - vec2<f32>(arg_2.x, global0.c.x)))) * var_0.c.xz), ~abs(~(~vec2<u32>(35008u, 4294967295u))), vec3<f32>(_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(428f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_2.x)), _wgslsmith_f_op_f32(func_3(!arg_0.d.zxx)), any(vec4<bool>(global0.b.d.x, true, false, false)) | !var_2.b.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-702f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.c.x * arg_0.b), _wgslsmith_f_op_f32(trunc(arg_0.b)))))), var_0.b.d.x, arg_2.x);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<bool>) -> u32 {
    let var_0 = global0.c;
    let var_1 = func_5(Struct_1(func_2(!global0.b.d.xxw), _wgslsmith_f_op_f32(-1985f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.b) * _wgslsmith_div_f32(-968f, var_0.x))), arg_1.xx, global0.b.d, 19979u), ~max(-vec4<i32>(global0.a.a, -22647i, global0.a.a, global0.a.a), vec4<i32>(0i, global0.a.a, 21328i, 12660i) << (vec4<u32>(20888u, 47523u, u_input.a, global0.b.e) % vec4<u32>(32u))) >> (vec4<u32>(firstLeadingBit(global0.b.e | 4294967295u), u_input.a, _wgslsmith_mult_u32(~68761u, u_input.a), ~global0.b.e) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(global0.c + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)), -479f, global0.b.b)));
    global0 = Struct_3(Struct_2(countOneBits(_wgslsmith_div_i32(-24046i, -84592i) | _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.a, global0.a.a), vec2<i32>(global0.a.a, global0.a.a)))), Struct_1(var_1.d, var_0.x, !arg_0, !(!(!global0.b.d)), ~_wgslsmith_div_u32(global0.b.e, var_1.b.x)), vec3<f32>(var_0.x, 907f, var_1.e));
    global0 = Struct_3(Struct_2(firstLeadingBit(-reverseBits(-2147483647i))), global0.b, global0.c);
    let var_2 = any(global0.b.d);
    return global0.b.e;
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: vec4<bool>, arg_3: Struct_3) -> Struct_3 {
    global0 = arg_3;
    global0 = Struct_3(arg_0, arg_3.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.c) * vec3<f32>(1938f, arg_3.c.x, -1142f)) + vec3<f32>(_wgslsmith_f_op_f32(435f + 892f), global0.b.b, _wgslsmith_f_op_f32(global0.b.b * 227f)))));
    global0 = Struct_3(global0.a, Struct_1(all(select(arg_3.b.d.yyx, vec3<bool>(arg_2.x, global0.b.c.x, false), false & arg_3.b.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3.b.b))) * _wgslsmith_f_op_f32(-269f * _wgslsmith_f_op_f32(-arg_3.c.x))), arg_3.b.d.zy, select(!arg_3.b.d, !vec4<bool>(arg_3.b.a, true, false, true), any(arg_2)), 0u), global0.c);
    var var_0 = i32(-1i) * -49962i;
    global0 = Struct_3(Struct_2(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(select(vec3<i32>(arg_0.a, -4780i, -68661i), vec3<i32>(arg_0.a, 55909i, arg_3.a.a), arg_2.x), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a, arg_3.a.a, arg_3.a.a), vec3<i32>(arg_0.a, 1i, -28495i))), ~(~vec3<i32>(arg_0.a, -1i, -2i)))), arg_3.b, _wgslsmith_f_op_vec3_f32(arg_3.c + arg_3.c));
    return Struct_3(Struct_2(arg_3.a.a & firstTrailingBit(2147483647i)), Struct_1(true & (global0.a.a <= ~global0.a.a), 171f, select(!select(global0.b.d.ww, vec2<bool>(arg_3.b.a, true), global0.b.d.zw), select(global0.b.c, !global0.b.c, vec2<bool>(true, false)), select(!vec2<bool>(false, arg_3.b.a), arg_3.b.d.wz, vec2<bool>(arg_3.b.d.x, global0.b.a))), arg_3.b.d, firstLeadingBit(~reverseBits(arg_1))), global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(global0.b.d.xzy);
    global0 = func_6(Struct_2(46810i), 24568u, vec4<bool>(all(!global0.b.d.ywx), any(!(!vec2<bool>(var_0, true))), true, var_0), Struct_3(Struct_2(global0.a.a), Struct_1(any(select(global0.b.c, vec2<bool>(global0.b.c.x, false), var_0)), global0.c.x, global0.b.d.zz, !(!vec4<bool>(var_0, global0.b.a, var_0, false)), func_1(!global0.b.d.zw, vec4<bool>(var_0, true, false, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-171f, -1316f, global0.b.b)) + vec3<f32>(-3156f, global0.b.b, -872f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.c.xy + _wgslsmith_f_op_vec2_f32(sign(func_5(global0.b, select(vec4<i32>(86712i, -1i, global0.a.a, -1i), vec4<i32>(-53469i, -22445i, 1491i, global0.a.a), vec4<bool>(var_0, false, false, global0.b.c.x)), vec3<f32>(-387f, -642f, global0.c.x)).a))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(global0.c.xy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.c.yx, vec2<f32>(-1000f, -1000f), !global0.b.c)) + global0.c.yx), func_6(Struct_2(-75876i), min(u_input.a, 57121u), !func_6(Struct_2(global0.a.a), 4294967295u, global0.b.d, Struct_3(Struct_2(global0.a.a), global0.b, global0.c)).b.d, Struct_3(Struct_2(48652i), Struct_1(var_0, -1039f, global0.b.c, vec4<bool>(true, var_0, var_0, false), global0.b.e), global0.c)).b.c.x)));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x)));
    global0 = func_6(func_6(func_6(global0.a, max(1u, min(9133u, 11779u)), vec4<bool>(func_6(Struct_2(-1i), 16437u, global0.b.d, Struct_3(Struct_2(-2147483647i), global0.b, global0.c)).b.c.x, var_0, true, 284f < global0.c.x), func_6(Struct_2(36942i), global0.b.e << (4294967295u % 32u), global0.b.d, func_6(global0.a, u_input.a, global0.b.d, Struct_3(Struct_2(-27948i), global0.b, vec3<f32>(global0.b.b, -1186f, -222f))))).a, 52919u | global0.b.e, global0.b.d, Struct_3(func_6(func_6(global0.a, 4294967295u, vec4<bool>(true, false, false, var_0), Struct_3(Struct_2(-23923i), global0.b, vec3<f32>(-166f, 1242f, -460f))).a, _wgslsmith_mult_u32(24298u, u_input.a), global0.b.d, Struct_3(Struct_2(global0.a.a), Struct_1(var_0, -127f, vec2<bool>(false, true), global0.b.d, 0u), global0.c)).a, Struct_1(var_2 == 465f, _wgslsmith_f_op_f32(abs(564f)), vec2<bool>(false, false), !global0.b.d, max(29823u, 35711u)), vec3<f32>(var_1.x, _wgslsmith_f_op_f32(ceil(809f)), _wgslsmith_f_op_f32(996f + global0.b.b)))).a, countOneBits(42273u), vec4<bool>(global0.b.d.x, var_2 != _wgslsmith_f_op_f32(f32(-1f) * -492f), !global0.b.c.x, global0.b.d.x), Struct_3(global0.a, global0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global0.c)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1841f, var_1.x, var_2)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, global0.c.x, var_2) + global0.c)))));
    let var_3 = !(!func_5(global0.b, max(_wgslsmith_add_vec4_i32(vec4<i32>(3494i, global0.a.a, global0.a.a, -8463i), vec4<i32>(global0.a.a, global0.a.a, -1i, 1i)), vec4<i32>(-1i, global0.a.a, 0i, 14188i)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2, var_2, 716f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(319f, var_2, 2236f)))))).d);
    global0 = func_6(global0.a, global0.b.e, select(select(select(!vec4<bool>(true, true, var_0, true), select(global0.b.d, global0.b.d, global0.b.d), !global0.b.c.x), !select(global0.b.d, vec4<bool>(false, global0.b.d.x, false, false), true), all(global0.b.c)), func_6(func_6(global0.a, _wgslsmith_add_u32(u_input.a, 20663u), global0.b.d, Struct_3(Struct_2(global0.a.a), global0.b, global0.c)).a, ~(~u_input.a), global0.b.d, Struct_3(Struct_2(2147483647i), func_6(global0.a, global0.b.e, global0.b.d, Struct_3(global0.a, global0.b, vec3<f32>(-123f, -1354f, -1108f))).b, vec3<f32>(-351f, global0.b.b, global0.b.b))).b.d, vec4<bool>(false, !(!var_3), true, var_0)), Struct_3(global0.a, func_6(func_6(func_6(global0.a, u_input.a, vec4<bool>(var_3, true, var_3, global0.b.d.x), Struct_3(Struct_2(-2147483647i), Struct_1(true, var_1.x, vec2<bool>(true, false), global0.b.d, 45756u), vec3<f32>(var_2, global0.b.b, global0.c.x))).a, 4294967295u, global0.b.d, Struct_3(Struct_2(global0.a.a), global0.b, global0.c)).a, _wgslsmith_sub_u32(~global0.b.e, firstLeadingBit(global0.b.e)), !vec4<bool>(var_0, true, true, global0.b.c.x), Struct_3(global0.a, global0.b, global0.c)).b, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-644f, global0.b.b, 488f), vec3<f32>(-1608f, -926f, var_2)), _wgslsmith_f_op_vec3_f32(func_4(var_1.x, Struct_4(global0.c.xy, vec2<u32>(global0.b.e, 1u), vec3<f32>(global0.c.x, var_2, var_1.x), global0.b.d.x, 1580f), Struct_5(vec4<bool>(true, true, global0.b.d.x, var_3), global0.b, vec4<bool>(false, var_0, var_3, true), global0.b.d)))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -194f), 1118f, -1129f))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-124f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x) + _wgslsmith_f_op_f32(var_2 - var_2))) * _wgslsmith_f_op_f32(global0.c.x * _wgslsmith_f_op_f32(sign(func_5(global0.b, vec4<i32>(global0.a.a, 0i, global0.a.a, 2147483647i), global0.c).c.x)))) - _wgslsmith_f_op_f32(max(568f, var_2)));
    var var_5 = ~(vec4<i32>(global0.a.a, (global0.a.a | -49371i) >> (u_input.a % 32u), -(~0i), ~1i) & vec4<i32>(global0.a.a | -global0.a.a, global0.a.a & min(global0.a.a, 5026i), -global0.a.a & ~2147483647i, -30583i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(vec3<u32>(abs(47053u << (global0.b.e % 32u)), max(func_5(Struct_1(false, var_2, vec2<bool>(global0.b.c.x, var_0), vec4<bool>(false, true, var_0, global0.b.d.x), u_input.a), vec4<i32>(global0.a.a, global0.a.a, global0.a.a, var_5.x), vec3<f32>(global0.c.x, global0.b.b, global0.b.b)).b.x, _wgslsmith_div_u32(global0.b.e, 0u)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(global0.b.e, u_input.a), abs(global0.b.e))), ~(~vec3<u32>(global0.b.e, global0.b.e, 4294967295u) ^ vec3<u32>(31615u, 4294967295u, 94022u)), ~(~vec3<u32>(0u, global0.b.e, global0.b.e)) | _wgslsmith_clamp_vec3_u32(vec3<u32>(10324u, 4294967295u, u_input.a), vec3<u32>(117150u, u_input.a, global0.b.e), ~vec3<u32>(19452u, 6985u, global0.b.e))), ~vec2<u32>(_wgslsmith_add_u32(16422u, 12693u), _wgslsmith_dot_vec3_u32(vec3<u32>(31291u, 0u, 1u), vec3<u32>(35346u, u_input.a, 1u))) | _wgslsmith_mult_vec2_u32(~func_5(global0.b, vec4<i32>(var_5.x, -2147483647i, var_5.x, -1i), vec3<f32>(-937f, global0.c.x, 1000f)).b, _wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(global0.b.e, global0.b.e)), _wgslsmith_div_vec2_u32(vec2<u32>(global0.b.e, u_input.a), vec2<u32>(global0.b.e, global0.b.e)))));
}

