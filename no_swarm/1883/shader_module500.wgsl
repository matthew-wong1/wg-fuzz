struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_mod_vec4_u32(~(vec4<u32>(u_input.e ^ u_input.c.x, 61776u, 1u, 67180u << (u_input.e % 32u)) ^ ~(~vec4<u32>(u_input.c.x, 4294967295u, u_input.d.x, u_input.c.x))), vec4<u32>(~firstLeadingBit(1u), ~57227u, ~u_input.d.x | (4294967295u & u_input.e), 19959u) << (_wgslsmith_add_vec4_u32(max(select(vec4<u32>(4294967295u, 0u, u_input.e, u_input.c.x), vec4<u32>(u_input.d.x, 97268u, 4294967295u, 13711u), false), ~vec4<u32>(u_input.e, u_input.e, u_input.c.x, u_input.c.x)), abs(~vec4<u32>(u_input.d.x, u_input.c.x, 75229u, 7231u))) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1401f, -1000f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1247f, -1000f) - vec2<f32>(-1341f, 868f)), true))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1613f, 1356f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(748f)), -1378f)), 781f)));
    let var_2 = u_input.a.x;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(max(-378f, _wgslsmith_f_op_f32(f32(-1f) * -1445f))), false)), vec4<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(435f, -155f)), _wgslsmith_f_op_f32(trunc(-535f)), var_1.x == var_1.x)) != -298f, any(vec2<bool>(true, true)), !any(vec3<bool>(true, true, true)), (var_1.x > var_1.x) || any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true)))));
    var var_4 = ~(~select(~(-u_input.b), i32(-1i) * -1i, _wgslsmith_f_op_f32(abs(-871f)) != _wgslsmith_f_op_f32(select(var_3.a, 1525f, true))));
    return var_3.a;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(416f * arg_3.x)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_3.x, arg_3.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1224f, _wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-259f, 1874f) - vec2<f32>(-2348f, -604f))))), arg_0.b.ww));
    var var_1 = arg_2;
    let var_2 = arg_0;
    var var_3 = 0i;
    var_3 = 0i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>) -> Struct_3 {
    var var_0 = vec2<bool>(true, !select(any(vec3<bool>(true, true, true)), true, all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true))));
    var_0 = !vec2<bool>(!var_0.x, true);
    var var_1 = !vec4<bool>(var_0.x & var_0.x, !(false & (arg_1.x <= 339f)), ~(~4294967295u) >= abs(max(u_input.e, u_input.e)), var_0.x & all(vec4<bool>(false, var_0.x, false, var_0.x)));
    let var_2 = Struct_2(u_input.b);
    let var_3 = vec3<f32>(arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-936f * -375f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(sign(arg_1.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2184f * _wgslsmith_f_op_f32(arg_0 + arg_0)) * arg_1.x) + _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(375f, arg_1.x) * 754f))));
    return Struct_3(Struct_2(18039i), var_3, !all(var_1.xx));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: Struct_3) -> Struct_3 {
    return Struct_3(func_4(3100f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_3.b.x, 279f, arg_0.b.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, arg_2.b.x, arg_3.b.x, 1058f))))).a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_2.b), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(731f, arg_0.b.x, arg_2.b.x)), _wgslsmith_f_op_vec3_f32(-arg_2.b), true)), true)))), true);
}

