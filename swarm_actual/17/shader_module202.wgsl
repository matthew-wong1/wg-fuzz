struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_4,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
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

var<private> global0: bool;

var<private> global1: array<vec3<i32>, 10> = array<vec3<i32>, 10>(vec3<i32>(-1i, 44060i, 20016i), vec3<i32>(-4988i, 2147483647i, 41070i), vec3<i32>(6656i, -8930i, 90594i), vec3<i32>(-1i, 2147483647i, 0i), vec3<i32>(2147483647i, 0i, 0i), vec3<i32>(2147483647i, 26056i, -1i), vec3<i32>(-40533i, 14434i, 2147483647i), vec3<i32>(35815i, 5887i, -3161i), vec3<i32>(i32(-2147483648), -1i, 31753i), vec3<i32>(2147483647i, -5281i, -2537i));

var<private> global2: array<bool, 32>;

var<private> global3: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(Struct_2(Struct_1(vec4<f32>(451f, -452f, -411f, -231f), vec2<i32>(2789i, 198i)), vec4<f32>(1721f, -146f, 289f, -1527f), Struct_1(vec4<f32>(468f, -647f, 850f, 1078f), vec2<i32>(35477i, 44961i)), Struct_1(vec4<f32>(-1000f, 2708f, 365f, 415f), vec2<i32>(-15933i, 19215i))), vec3<f32>(140f, 256f, -419f)), Struct_4(Struct_2(Struct_1(vec4<f32>(928f, 243f, -391f, -139f), vec2<i32>(2147483647i, 1i)), vec4<f32>(-1431f, 533f, 1154f, 501f), Struct_1(vec4<f32>(-607f, 688f, 1352f, -1000f), vec2<i32>(10380i, 2147483647i)), Struct_1(vec4<f32>(-1656f, -1084f, -404f, -562f), vec2<i32>(20709i, i32(-2147483648)))), vec3<f32>(541f, 1590f, 1282f)), Struct_4(Struct_2(Struct_1(vec4<f32>(1757f, -902f, -150f, -219f), vec2<i32>(2147483647i, -64i)), vec4<f32>(-158f, -1461f, 963f, -272f), Struct_1(vec4<f32>(1000f, -1541f, 2758f, 252f), vec2<i32>(0i, -18283i)), Struct_1(vec4<f32>(486f, 583f, -2423f, -1000f), vec2<i32>(-59517i, 8931i))), vec3<f32>(898f, -338f, 1000f)), Struct_4(Struct_2(Struct_1(vec4<f32>(1517f, -1125f, -2110f, -976f), vec2<i32>(2147483647i, 19975i)), vec4<f32>(212f, 1865f, 724f, -1441f), Struct_1(vec4<f32>(-1496f, 1211f, -1025f, -161f), vec2<i32>(1i, 1i)), Struct_1(vec4<f32>(-1000f, 919f, -366f, 1085f), vec2<i32>(i32(-2147483648), -1i))), vec3<f32>(2099f, 361f, 296f)), Struct_4(Struct_2(Struct_1(vec4<f32>(-1985f, -157f, -320f, 359f), vec2<i32>(54396i, 1i)), vec4<f32>(802f, 1988f, -487f, 684f), Struct_1(vec4<f32>(1097f, -1161f, 588f, 416f), vec2<i32>(1i, 0i)), Struct_1(vec4<f32>(269f, -453f, 167f, 865f), vec2<i32>(0i, 0i))), vec3<f32>(-1544f, -816f, 901f)));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: i32) -> i32 {
    global2 = array<bool, 32>();
    let var_0 = u_input.b.yz;
    var var_1 = Struct_5(arg_1.xz, global3[_wgslsmith_index_u32(~11541u, 5u)], _wgslsmith_clamp_vec3_u32(select(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(34671u, 5110u, u_input.a)), ~vec3<u32>(70783u, 0u, u_input.a)), reverseBits(vec3<u32>(u_input.a, 0u, 8729u)), arg_0.wwz), vec3<u32>(_wgslsmith_clamp_u32(~33160u, 52692u, u_input.a), u_input.a, max(u_input.a, u_input.a ^ u_input.a)), firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 50468u), vec3<u32>(7250u, 0u, u_input.a))) | (vec3<u32>(u_input.a, u_input.a, 13401u) & vec3<u32>(1u, 63029u, 1u))), Struct_1(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * 1121f) - _wgslsmith_f_op_f32(exp2(arg_1.x))), _wgslsmith_f_op_f32(-247f * 440f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(149f)) * _wgslsmith_f_op_f32(abs(-118f)))), _wgslsmith_div_vec2_i32(vec2<i32>(firstLeadingBit(1i), -arg_2), min(vec2<i32>(34239i, -23877i), vec2<i32>(1i, -33145i) >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u))))));
    var var_2 = var_1.d.a.x;
    var_1 = Struct_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(arg_1.xz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_1.x)) + _wgslsmith_f_op_vec2_f32(-arg_1.zx)))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.b.b.x, 964f)))), var_1.b, reverseBits(var_1.c), Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-231f, 454f, var_1.b.b.x, var_1.b.b.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-1791f, var_1.a.x, 327f, -1000f), vec4<f32>(936f, arg_1.x, arg_1.x, var_1.a.x)))))), _wgslsmith_div_vec2_i32(var_0, var_0)));
    return arg_2;
}

