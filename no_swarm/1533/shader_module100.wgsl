struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
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

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1501f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1992f), 668f), -605f, -249f)), vec2<f32>(_wgslsmith_f_op_f32(round(-258f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-109f - _wgslsmith_f_op_f32(985f * 133f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -355f)))))), 0u);
    let var_1 = Struct_1(vec4<f32>(-812f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(1f)), -2766f, false)), _wgslsmith_f_op_f32(-var_0.a.x), 1f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_0.b)), vec2<f32>(-139f, _wgslsmith_f_op_f32(-var_0.b.x))))), ~u_input.c.x);
    let var_2 = var_0;
    let var_3 = _wgslsmith_add_vec4_u32(~(~(~vec4<u32>(9110u, u_input.c.x, 1u, 1u))), _wgslsmith_sub_vec4_u32(vec4<u32>(~(~var_2.c), _wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.c, 28382u), u_input.c.zz)), (var_2.c << (0u % 32u)) & var_0.c, var_2.c), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(14936u, 4294967295u, 60793u, var_1.c) | vec4<u32>(u_input.b, 10821u, var_2.c, var_2.c), _wgslsmith_add_vec4_u32(vec4<u32>(20231u, var_1.c, 97023u, 17093u), vec4<u32>(0u, 4294967295u, 4294967295u, u_input.c.x)), ~vec4<u32>(39335u, 26515u, var_2.c, 95666u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, var_1.c, 34550u, var_2.c), vec4<u32>(var_1.c, 930u, u_input.b, u_input.b)) & vec4<u32>(0u, var_0.c, 25778u, 47915u), true)));
    let var_4 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, var_1.b.x) + var_1.b.x), var_0.a.x, 413f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_2.a.x, var_2.a.x))))), _wgslsmith_f_op_vec4_f32(var_0.a + _wgslsmith_f_op_vec4_f32(var_1.a + var_0.a))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(106f, var_0.b.x) * _wgslsmith_f_op_vec2_f32(min(var_1.b, vec2<f32>(var_1.a.x, var_0.a.x)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(var_2.a.zy, var_0.b, true))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1079f), _wgslsmith_f_op_f32(ceil(170f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_2.b * vec2<f32>(1506f, var_2.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, -326f)))))))), var_3.x);
    return firstTrailingBit(_wgslsmith_div_vec2_i32(-(~_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 14197i), vec2<i32>(u_input.a.x, 2147483647i))), vec2<i32>(_wgslsmith_clamp_i32(min(0i, 1i), _wgslsmith_add_i32(u_input.d.x, 31341i), u_input.d.x), 24828i)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_3, arg_3)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-513f, 188f, arg_1))))));
    let var_1 = _wgslsmith_mod_u32(1u, u_input.c.x) & arg_2;
    let var_2 = -_wgslsmith_dot_vec2_i32(u_input.a, func_3());
    let var_3 = select(select(vec2<bool>(!arg_1 && false, false), !(!vec2<bool>(arg_1, false)), vec2<bool>(arg_2 <= _wgslsmith_add_u32(arg_0.c, var_1), true)), !(!select(select(vec2<bool>(false, true), vec2<bool>(false, arg_1), vec2<bool>(arg_1, arg_1)), select(vec2<bool>(arg_1, false), vec2<bool>(false, true), true), select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, arg_1), arg_1))), !select(!(!vec2<bool>(arg_1, true)), select(select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, arg_1), vec2<bool>(true, arg_1)), select(vec2<bool>(true, false), vec2<bool>(arg_1, arg_1), false), !vec2<bool>(false, arg_1)), all(vec3<bool>(false, false, true))));
    var var_4 = arg_0;
    return arg_0;
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = true;
    var var_1 = arg_0.b;
    var var_2 = func_2(arg_0, true, 19615u, _wgslsmith_f_op_f32(-func_2(Struct_1(vec4<f32>(620f, 250f, -1235f, 1227f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, 311f)), 1u), all(vec2<bool>(true, true)), arg_0.c, -703f).a.x));
    var var_3 = Struct_1(arg_0.a, arg_0.a.xz, ~(~3333u >> (u_input.b % 32u)));
    var_0 = !all(!vec3<bool>(-2147483647i < u_input.a.x, true, true));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - _wgslsmith_f_op_f32(1310f - var_1.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -612f) + _wgslsmith_f_op_f32(round(-112f))), _wgslsmith_f_op_f32(arg_0.b.x * var_3.b.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.b.x, _wgslsmith_f_op_f32(-arg_0.b.x))))));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1002f, _wgslsmith_f_op_f32(floor(-1081f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2072f - -2321f), -475f), _wgslsmith_f_op_f32(floor(1725f)))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(max(1000f, -2117f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1008f)), _wgslsmith_f_op_f32(func_4(func_2(Struct_1(vec4<f32>(940f, 1908f, -189f, 1555f), vec2<f32>(666f, 804f), u_input.b), false, 0u, -789f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(316f, 1050f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1791f, _wgslsmith_f_op_f32(-var_0.x), -1619f, 1f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -740f, var_0.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(281f, -429f, var_0.x, var_0.x)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(sign(1270f))), _wgslsmith_f_op_f32(round(-1396f)), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(step(var_0.x, var_0.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_1(vec4<f32>(var_0.x, 837f, var_0.x, var_0.x), vec2<f32>(-1780f, var_0.x), u_input.c.x), false, 0u, var_0.x).a + vec4<f32>(-1685f, -1000f, 238f, var_0.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_div_f32(1769f, _wgslsmith_f_op_f32(var_0.x * -1000f)), var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1337f, -328f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(961f, -1354f, var_0.x, var_0.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), -575f));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -297f), _wgslsmith_f_op_f32(var_0.x + 607f))) + _wgslsmith_f_op_f32(-var_0.x)) - 269f);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_2(Struct_1(arg_1.a, _wgslsmith_f_op_vec2_f32(-arg_0.b), ~(arg_0.c & arg_0.c) ^ ~0u), all(vec4<bool>(_wgslsmith_f_op_f32(arg_1.b.x * -531f) == _wgslsmith_f_op_f32(floor(arg_1.a.x)), !any(vec4<bool>(false, true, true, false)), true, any(vec3<bool>(true, true, false)))), ~22585u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -1013f) + -677f));
    var_0 = arg_0;
    var_0 = func_2(func_2(arg_1, any(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), abs(reverseBits(59069u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(step(-317f, 1541f)))))), true, firstLeadingBit(1080u), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(arg_1)))) * _wgslsmith_div_f32(arg_0.b.x, var_0.b.x)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-1758f - _wgslsmith_f_op_f32(round(-805f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(-arg_1.b.x), arg_0.b.x))), var_0.a.yy, var_0.c);
    let var_2 = vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(arg_1.c, arg_1.c, 0u, var_0.c)), ~vec4<u32>(u_input.b, 0u, var_0.c, arg_0.c)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.c.yx, _wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.c, u_input.b), u_input.c.xy)), ~49182u), 1u), arg_1.c);
    return Struct_1(_wgslsmith_f_op_vec4_f32(floor(var_1.a)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(var_0.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, var_0.a.x)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))), var_0.b)))), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~vec3<u32>(u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(55781u, 21970u), select(vec2<u32>(54330u, u_input.b), vec2<u32>(u_input.c.x, u_input.c.x), false)), u_input.b));
    var var_1 = func_5(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-743f * -991f), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(func_4(Struct_1(vec4<f32>(423f, 327f, 1860f, 922f), vec2<f32>(-969f, -1155f), 14628u))), 308f)), vec2<f32>(898f, func_2(Struct_1(vec4<f32>(1000f, -415f, 1754f, -864f), vec2<f32>(379f, -1612f), u_input.b), all(vec4<bool>(false, true, false, false)), countOneBits(var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -241f)).b.x), u_input.c.x & _wgslsmith_dot_vec4_u32(~vec4<u32>(19152u, var_0.x, 42094u, u_input.c.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 50754u, var_0.x, 38602u), vec4<u32>(47917u, 54710u, 59311u, 75233u), vec4<u32>(u_input.c.x, 32236u, u_input.c.x, u_input.b)))), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(959f, 161f, -701f, 388f)))))), vec2<f32>(1000f, -1298f), func_2(func_2(func_2(Struct_1(vec4<f32>(-1000f, -2449f, -650f, -1572f), vec2<f32>(-736f, 597f), var_0.x), false, 99244u, 197f), true, max(48482u, u_input.b), -554f), all(vec2<bool>(true, true)), func_2(func_2(Struct_1(vec4<f32>(894f, 147f, -105f, 744f), vec2<f32>(355f, -103f), var_0.x), false, var_0.x, -1586f), true, u_input.b ^ 1u, -1058f).c, _wgslsmith_f_op_f32(floor(-1014f))).c));
    var_0 = u_input.c;
    var var_2 = func_2(func_2(func_2(func_5(func_2(Struct_1(vec4<f32>(var_1.b.x, var_1.a.x, 1334f, -2084f), vec2<f32>(var_1.a.x, var_1.a.x), 1u), true, 49929u, 119f), func_5(Struct_1(vec4<f32>(1000f, -155f, 363f, var_1.b.x), var_1.b, 7474u), Struct_1(var_1.a, var_1.b, 0u))), true, _wgslsmith_mod_u32(u_input.b, var_1.c), _wgslsmith_f_op_f32(select(var_1.b.x, _wgslsmith_f_op_f32(-var_1.b.x), any(vec3<bool>(true, false, false))))), all(vec2<bool>(all(vec3<bool>(false, false, false)), any(vec3<bool>(false, true, false)))), 59810u, _wgslsmith_div_f32(var_1.a.x, var_1.a.x)), !all(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)), var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_1.b.x)), 1000f)), var_1.b.x)) - var_1.b.x));
    var_0 = firstTrailingBit(firstTrailingBit(~u_input.c));
    let var_3 = var_2.c >> (~(~_wgslsmith_add_u32(u_input.c.x, ~4294967295u)) % 32u);
    let var_4 = u_input.d.x;
    var var_5 = func_2(func_2(Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(var_2.a, vec4<f32>(var_2.b.x, 1000f, 346f, -214f)), vec4<f32>(-258f, 901f, var_1.b.x, 372f))), vec2<f32>(854f, var_1.a.x), abs(~4294967295u)), true, var_3, _wgslsmith_f_op_f32(206f * 958f)), true, 73769u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1324f)) * _wgslsmith_f_op_f32(f32(-1f) * -1046f)), -1301f, true)));
    var_5 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_1.a), vec2<f32>(var_1.b.x, _wgslsmith_div_f32(-1315f, _wgslsmith_f_op_f32(func_4(func_2(Struct_1(var_1.a, vec2<f32>(-390f, -1303f), var_3), true, var_5.c, var_2.a.x))))), reverseBits(reverseBits(_wgslsmith_mod_u32(~var_3, _wgslsmith_div_u32(9827u, var_2.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(36600i, ~(~u_input.c.x), select(u_input.d.yx, vec2<i32>(56353i, var_4), any(vec3<bool>(true, true, true))), u_input.d.yy);
}