fn func_6(arg_0: Struct_3, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_3) -> Struct_3 {
    var var_0 = Struct_3(arg_3.a, arg_3.b, all(vec2<bool>(arg_3.c, all(arg_2) & !arg_2.x)));
    var var_1 = arg_2.yy;
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -188f)), _wgslsmith_f_op_f32(f32(-1f) * -764f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(arg_3, vec4<bool>(arg_0.c, arg_2.x, arg_3.c, var_1.x), Struct_3(Struct_2(u_input.a.x), vec3<f32>(417f, 214f, arg_0.b.x), false), Struct_3(Struct_2(arg_0.a.a), vec3<f32>(arg_0.b.x, var_0.b.x, arg_3.b.x), false)).b.x - _wgslsmith_f_op_f32(min(arg_0.b.x, -1446f)))))));
    var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3.b.x)));
    let var_3 = Struct_2(_wgslsmith_sub_i32(firstTrailingBit(var_0.a.a ^ _wgslsmith_mod_i32(arg_3.a.a, u_input.a.x)), max(_wgslsmith_div_i32(-68467i, -67069i), func_4(1424f, vec4<f32>(arg_3.b.x, arg_3.b.x, arg_0.b.x, var_0.b.x)).a.a)));
    return Struct_3(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b.x) - -1768f) * -132f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.x, -1181f, 1000f, var_0.b.x), vec4<f32>(-226f, arg_0.b.x, -717f, var_0.b.x), true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(144f, arg_3.b.x, arg_0.b.x, var_0.b.x)))).a, arg_3.b, !(func_4(arg_3.b.x, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(557f, arg_0.b.x, arg_0.b.x, arg_0.b.x)))).a.a <= _wgslsmith_mod_i32(0i, -arg_3.a.a)));
}