fn func_2() -> vec3<bool> {
    var var_0 = _wgslsmith_div_i32(abs(~func_3(!vec4<bool>(global2[_wgslsmith_index_u32(1u, 32u)], true, global2[_wgslsmith_index_u32(u_input.a, 32u)], global2[_wgslsmith_index_u32(0u, 32u)]), vec3<f32>(-1000f, -1067f, 167f), _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.b.x))), u_input.b.x);
    global3 = array<Struct_4, 5>();
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2257f)), _wgslsmith_f_op_f32(abs(-290f)))), 1f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-817f, -1035f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-556f, 389f, all(vec2<bool>(false, true)))) + -1088f)), vec4<f32>(-669f, -1049f, _wgslsmith_f_op_f32(f32(-1f) * -500f), -1112f), global2[_wgslsmith_index_u32(50154u, 32u)]));
    global0 = (u_input.a << (~u_input.a % 32u)) != ~countOneBits(u_input.a);
    var_0 = u_input.b.x;
    return select(vec3<bool>(any(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 32u)] && false, global2[_wgslsmith_index_u32(73871u << (1u % 32u), 32u)], false)), all(select(select(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)], true), vec4<bool>(true, false, false, true), global2[_wgslsmith_index_u32(u_input.a, 32u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(14540u, 32u)], global2[_wgslsmith_index_u32(u_input.a, 32u)], global2[_wgslsmith_index_u32(50701u, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.a, 32u)], true), global2[_wgslsmith_index_u32(u_input.a, 32u)]), select(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 32u)], global2[_wgslsmith_index_u32(u_input.a, 32u)], global2[_wgslsmith_index_u32(65757u, 32u)]), vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 32u)], false, true, true)))), all(vec4<bool>(global2[_wgslsmith_index_u32(1u, 32u)], false, false, global2[_wgslsmith_index_u32(5086u, 32u)])) || global2[_wgslsmith_index_u32(32716u, 32u)]), select(vec3<bool>(-2866f > var_1.x, !global2[_wgslsmith_index_u32(abs(u_input.a), 32u)], !(global2[_wgslsmith_index_u32(38566u, 32u)] & false)), !(!select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 32u)], global2[_wgslsmith_index_u32(u_input.a, 32u)], true), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 32u)], global2[_wgslsmith_index_u32(58084u, 32u)]), vec3<bool>(false, false, false))), all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 32u)], select(global2[_wgslsmith_index_u32(1u, 32u)], false, global2[_wgslsmith_index_u32(u_input.a, 32u)]), global2[_wgslsmith_index_u32(~u_input.a, 32u)], true))), select(select(select(select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(u_input.a, 32u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 32u)], global2[_wgslsmith_index_u32(121175u, 32u)]), false), !vec3<bool>(true, true, global2[_wgslsmith_index_u32(27431u, 32u)]), vec3<bool>(true, true, true)), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 32u)], true, global2[_wgslsmith_index_u32(max(u_input.a, 11421u), 32u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 32u)] & false, any(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 32u)])))), !select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 32u)], global2[_wgslsmith_index_u32(u_input.a, 32u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 32u)], false, global2[_wgslsmith_index_u32(1u, 32u)]), !global2[_wgslsmith_index_u32(u_input.a, 32u)]), !vec3<bool>(all(vec4<bool>(false, true, global2[_wgslsmith_index_u32(41586u, 32u)], global2[_wgslsmith_index_u32(38168u, 32u)])), true, false)));
}

