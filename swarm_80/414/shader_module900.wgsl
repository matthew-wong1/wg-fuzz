struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
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

var<private> global0: i32 = -8228i;

var<private> global1: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-696f, _wgslsmith_f_op_f32(ceil(931f)), arg_2.b) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(502f, arg_2.c, global1.b))))))));
    global0 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i & -(~global1.c.x), min(global1.c.x, ~global1.c.x), _wgslsmith_dot_vec3_i32(~global1.c, global1.c)), global1.c.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1016f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(286f, -1141f)))), global1.a.b))));
    let var_2 = Struct_1(global1.a.a, var_1.x, -1000f);
    global1 = Struct_2(Struct_1(true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.b)) - _wgslsmith_f_op_f32(-1175f * var_1.x)), ~0u != u_input.b.x)), _wgslsmith_f_op_f32(-1052f * -1000f)), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c)) + _wgslsmith_f_op_f32(1616f * _wgslsmith_f_op_f32(ceil(1029f))))), global1.c);
    return u_input.b.x;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: vec2<f32>) -> vec4<f32> {
    global0 = -2147483647i;
    let var_0 = Struct_4(_wgslsmith_div_f32(-1000f, arg_0), !select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(arg_1.a.a, false, arg_1.a.a, arg_1.a.a), vec4<bool>(true, false, global1.a.a, false), vec4<bool>(arg_1.a.a, arg_1.a.a, arg_1.a.a, global1.a.a)), !vec4<bool>(false, arg_1.a.a, false, arg_1.a.a), arg_1.a.a), !select(vec4<bool>(global1.a.a, global1.a.a, arg_1.a.a, arg_1.a.a), vec4<bool>(arg_1.a.a, arg_1.a.a, true, arg_1.a.a), global1.a.a)), vec2<bool>(!(false && !global1.a.a), global1.a.a), -1053f);
    var var_1 = var_0;
    let var_2 = -firstLeadingBit(select(~(~vec4<i32>(global1.c.x, 0i, -16214i, 16735i)), vec4<i32>(_wgslsmith_mod_i32(22200i, global1.c.x), -2147483647i, u_input.a, firstTrailingBit(-32531i)), true));
    var_1 = var_0;
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(407f, var_0.d, 1455f, 816f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-645f, global1.a.c, 1000f, -910f)))))), vec4<f32>(-634f, _wgslsmith_f_op_f32(var_1.d - global1.a.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.b)) * _wgslsmith_f_op_f32(min(arg_3.x, var_1.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1450f))))));
}

fn func_2(arg_0: Struct_5) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(714f, arg_0.b, abs(func_3(true, global1.c.x >> (_wgslsmith_mult_u32(5243u, 1u) % 32u), Struct_1(false, _wgslsmith_f_op_f32(1728f + -493f), _wgslsmith_f_op_f32(1063f - -313f)))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1133f * -1257f), _wgslsmith_div_f32(global1.a.c, arg_0.a.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1629f))) + 863f))));
    var var_1 = arg_0.b.a;
    var var_2 = vec3<bool>(select(global1.a.a, !global1.a.a, arg_0.b.a.a), !(var_0.x <= -1000f), all(select(vec3<bool>(global1.a.a, true, arg_0.b.a.a), !select(vec3<bool>(false, global1.a.a, global1.a.a), vec3<bool>(false, false, true), global1.a.a), true || any(arg_0.c))));
    var_1 = Struct_1(!(1613f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), arg_0.a.b, var_1.c);
    let var_3 = Struct_4(-553f, vec4<bool>(!var_2.x | all(!vec3<bool>(arg_0.b.a.a, false, global1.a.a)), all(select(select(var_2.zx, arg_0.c, arg_0.c), vec2<bool>(true, arg_0.c.x), vec2<bool>(var_1.a, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.a.b))) <= _wgslsmith_f_op_vec4_f32(func_4(-846f, Struct_2(Struct_1(false, var_1.b, -827f), 1443f, global1.c), firstTrailingBit(u_input.b.x), vec2<f32>(-1869f, arg_0.d))).x, var_1.a), vec2<bool>((_wgslsmith_f_op_f32(f32(-1f) * -512f) >= var_0.x) || global1.a.a, !var_1.a), var_1.c);
    return true;
}