fn func_1(arg_0: f32) -> Struct_3 {
    let var_0 = func_6(func_5(func_4(arg_0, vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(arg_0, vec4<bool>(true, false, true, true)), 1i, Struct_2(2147483647i), vec3<f32>(arg_0, arg_0, arg_0))), arg_0, _wgslsmith_div_f32(arg_0, -910f), arg_0)), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true), true), func_4(_wgslsmith_f_op_f32(round(440f)), vec4<f32>(-453f, arg_0, -803f, _wgslsmith_f_op_f32(f32(-1f) * -750f))), func_4(_wgslsmith_f_op_f32(round(446f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(530f, -281f, 842f, arg_0) - vec4<f32>(arg_0, arg_0, arg_0, arg_0)))))), u_input.e, vec3<bool>(~(-1i) <= firstTrailingBit(i32(-1i) * -8447i), true, !(_wgslsmith_dot_vec2_i32(u_input.a.zx, vec2<i32>(1i, -48327i)) < abs(-18807i))), func_5(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(-arg_0)), vec4<f32>(_wgslsmith_f_op_f32(ceil(889f)), 291f, arg_0, _wgslsmith_f_op_f32(-arg_0))), vec4<bool>(true, false, false, !all(vec3<bool>(false, true, false))), Struct_3(func_4(_wgslsmith_f_op_f32(arg_0 - arg_0), vec4<f32>(arg_0, 655f, arg_0, 440f)).a, vec3<f32>(_wgslsmith_div_f32(-536f, -824f), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(floor(-882f))), true), func_4(_wgslsmith_f_op_f32(-2336f * -861f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, 1000f, arg_0, -790f), vec4<f32>(-1043f, -284f, -1000f, arg_0), false))))));
    let var_1 = var_0.b.x;
    let var_2 = !var_0.c;
    let var_3 = 804f;
    let var_4 = max(reverseBits(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(max(u_input.d, vec3<u32>(4294967295u, 0u, 4294967295u)), _wgslsmith_mult_vec3_u32(u_input.d, u_input.d)), ~max(vec3<u32>(u_input.c.x, u_input.c.x, 43607u), vec3<u32>(u_input.e, 0u, u_input.d.x)))), max(_wgslsmith_div_vec3_u32(select(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, 1u, 0u), vec3<u32>(38752u, 2275u, u_input.c.x)), firstLeadingBit(vec3<u32>(u_input.d.x, 0u, 51636u)), true || var_0.c), _wgslsmith_clamp_vec3_u32(firstLeadingBit(u_input.d), u_input.d, vec3<u32>(u_input.c.x, u_input.e, 39433u))), u_input.d));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(279f)), 557f))))));
    var_0 = Struct_3(func_1(1000f).a, func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_div_f32(2146f, var_0.b.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-310f * var_0.b.x), _wgslsmith_f_op_f32(func_2(Struct_1(var_0.b.x, vec4<bool>(false, false, var_0.c, var_0.c)), -74338i, Struct_2(19524i), vec3<f32>(335f, var_0.b.x, var_0.b.x))), _wgslsmith_f_op_f32(step(568f, -2389f))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.b.x, -1557f, var_0.b.x, -222f))))).b, true);
    var_0 = Struct_3(Struct_2(_wgslsmith_sub_i32(~var_0.a.a, var_0.a.a ^ (u_input.b & var_0.a.a))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + 1518f) - _wgslsmith_f_op_f32(trunc(var_0.b.x)))), var_0.b)), var_0.c);
    let var_1 = ~8391u;
    var var_2 = func_5(Struct_3(var_0.a, func_5(func_1(var_0.b.x), !select(vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c), vec4<bool>(var_0.c, true, true, var_0.c), vec4<bool>(var_0.c, var_0.c, false, true)), func_1(_wgslsmith_f_op_f32(f32(-1f) * -425f)), func_6(Struct_3(Struct_2(u_input.a.x), vec3<f32>(var_0.b.x, var_0.b.x, -1237f), var_0.c), 20860u, select(vec3<bool>(true, true, false), vec3<bool>(true, var_0.c, true), vec3<bool>(false, true, false)), func_6(Struct_3(var_0.a, var_0.b, false), 11665u, vec3<bool>(var_0.c, var_0.c, true), Struct_3(var_0.a, vec3<f32>(var_0.b.x, 623f, var_0.b.x), var_0.c)))).b, func_4(_wgslsmith_f_op_f32(sign(var_0.b.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, 1986f)))).c == var_0.c), !select(vec4<bool>(var_0.c, any(vec4<bool>(var_0.c, var_0.c, var_0.c, true)), var_0.c, all(vec2<bool>(false, false))), !(!vec4<bool>(false, false, true, var_0.c)), !func_5(Struct_3(var_0.a, vec3<f32>(548f, var_0.b.x, var_0.b.x), true), vec4<bool>(var_0.c, false, var_0.c, true), Struct_3(Struct_2(12359i), vec3<f32>(337f, var_0.b.x, 964f), true), Struct_3(Struct_2(u_input.a.x), var_0.b, var_0.c)).c), Struct_3(Struct_2(_wgslsmith_sub_i32(u_input.b, -var_0.a.a)), func_1(_wgslsmith_f_op_f32(ceil(528f))).b, var_0.c), func_4(851f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(647f, -103f, var_0.b.x, 597f)))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1607f, -467f, var_0.b.x, -1000f), vec4<f32>(var_0.b.x, var_0.b.x, 2464f, 1861f), var_0.c)))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_5(func_6(Struct_3(func_5(Struct_3(Struct_2(-15794i), vec3<f32>(-1487f, var_2.b.x, 312f), var_0.c), vec4<bool>(false, false, var_2.c, false), Struct_3(var_0.a, vec3<f32>(var_2.b.x, 657f, -1000f), var_2.c), Struct_3(var_2.a, var_2.b, var_0.c)).a, _wgslsmith_f_op_vec3_f32(-var_0.b), !var_2.c), 4294967295u, vec3<bool>(var_1 > 16218u, !var_0.c, !var_0.c), Struct_3(func_5(Struct_3(Struct_2(var_2.a.a), var_2.b, var_2.c), vec4<bool>(false, true, var_0.c, false), Struct_3(Struct_2(u_input.a.x), vec3<f32>(var_2.b.x, var_0.b.x, -1000f), var_2.c), Struct_3(Struct_2(0i), var_0.b, var_2.c)).a, _wgslsmith_f_op_vec3_f32(select(var_2.b, var_2.b, false)), select(var_0.c, false, var_2.c))), vec4<bool>(true, all(vec2<bool>(var_2.c, true)), select(false, false, var_0.c) | !var_0.c, (var_2.c == var_2.c) | true), Struct_3(var_0.a, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(var_0.b)))), true), Struct_3(Struct_2(~var_0.a.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_2.b))), true)).a.a, _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.zw, vec2<i32>(var_2.a.a, -var_2.a.a)), min(-max(vec2<i32>(0i, -1i), u_input.a.xz), _wgslsmith_sub_vec2_i32(vec2<i32>(-3789i, var_0.a.a), vec2<i32>(var_0.a.a, var_0.a.a)))), u_input.c);
}

