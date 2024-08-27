struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = select(select(!vec3<bool>(true, any(vec4<bool>(false, false, false, true)), true), select(select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, false)), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false)), !(!any(vec2<bool>(true, true)))), select(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)), vec3<bool>(true, true, select(arg_0 <= arg_0, false, false)), true), vec3<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true))), true, !(any(vec4<bool>(true, true, true, false)) || true)));
    var var_1 = Struct_3(Struct_2(arg_0), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(arg_0, arg_0)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1456f, arg_0))) * vec2<f32>(1244f, arg_0))), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-54572i, u_input.a), i32(-1i) * -35772i), -2147483647i, _wgslsmith_mult_i32(~u_input.a, min(-654i, u_input.a)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, -1i)), abs(vec3<i32>(-1i, u_input.a, u_input.a)))), -firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 34137i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, -1578i))), ~(_wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.a, -75975i, -36799i), vec4<i32>(u_input.a, 3294i, -24589i, u_input.a)) & vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))));
    var_0 = select(select(vec3<bool>(var_0.x, true, var_0.x), !select(select(vec3<bool>(var_0.x, true, true), vec3<bool>(true, var_0.x, false), vec3<bool>(false, false, var_0.x)), !vec3<bool>(var_0.x, false, true), !vec3<bool>(var_0.x, true, true)), vec3<bool>(var_0.x, !(!var_0.x), var_0.x && all(vec4<bool>(false, var_0.x, false, var_0.x)))), vec3<bool>(_wgslsmith_f_op_f32(545f + _wgslsmith_div_f32(-992f, var_1.a.a)) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 * -295f), arg_0)), any(!vec4<bool>(false, false, true, var_0.x)), !(select(4294967295u, 1u, var_0.x) <= 11703u)), !(!var_0.x));
    var var_2 = var_1.a;
    var var_3 = 85325u;
    return _wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, 1u, 1u), _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(1u, 31467u, 1u)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(4294967295u, 4294967295u, 17708u)))), ~_wgslsmith_div_vec3_u32(select(~vec3<u32>(31535u, 4294967295u, 89244u), vec3<u32>(1u, 1u, 1u), var_0.x && true), vec3<u32>(1u, 1u, 1u)));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: i32, arg_3: bool) -> f32 {
    let var_0 = ~(((func_3(arg_1.a) ^ 4294967295u) | select(abs(4294967295u), 1u, true)) << (min(~(~110501u), ~min(4294967295u, 1u)) % 32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, 1277f, arg_1.a, _wgslsmith_f_op_f32(exp2(arg_1.a))));
    let var_2 = Struct_1(vec2<f32>(var_1.x, var_1.x));
    let var_3 = Struct_3(arg_1, _wgslsmith_f_op_vec2_f32(-var_1.yw), ~(-vec4<i32>(-17813i, arg_2, 0i, -36598i) ^ _wgslsmith_add_vec4_i32(vec4<i32>(-1i, arg_2, -41854i, arg_2), vec4<i32>(-1i, 0i, u_input.a, u_input.a))) & -vec4<i32>(min(arg_2, u_input.a), _wgslsmith_sub_i32(1i, u_input.a), arg_2, arg_2 >> (23906u % 32u)));
    var var_4 = ~4294967295u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-495f * -1925f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.b.x, -1473f))), arg_3)));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    var var_0 = firstLeadingBit(vec4<u32>(~1u, (min(1u, 53807u) & _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 1u))) << (~(~104419u) % 32u), 57683u, 43003u >> (countOneBits(~41178u) % 32u)));
    let var_1 = 1u;
    let var_2 = all(vec3<bool>(select(select(true, true, true), !(u_input.a < 0i), true), any(vec2<bool>(u_input.a < u_input.a, true)), true));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_3.a, arg_1.x, -1000f, 133f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a, arg_1.x, -436f, 223f) * vec4<f32>(-1184f, -263f, arg_3.a, arg_1.x)))))), select(select(any(vec4<bool>(var_2, var_2, false, var_2)), all(vec4<bool>(false, var_2, var_2, false)), var_2), !(var_2 || false), var_2)));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_1.zy))));
    return arg_3;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> Struct_3 {
    var var_0 = u_input.a;
    var_0 = -5644i;
    let var_1 = !(!all(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true))));
    var_0 = u_input.a;
    var var_2 = Struct_3(arg_1, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(683f, arg_0.a)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, arg_1.a) - vec2<f32>(-361f, arg_0.a))))))), vec4<i32>(select(_wgslsmith_dot_vec4_i32(min(vec4<i32>(-62217i, u_input.a, -5603i, -1i), vec4<i32>(u_input.a, 2147483647i, -15236i, u_input.a)), select(vec4<i32>(2147483647i, u_input.a, u_input.a, 0i), vec4<i32>(95075i, u_input.a, 17150i, -3702i), vec4<bool>(true, true, false, true))), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 61190i) ^ vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(13979i, -48367i)), false), u_input.a | u_input.a, min(u_input.a, firstLeadingBit(abs(16095i))), max(firstLeadingBit(firstLeadingBit(u_input.a)), ~(-51424i))));
    return Struct_3(arg_1, var_2.b, ~var_2.c);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: bool) -> Struct_3 {
    let var_0 = arg_0.c.zxy;
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    let var_0 = 25629u;
    let var_1 = func_6(func_5(func_4(_wgslsmith_f_op_f32(183f + _wgslsmith_f_op_f32(func_2(arg_1, Struct_2(285f), u_input.a, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, 667f))), Struct_2(_wgslsmith_f_op_f32(-arg_0.a.x)), Struct_2(_wgslsmith_f_op_f32(round(arg_0.a.x)))), Struct_2(arg_0.a.x)), func_4(arg_0.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(922f, arg_0.a.x, -242f, arg_0.a.x) + vec4<f32>(arg_0.a.x, -1702f, arg_0.a.x, -1270f))), Struct_2(1810f), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + arg_0.a.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-461f, 200f, arg_0.a.x, -661f))))), func_5(func_5(Struct_2(arg_0.a.x), Struct_2(237f)).a, Struct_2(-161f)).a, func_5(Struct_2(618f), func_5(Struct_2(arg_0.a.x), Struct_2(arg_0.a.x)).a).a)), vec4<bool>(all(vec3<bool>(false, !arg_1, true)), any(!(!vec3<bool>(arg_1, arg_1, arg_1))), ~(~1u) == ~var_0, !all(vec4<bool>(true, arg_1, arg_1, arg_1))), any(!(!select(vec4<bool>(arg_1, false, arg_1, true), vec4<bool>(arg_1, arg_1, true, true), vec4<bool>(arg_1, true, true, arg_1)))));
    let var_2 = var_1;
    let var_3 = abs(var_0);
    var var_4 = select(any(!select(select(vec2<bool>(true, arg_1), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(arg_1, true), vec2<bool>(true, arg_1), vec2<bool>(false, true)), !vec2<bool>(true, arg_1))), true, !arg_1);
    return Struct_2(arg_0.a.x);
}