fn func_1(arg_0: vec2<i32>) -> Struct_3 {
    global1 = array<vec3<i32>, 10>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1130f, _wgslsmith_f_op_f32(max(-207f, -914f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1020f, 153f, 1101f))))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-240f, _wgslsmith_f_op_f32(f32(-1f) * -915f), _wgslsmith_f_op_f32(1885f - -992f)))), vec3<f32>(-1067f, 1101f, 323f), func_2())));
    var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -125f)), _wgslsmith_f_op_f32(f32(-1f) * -290f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-949f + 875f), _wgslsmith_f_op_f32(min(309f, 1308f)))))), 1000f)));
    let var_1 = ~(~(~u_input.a & reverseBits(u_input.a)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1829f * var_0.x)), _wgslsmith_div_f32(-1128f, -628f), _wgslsmith_f_op_f32(-1000f + -1474f)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1083f, -731f, var_0.x, -496f) - vec4<f32>(-1000f, var_0.x, 1068f, 839f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 595f, var_0.x)))))), ~firstLeadingBit(_wgslsmith_mod_vec2_i32(-arg_0, vec2<i32>(2147483647i, u_input.b.x) & u_input.b.xy)));
    return Struct_3(Struct_2(Struct_1(_wgslsmith_div_vec4_f32(var_2.a, vec4<f32>(var_2.a.x, -967f, var_0.x, var_0.x)), vec2<i32>(-1i, ~1i)), var_2.a, Struct_1(var_2.a, firstLeadingBit(vec2<i32>(u_input.b.x, u_input.b.x) >> (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)))), var_2), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.a)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(420f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_0.x)))), 719f, _wgslsmith_f_op_f32(abs(-289f))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: bool) -> u32 {
    var var_0 = _wgslsmith_clamp_i32(abs(~firstTrailingBit(firstLeadingBit(-1i))), -1i, 1i);
    var var_1 = Struct_4(arg_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(min(1477f, arg_0.x)), _wgslsmith_f_op_f32(min(947f, arg_0.x))))));
    global3 = array<Struct_4, 5>();
    let var_2 = abs(select(vec2<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-34449i, var_1.a.c.b.x, 1i), vec3<i32>(arg_1.a.a.b.x, arg_1.a.a.b.x, 2147483647i))) >> ((~vec2<u32>(5226u, 0u) & ~vec2<u32>(87649u, u_input.a)) % vec2<u32>(32u)), vec2<i32>(~_wgslsmith_mod_i32(-1i, arg_1.a.c.b.x), -1i << (u_input.a % 32u)), vec2<bool>(all(vec3<bool>(true, arg_2, arg_2)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a) | vec2<u32>(1u, u_input.a), ~vec2<u32>(96010u, u_input.a)), 32u)])));
    let var_3 = vec2<bool>(var_1.a.d.a.x == _wgslsmith_f_op_f32(max(var_1.a.a.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.b.x * var_1.b.x))))), any(vec4<bool>(arg_2, arg_2, any(!vec3<bool>(true, arg_2, false)), global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 32u)])));
    return 0u | u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(vec3<u32>(func_4(vec3<f32>(_wgslsmith_f_op_f32(trunc(-913f)), 823f, 115f), func_1(vec2<i32>(u_input.b.x, u_input.b.x)), all(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 32u)], false))), u_input.a, u_input.a));
    var var_1 = func_1(_wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(func_1(vec2<i32>(u_input.b.x, u_input.b.x)).a.a.b.x, u_input.b.x)), min(vec2<i32>(firstLeadingBit(u_input.b.x), 0i), u_input.b.xw))).a;
    var var_2 = _wgslsmith_f_op_f32(941f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(func_1(_wgslsmith_mod_vec2_i32(vec2<i32>(9537i, u_input.b.x), vec2<i32>(-51549i, -9993i))).c.x))));
    let var_3 = func_1(func_1(_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(var_1.d.b.x, var_1.d.b.x) & vec2<i32>(var_1.a.b.x, u_input.b.x)), vec2<i32>(min(var_1.c.b.x, u_input.b.x), firstLeadingBit(u_input.b.x)))).a.a.b).a;
    var var_4 = (~var_1.a.b.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(65002u, 6600u, 1u), ~var_0.x, var_0.x, abs(var_0.x)), vec4<u32>(u_input.a, max(var_0.x, var_0.x), _wgslsmith_mult_u32(4294967295u, u_input.a), ~var_0.x)) % 32u)) >> (_wgslsmith_dot_vec3_u32(~(~reverseBits(vec3<u32>(1u, var_0.x, u_input.a))), vec3<u32>(var_0.x >> (0u % 32u), 43892u, _wgslsmith_mod_u32(var_0.x, u_input.a)) >> ((vec3<u32>(var_0.x, 45318u, u_input.a) ^ (vec3<u32>(var_0.x, var_0.x, u_input.a) & vec3<u32>(u_input.a, var_0.x, u_input.a))) % vec3<u32>(32u))) % 32u);
    var var_5 = _wgslsmith_f_op_f32(select(var_3.d.a.x, -377f, any(select(!select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 32u)], global2[_wgslsmith_index_u32(24113u, 32u)]), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, func_2().x, !global2[_wgslsmith_index_u32(u_input.a, 32u)])))));
    var var_6 = !select(!vec2<bool>(any(vec4<bool>(global2[_wgslsmith_index_u32(68289u, 32u)], global2[_wgslsmith_index_u32(var_0.x, 32u)], false, global2[_wgslsmith_index_u32(var_0.x, 32u)])), global2[_wgslsmith_index_u32(17676u, 32u)] & true), select(vec2<bool>(1i > u_input.b.x, global2[_wgslsmith_index_u32(min(50163u, 4294967295u), 32u)]), !(!vec2<bool>(global2[_wgslsmith_index_u32(var_0.x, 32u)], global2[_wgslsmith_index_u32(0u, 32u)])), _wgslsmith_f_op_f32(var_3.a.a.x + var_3.d.a.x) != _wgslsmith_div_f32(var_1.d.a.x, var_1.d.a.x)), global2[_wgslsmith_index_u32(1u, 32u)]);
    var var_7 = -2598i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(vec3<u32>(~max(var_0.x, var_0.x), select(~var_0.x, u_input.a, false), 0u), ~vec3<u32>(~1u, u_input.a, ~var_0.x)), vec2<u32>(var_0.x, ~4294967295u));
}