fn func_5(arg_0: vec2<bool>, arg_1: bool) -> Struct_4 {
    let var_0 = false;
    var var_1 = select(vec4<bool>(false, !global1.a.a, -1179f <= _wgslsmith_f_op_f32(global1.a.c * -113f), true), vec4<bool>(false, true && func_2(Struct_5(Struct_1(true, -433f, global1.a.b), Struct_2(Struct_1(var_0, global1.a.c, -281f), -1164f, vec3<i32>(u_input.a, u_input.a, -37609i)), arg_0, 755f)), true, !(_wgslsmith_f_op_vec4_f32(func_4(-166f, Struct_2(Struct_1(true, -1332f, -845f), global1.b, global1.c), u_input.b.x, vec2<f32>(global1.b, -141f))).x == 2141f)), var_0);
    var var_2 = ~u_input.b.x;
    var_1 = select(vec4<bool>(_wgslsmith_mult_i32(u_input.a & global1.c.x, -6999i) < u_input.a, true, true, func_2(Struct_5(global1.a, Struct_2(global1.a, 240f, global1.c), vec2<bool>(true, true), _wgslsmith_div_f32(-1407f, 108f)))), vec4<bool>(global1.a.a, (global1.a.b < _wgslsmith_f_op_f32(global1.a.c - -2308f)) || var_1.x, true, global1.a.a), func_2(Struct_5(global1.a, Struct_2(global1.a, _wgslsmith_div_f32(global1.b, -574f), -vec3<i32>(-2147483647i, u_input.a, u_input.a)), var_1.yz, _wgslsmith_f_op_f32(select(global1.b, global1.a.b, arg_0.x)))));
    var_2 = ~(~4294967295u);
    return Struct_4(-1147f, !(!(!select(vec4<bool>(var_0, false, false, var_0), vec4<bool>(var_0, arg_1, arg_1, arg_1), false))), select(select(var_1.xz, !select(vec2<bool>(false, true), var_1.yx, false), var_1.zw), select(vec2<bool>(all(var_1.yxx), all(vec4<bool>(false, true, var_0, true))), !(!arg_0), vec2<bool>(global1.a.a, true || arg_0.x)), var_1.wz), 1219f);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: vec4<u32>, arg_3: vec2<i32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * -1118f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x)))));
    global0 = -global1.c.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(arg_0));
    let var_2 = func_5(arg_1.yy, !func_2(Struct_5(Struct_1(global1.a.a, -465f, 566f), Struct_2(Struct_1(false, var_1.x, 993f), -527f, global1.c), vec2<bool>(global1.a.a, true), -401f)));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-410f, _wgslsmith_f_op_f32(min(-2169f, -1037f)))), 922f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.d, var_1.x, 390f), vec3<f32>(arg_0.x, var_1.x, var_2.a)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, global1.b, 1273f) * vec3<f32>(var_0, -856f, var_2.a))), vec3<f32>(var_1.x, _wgslsmith_div_f32(1000f, -306f), _wgslsmith_f_op_f32(round(var_0))), func_2(Struct_5(global1.a, Struct_2(Struct_1(false, 205f, var_2.a), var_2.a, vec3<i32>(u_input.a, 7262i, arg_3.x)), vec2<bool>(arg_1.x, global1.a.a), -2947f))))));
    return func_5(vec2<bool>(!var_2.b.x, true), false);
}