fn func_7(arg_0: f32, arg_1: f32, arg_2: f32, arg_3: Struct_2) -> u32 {
    return _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(1u, 1u), 0u), max(vec2<u32>(~14221u, _wgslsmith_mult_u32(0u, 1u)), vec2<u32>(~0u, ~26765u)) >> ((~abs(vec2<u32>(0u, 14810u)) >> (max(_wgslsmith_clamp_vec2_u32(vec2<u32>(35835u, 46861u), vec2<u32>(27578u, 4294967295u), vec2<u32>(4294967295u, 15176u)), ~vec2<u32>(1u, 1u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(firstLeadingBit(~(~vec3<u32>(43489u, 4294967295u, 4294967295u))), vec3<u32>(1u, 1u, 1u)));
    let var_1 = _wgslsmith_div_u32(abs(0u), func_7(1503f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -518f)), _wgslsmith_f_op_f32(ceil(-150f)), func_1(Struct_1(vec2<f32>(464f, -1157f)), false))) | 1u;
    var_0 = 87422u;
    let var_2 = ~((_wgslsmith_mod_u32(~var_1, ~4294967295u) & 177983u) | 88793u);
    var var_3 = select(vec3<i32>(func_6(Struct_3(Struct_2(-469f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-228f, -817f))), vec4<i32>(u_input.a, 12857i, 1i, 79839i)), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -593f)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true)), true), true).c.x, max(firstTrailingBit(min(-2147483647i, 47907i)), -1i), u_input.a), vec3<i32>(-1i) * -vec3<i32>(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-23555i, 1i), vec2<i32>(0i, u_input.a)), ~0i), true);
    var var_4 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -193f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-836f, -1000f))))))), -_wgslsmith_mult_vec4_i32(vec4<i32>(33740i, 1i, var_3.x, firstTrailingBit(var_3.x)), ~vec4<i32>(u_input.a, 1i, var_3.x, var_3.x)));
    var_3 = var_4.c.yzw;
    let x = u_input.a;
    s_output = StorageBuffer(0i << (var_2 % 32u), vec4<u32>(26083u, 32646u, var_2, func_7(var_4.b.x, var_4.b.x, 709f, func_5(func_4(var_4.a.a, vec4<f32>(1396f, var_4.a.a, var_4.b.x, 516f), var_4.a, Struct_2(var_4.b.x)), func_1(Struct_1(vec2<f32>(-1000f, var_4.a.a)), false)).a)));
}

