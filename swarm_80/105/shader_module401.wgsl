struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec3<bool>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: bool,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(233f, -2100f, 1816f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 244f, 340f) - vec3<f32>(1430f, -122f, -1497f)))), vec3<f32>(-100f, -1233f, _wgslsmith_f_op_f32(f32(-1f) * -136f))))), true, select(vec3<bool>(any(vec2<bool>(false, arg_0)), true, all(vec3<bool>(arg_0, arg_0, arg_0))), vec3<bool>(all(!vec3<bool>(true, false, arg_0)), arg_0, _wgslsmith_f_op_f32(round(585f)) == -1446f), select(vec3<bool>(true, true, u_input.c < u_input.c), vec3<bool>(true, true, arg_0), vec3<bool>(arg_0 & arg_0, true, all(vec2<bool>(arg_0, arg_0))))), 1i, select(select(vec2<bool>(true, !arg_0), vec2<bool>(arg_0, any(vec3<bool>(false, true, false))), arg_0), vec2<bool>(select(true, arg_0, any(vec3<bool>(true, arg_0, true))), !(!arg_0)), true));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a)), false, vec3<bool>(true, any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, false && arg_0, true, var_0.d < u_input.d))), -var_0.d, !vec2<bool>(_wgslsmith_f_op_f32(var_0.a.x * 219f) >= _wgslsmith_div_f32(var_0.a.x, var_0.a.x), any(var_0.c)));
    let var_2 = Struct_3(27253u, ~(~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(47271u, 0u), vec2<u32>(4294967295u, 4294967295u)))), all(select(vec4<bool>(!var_0.e.x, var_0.c.x, true, !var_1.b), vec4<bool>(var_1.c.x, var_0.e.x || var_0.c.x, true, false), vec4<bool>(select(false, arg_0, var_1.e.x), var_1.e.x, all(var_1.c), true))), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(i32(-1i) * -2013i, -var_0.d), 1i), ~(~(-1i)) << (firstLeadingBit(firstTrailingBit(4294967295u)) % 32u)), select(var_0.c, !select(var_1.c, select(vec3<bool>(true, var_0.b, false), vec3<bool>(var_0.e.x, arg_0, false), false), vec3<bool>(var_0.e.x, true, false)), true));
    let var_3 = _wgslsmith_div_f32(-393f, -820f);
    var var_4 = _wgslsmith_dot_vec3_u32(select(~(~vec3<u32>(78418u, 1u, var_2.a)), vec3<u32>(_wgslsmith_mod_u32(~var_2.b, 33320u), ~(var_2.b << (var_2.a % 32u)), _wgslsmith_clamp_u32(var_2.b, var_2.a, firstTrailingBit(28321u))), arg_0), _wgslsmith_div_vec3_u32(vec3<u32>(~80270u, var_2.a, var_2.b), _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(var_2.b, 78921u, var_2.a) >> (vec3<u32>(var_2.b, 72670u, 0u) % vec3<u32>(32u))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.a, 0u, 4294967295u), vec3<u32>(83446u, var_2.a, 0u), vec3<u32>(var_2.b, 13715u, var_2.b)))));
    return var_0.c;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<f32>) -> bool {
    let var_0 = !select(!vec4<bool>(arg_0.e.x, arg_0.c, true, arg_1.e.x & true), vec4<bool>(true, false, any(!vec2<bool>(arg_0.c, true)), arg_0.c), select(!vec4<bool>(true, arg_0.e.x, false, arg_0.e.x), vec4<bool>(any(vec4<bool>(false, false, arg_0.e.x, false)), false, arg_1.a.x < arg_1.a.x, 58055u < arg_0.a), false));
    let var_1 = Struct_1(arg_1.a, true, func_3(arg_0.e.x), u_input.d, func_3(true).yz);
    var var_2 = Struct_2(abs(countOneBits(arg_0.a)) | (min(~arg_0.a, 1u) ^ ~_wgslsmith_div_u32(1u, 1u)), _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.a.x)) - arg_1.a.x)))));
    return !(reverseBits(-2147483647i) > _wgslsmith_mult_i32(countOneBits(_wgslsmith_clamp_i32(2147483647i, 0i, -10991i)), arg_1.d));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<u32>) -> i32 {
    var var_0 = Struct_2(_wgslsmith_mult_u32(60292u << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x) & arg_2, arg_2 & vec4<u32>(1u, 46084u, arg_2.x, arg_2.x)) % 32u), _wgslsmith_div_u32(abs(arg_2.x), 1u) << (arg_2.x % 32u)), -1498f);
    var var_1 = vec2<bool>(true, func_4(Struct_3(_wgslsmith_add_u32(_wgslsmith_add_u32(12572u, 76497u), ~4294967295u), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.a, 0u), vec2<u32>(1u, 0u)), ~arg_2.ww), false, u_input.b.yz, vec3<bool>(true, true, true)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_0, arg_0) - vec3<f32>(var_0.b, 633f, arg_1.x))), true, !func_3(false), -(~u_input.b.x), vec2<bool>(any(vec2<bool>(true, false)), false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(365f + 1012f), var_0.b, _wgslsmith_f_op_f32(arg_0 + arg_1.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(569f, arg_1.x, arg_1.x, 357f))))));
    var var_2 = -1854f;
    var var_3 = ~(abs(_wgslsmith_mult_u32(var_0.a, 1u) << ((var_0.a & 0u) % 32u)) | 1u);
    var_1 = func_3(var_1.x).xy;
    return abs(~_wgslsmith_add_i32(u_input.c, max(-2147483647i, -2147483647i)));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_3(~1u, firstTrailingBit(select(firstTrailingBit(_wgslsmith_mod_u32(4294967295u, 40142u)), 1u, all(!vec2<bool>(arg_2.e.x, true)))), arg_1.x, vec2<i32>(5412i, ~(i32(-1i) * -1i)), !(!arg_1));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(arg_2.a + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.a * _wgslsmith_div_vec3_f32(arg_2.a, arg_2.a)))), !arg_1.x, var_0.e, 1i, var_0.e.yx);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-513f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1000f, 1281f)), arg_2.a.x), 1167f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_2.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(677f, 1000f, arg_2.a.x)))))));
    var var_3 = _wgslsmith_mult_vec4_u32(vec4<u32>(abs(20292u), _wgslsmith_add_u32(firstTrailingBit(~4294967295u), _wgslsmith_add_u32(0u, min(1u, 53350u))), 1u, var_0.b), ~(~_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(0u, 4294967295u, var_0.b, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, 89192u, var_0.a), vec4<u32>(var_0.a, var_0.a, var_0.a, var_0.b)))));
    var_1 = arg_2;
    return arg_2;
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_2 {
    let var_0 = func_5(vec2<i32>(max(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, u_input.a.x), vec2<i32>(arg_0, arg_0) >> (vec2<u32>(59873u, 0u) % vec2<u32>(32u))), ~7716i), _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -33946i, _wgslsmith_mod_i32(-1i, arg_1), _wgslsmith_mod_i32(1i, u_input.a.x), func_2(1000f, vec2<f32>(-783f, -2898f), vec4<u32>(59857u, 62972u, 0u, 0u))), (vec4<i32>(arg_0, 2147483647i, u_input.a.x, -11772i) >> (vec4<u32>(1u, 1u, 4034u, 11475u) % vec4<u32>(32u))) >> (vec4<u32>(4294967295u, 63890u, 0u, 63572u) % vec4<u32>(32u)))), select(vec3<bool>(true & any(vec3<bool>(true, false, true)), true, false && any(vec3<bool>(false, true, true))), !vec3<bool>(true, all(vec4<bool>(false, true, true, true)), true), false), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1182f, -291f, 1620f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-424f, 985f, 1323f))), func_3(true)))), false, vec3<bool>(any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), true)), true, true), max(_wgslsmith_add_i32(_wgslsmith_add_i32(arg_1, -1i), ~u_input.c), _wgslsmith_clamp_i32(-2147483647i, arg_1 | -2147483647i, ~36881i)), vec2<bool>(false, true)), _wgslsmith_div_i32(-1i, _wgslsmith_div_i32(i32(-1i) * -arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 1i, arg_0, arg_0), vec4<i32>(arg_1, 2147483647i, arg_1, arg_0)))));
    let var_1 = Struct_2(21884u, var_0.a.x);
    let var_2 = func_3(any(select(!(!vec4<bool>(false, var_0.b, true, true)), !select(vec4<bool>(true, var_0.e.x, var_0.b, true), vec4<bool>(true, false, false, true), var_0.c.x), false))).xy;
    let var_3 = true;
    let var_4 = 2147483647i;
    return Struct_2(~_wgslsmith_dot_vec4_u32(min(vec4<u32>(var_1.a, var_1.a, var_1.a, var_1.a), ~vec4<u32>(var_1.a, var_1.a, 4294967295u, var_1.a)), ~reverseBits(vec4<u32>(var_1.a, var_1.a, var_1.a, 5425u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_1.b, 1752f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_sub_i32(u_input.a.x, ~(-1i)), -2147483647i);
    let var_1 = func_1(u_input.e.x, 58618i);
    var_0 = Struct_2(abs(var_0.a), 745f);
    let var_2 = func_1(1i, ~firstLeadingBit(~abs(2147483647i)));
    var var_3 = ~countOneBits(u_input.b);
    var_0 = func_1(-1i, abs(i32(-1i) * -var_3.x));
    var var_4 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x);
}