fn func_6(arg_0: Struct_4, arg_1: Struct_4, arg_2: u32, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = vec4<bool>(!(!arg_1.b.x), any(!func_1(vec2<f32>(-1000f, global1.b), func_1(vec2<f32>(arg_3.x, 1000f), arg_0.b, u_input.b, global1.c.yx).b, ~u_input.b, vec2<i32>(global1.c.x, 37108i)).b.xx), true, true);
    let var_1 = Struct_1(false, _wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(-func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-163f, arg_1.d)), !select(var_0, vec4<bool>(true, true, arg_0.c.x, false), true), ~u_input.b, vec2<i32>(min(0i, 0i), global1.c.x)).a));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(func_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(162f, 617f))), arg_1.b, vec4<u32>(arg_2, 35050u, u_input.b.x, 0u), vec2<i32>(40928i, global1.c.x)).a)), 481f) - arg_0.d);
    global1 = Struct_2(Struct_1(!func_1(arg_3.xx, func_1(arg_3.zy, vec4<bool>(false, arg_0.b.x, arg_1.c.x, arg_1.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, arg_2), global1.c.yz).b, u_input.b, vec2<i32>(-27736i, 1i)).c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a))))), var_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(sign(arg_0.a)))), global1.c);
    var var_3 = firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, ~1u, firstTrailingBit(arg_2)) ^ _wgslsmith_clamp_vec4_u32(u_input.b, _wgslsmith_mod_vec4_u32(u_input.b, u_input.b), vec4<u32>(41724u, 45139u, 4294967295u, arg_2) ^ u_input.b), u_input.b));
    return Struct_2(Struct_1(var_0.x, _wgslsmith_f_op_f32(-611f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b))), _wgslsmith_f_op_f32(round(840f))), _wgslsmith_f_op_f32(select(arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1066f - -516f)) - _wgslsmith_f_op_vec4_f32(func_4(-383f, Struct_2(var_1, arg_0.a, global1.c), u_input.b.x, _wgslsmith_f_op_vec4_f32(func_4(428f, Struct_2(Struct_1(false, 390f, global1.a.b), 327f, global1.c), 1u, vec2<f32>(-1210f, var_1.c))).wy)).x), all(func_5(select(vec2<bool>(false, global1.a.a), arg_1.c, vec2<bool>(arg_1.c.x, global1.a.a)), var_1.a).c))), reverseBits(vec3<i32>(0i, min(global1.c.x, _wgslsmith_add_i32(global1.c.x, u_input.a)), firstTrailingBit(global1.c.x << (14089u % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_6(func_1(vec2<f32>(global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.a.b)) + global1.a.b)), !select(vec4<bool>(global1.a.a, global1.a.a, global1.a.a, true), select(vec4<bool>(true, true, true, global1.a.a), vec4<bool>(false, global1.a.a, true, global1.a.a), vec4<bool>(false, global1.a.a, false, false)), vec4<bool>(true, true, true, global1.a.a)), _wgslsmith_div_vec4_u32(vec4<u32>(~u_input.b.x, _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x), 1u, 35467u), reverseBits(u_input.b) << (_wgslsmith_div_vec4_u32(u_input.b, u_input.b) % vec4<u32>(32u))), global1.c.xx), func_5(vec2<bool>(true, global1.a.a), func_2(Struct_5(Struct_1(false, 410f, global1.a.b), Struct_2(global1.a, global1.a.c, vec3<i32>(global1.c.x, global1.c.x, u_input.a)), vec2<bool>(global1.a.a, true), 566f))), u_input.b.x, vec3<f32>(-668f, -1942f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)))));
    global0 = countOneBits(1i) >> (0u % 32u);
    var var_0 = _wgslsmith_sub_vec2_u32(~u_input.b.xz, _wgslsmith_sub_vec2_u32(~u_input.b.xw, (u_input.b.wz >> (vec2<u32>(u_input.b.x, 92200u) % vec2<u32>(32u))) | _wgslsmith_sub_vec2_u32(u_input.b.xx, vec2<u32>(75686u, u_input.b.x))) & (select(~vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.zw, true) | abs(u_input.b.ww)));
    let var_1 = !(43902i != u_input.a);
    var var_2 = vec4<i32>(_wgslsmith_div_i32(u_input.a, countOneBits(reverseBits(-u_input.a))), _wgslsmith_clamp_i32(~(-reverseBits(-12716i)), 7494i, u_input.a), global1.c.x, firstTrailingBit(~(-2147483647i)));
    var var_3 = true;
    global1 = Struct_2(func_6(func_5(!func_5(vec2<bool>(global1.a.a, var_1), global1.a.a).c, -445f == _wgslsmith_f_op_f32(988f * global1.b)), Struct_4(_wgslsmith_f_op_f32(-416f + _wgslsmith_f_op_f32(-2107f - 1115f)), vec4<bool>(var_1, global1.a.a, true, all(vec2<bool>(global1.a.a, true))), select(vec2<bool>(global1.a.a, var_1), func_1(vec2<f32>(1688f, 578f), vec4<bool>(var_1, true, false, true), vec4<u32>(1u, 1u, u_input.b.x, 4294967295u), var_2.xy).b.xx, vec2<bool>(true, true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.a.c)))), _wgslsmith_mod_u32(var_0.x, ~_wgslsmith_mod_u32(u_input.b.x, u_input.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, global1.b, 782f)), vec3<f32>(global1.b, -1371f, -966f), true)))).a, _wgslsmith_f_op_f32(abs(global1.a.b)), _wgslsmith_add_vec3_i32(-countOneBits(vec3<i32>(var_2.x, global1.c.x, 0i)), -vec3<i32>(~global1.c.x, ~u_input.a, -53985i)));
    global1 = func_6(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -984f))), !func_5(vec2<bool>(true, var_1), !global1.a.a).b, !vec2<bool>(var_1, true), -765f), Struct_4(-1000f, vec4<bool>((global1.a.a & global1.a.a) && false, !any(vec4<bool>(global1.a.a, global1.a.a, true, var_1)), var_1, -1139f < _wgslsmith_f_op_f32(min(-517f, global1.a.b))), func_5(vec2<bool>(all(vec3<bool>(var_1, global1.a.a, var_1)), global1.a.a), false).c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b, func_6(Struct_4(global1.b, vec4<bool>(var_1, true, true, true), vec2<bool>(var_1, true), global1.a.b), Struct_4(596f, vec4<bool>(true, true, true, false), vec2<bool>(var_1, false), -2642f), u_input.b.x, vec3<f32>(-560f, global1.b, -1264f)).a.b))), firstTrailingBit(42301u), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1717f + _wgslsmith_f_op_f32(-global1.b)))), -2011f, _wgslsmith_f_op_f32(f32(-1f) * -644f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1130f - 179f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1054f, global1.b))), _wgslsmith_f_op_f32(abs(712f)), global1.b)));
}

