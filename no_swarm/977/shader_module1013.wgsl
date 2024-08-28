struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 1>;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<f32>(-1184f, -354f), vec3<f32>(509f, -882f, -1000f)), Struct_1(vec2<f32>(-2737f, -1000f), vec3<f32>(768f, -697f, -1046f)), Struct_1(vec2<f32>(1032f, 1000f), vec3<f32>(-771f, 491f, -1000f)), Struct_1(vec2<f32>(526f, 1000f), vec3<f32>(1977f, -1646f, 353f)), Struct_1(vec2<f32>(-1697f, 1569f), vec3<f32>(-722f, 256f, -1419f)), Struct_1(vec2<f32>(1382f, 1230f), vec3<f32>(-1181f, -1389f, 1391f)), Struct_1(vec2<f32>(1000f, 1000f), vec3<f32>(755f, -543f, -293f)), Struct_1(vec2<f32>(1941f, 1588f), vec3<f32>(353f, 1054f, 818f)), Struct_1(vec2<f32>(-825f, -1037f), vec3<f32>(-765f, 1265f, -1825f)), Struct_1(vec2<f32>(-1261f, 378f), vec3<f32>(-657f, 370f, -733f)), Struct_1(vec2<f32>(1147f, -1661f), vec3<f32>(964f, 669f, -353f)), Struct_1(vec2<f32>(-344f, 1000f), vec3<f32>(1000f, -728f, -1718f)), Struct_1(vec2<f32>(-554f, 1000f), vec3<f32>(1029f, -1068f, 1905f)), Struct_1(vec2<f32>(1410f, -586f), vec3<f32>(553f, -512f, 208f)), Struct_1(vec2<f32>(1583f, 298f), vec3<f32>(413f, 1000f, -537f)), Struct_1(vec2<f32>(1000f, 1041f), vec3<f32>(-102f, 1000f, -1619f)), Struct_1(vec2<f32>(-416f, -210f), vec3<f32>(-635f, 225f, -999f)), Struct_1(vec2<f32>(317f, -305f), vec3<f32>(362f, -1030f, -1000f)), Struct_1(vec2<f32>(826f, -2012f), vec3<f32>(-292f, -1268f, 793f)), Struct_1(vec2<f32>(-1937f, -509f), vec3<f32>(1440f, 1983f, 1000f)), Struct_1(vec2<f32>(-151f, 361f), vec3<f32>(-295f, -1172f, -1422f)), Struct_1(vec2<f32>(-1000f, 584f), vec3<f32>(-295f, 724f, 1564f)), Struct_1(vec2<f32>(947f, 291f), vec3<f32>(675f, 402f, 441f)), Struct_1(vec2<f32>(-698f, -1000f), vec3<f32>(696f, 1945f, -1000f)), Struct_1(vec2<f32>(1391f, -303f), vec3<f32>(-1000f, 350f, -1124f)), Struct_1(vec2<f32>(1164f, 1038f), vec3<f32>(-149f, 1000f, -851f)), Struct_1(vec2<f32>(223f, -155f), vec3<f32>(-1000f, -2804f, -1722f)), Struct_1(vec2<f32>(-209f, 1154f), vec3<f32>(-1202f, 403f, -1046f)), Struct_1(vec2<f32>(-811f, -2013f), vec3<f32>(1000f, 1206f, 558f)), Struct_1(vec2<f32>(886f, -1349f), vec3<f32>(604f, -1489f, -1326f)), Struct_1(vec2<f32>(2521f, 505f), vec3<f32>(-596f, 1082f, 154f)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global0 = array<vec4<bool>, 1>();
    var var_0 = -1406f;
    let var_1 = global1[_wgslsmith_index_u32(u_input.b, 31u)];
    global1 = array<Struct_1, 31>();
    let var_2 = ~select(firstLeadingBit(reverseBits(vec2<i32>(1i, -2147483647i))), firstLeadingBit(-vec2<i32>(-1i, -3190i)), vec2<bool>(any(vec2<bool>(true, false)), true)) << (u_input.a.xx % vec2<u32>(32u));
    return firstTrailingBit(var_2.x);
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = -vec2<i32>(-arg_0, ~(~func_3(Struct_1(vec2<f32>(-199f, 715f), vec3<f32>(1590f, 508f, -375f)))));
    let var_1 = u_input.a;
    global1 = array<Struct_1, 31>();
    global1 = array<Struct_1, 31>();
    let var_2 = global1[_wgslsmith_index_u32(0u, 31u)];
    return Struct_2(~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, 0i, -17174i, 1i), ~vec4<i32>(-1i, arg_0, var_0.x, -37677i)), vec4<i32>(-1i, arg_0, 0i, var_0.x) | vec4<i32>(-67861i, -458i, var_0.x, var_0.x)), Struct_1(vec2<f32>(-154f, var_2.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.b))), true);
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(~42015i, _wgslsmith_clamp_i32(-2147483647i, 0i, 0i))), vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(-1i, -25620i), vec2<i32>(-63246i, -1191i))));
    global0 = array<vec4<bool>, 1>();
    global1 = array<Struct_1, 31>();
    global0 = array<vec4<bool>, 1>();
    global0 = array<vec4<bool>, 1>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-458f * var_0.b.a.x) - 884f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.a.x * var_0.b.a.x)))));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> f32 {
    global1 = array<Struct_1, 31>();
    global1 = array<Struct_1, 31>();
    let var_0 = Struct_2(-21554i, Struct_1(_wgslsmith_f_op_vec2_f32(arg_1.b.yx * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, 494f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_1.a.x, arg_1.b.x))), any(vec2<bool>(true, true)));
    global1 = array<Struct_1, 31>();
    var var_1 = var_0;
    return -211f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -529f)), func_1(true))) + 410f);
    global0 = array<vec4<bool>, 1>();
    global1 = array<Struct_1, 31>();
    let var_1 = Struct_2(firstLeadingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(37351i, -4995i, 2147483647i), firstLeadingBit(vec3<i32>(28178i, -39142i, 4238i))), ~select(vec3<i32>(22756i, 16476i, -2137i), vec3<i32>(2147483647i, 6909i, 0i), true))), func_1(any(select(select(vec4<bool>(false, false, false, true), global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(u_input.b, 1u)]), global0[_wgslsmith_index_u32(~u_input.a.x, 1u)], true))), false | any(vec2<bool>(any(vec2<bool>(true, true)), all(vec3<bool>(true, false, true)))));
    global1 = array<Struct_1, 31>();
    var var_2 = firstLeadingBit(-1i);
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-1157f, -595f)), _wgslsmith_f_op_f32(-var_1.b.a.x), _wgslsmith_f_op_f32(1000f * 772f), _wgslsmith_f_op_f32(-var_1.b.b.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_1.b.a.x, 1000f)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 1000f, var_1.b.b.x, var_1.b.b.x), vec4<f32>(312f, -1433f, var_1.b.a.x, 514f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -1438f, 887f, var_0) * vec4<f32>(1548f, -582f, var_0, var_1.b.b.x)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-109f, var_0)), _wgslsmith_f_op_f32(f32(-1f) * -493f), 1f, var_1.b.a.x) * vec4<f32>(_wgslsmith_f_op_f32(var_0 + -1000f), 161f, _wgslsmith_f_op_f32(sign(var_1.b.b.x)), _wgslsmith_f_op_f32(201f - var_0)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(firstTrailingBit(var_1.a)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1184f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0)))), var_3.wy, vec2<bool>(var_1.c, !var_1.c))), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b)), ~vec4<u32>(_wgslsmith_add_u32(48531u, 52779u), firstLeadingBit(u_input.a.x), u_input.b, u_input.b), min(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.b), ~vec4<u32>(u_input.a.x, u_input.a.x, 36616u, 42541u)), ~vec4<u32>(0u, 0u, u_input.b, 1u) >> (abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 55950u)) % vec4<u32>(32u)))), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(~u_input.a.x, max(u_input.a.x, 11675u), ~4294967295u)) << (abs(~0u) % 32u));
}

