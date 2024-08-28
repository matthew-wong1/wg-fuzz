struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_4, arg_1: i32) -> Struct_1 {
    let var_0 = arg_0.c.a;
    var var_1 = arg_0.c.b.x;
    var var_2 = arg_0.d.a.a.x;
    var var_3 = arg_0.d.a.a.wz;
    let var_4 = 1u;
    return arg_0.c.d;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_1, arg_3: u32) -> bool {
    let var_0 = vec2<i32>(arg_2.b, arg_1.a.a.b);
    global0 = -1000f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.b * 2082f) * 1f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1141f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.b - -230f)))));
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -336f), arg_1.d.b)), -381f));
    var var_1 = -u_input.b;
    return true;
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    var var_0 = select(select(!vec4<bool>(u_input.b != -48487i, select(false, false, true), true, any(vec2<bool>(false, false))), vec4<bool>(-1000f != _wgslsmith_f_op_f32(floor(381f)), func_3(func_2(Struct_4(Struct_2(Struct_1(vec4<bool>(true, true, true, false), u_input.b, u_input.b, vec2<u32>(0u, u_input.a), 28759i), -1026f, true), vec4<u32>(u_input.a, 4078u, u_input.a, u_input.a), Struct_3(1i, vec4<f32>(1000f, 1023f, -399f, -776f), Struct_1(vec4<bool>(true, true, false, true), arg_0.x, 1i, vec2<u32>(1u, u_input.a), -8505i), Struct_1(vec4<bool>(true, false, true, true), 47995i, 1i, vec2<u32>(60867u, 5665u), 2842i)), Struct_2(Struct_1(vec4<bool>(false, false, true, true), 30832i, 7748i, vec2<u32>(u_input.a, 0u), -5269i), 180f, true)), 25372i), Struct_4(Struct_2(Struct_1(vec4<bool>(false, false, false, true), -882i, -1i, vec2<u32>(26725u, 16343u), -2147483647i), -940f, true), vec4<u32>(u_input.a, 15557u, u_input.a, 56715u), Struct_3(-251i, vec4<f32>(-298f, -1009f, 817f, 1887f), Struct_1(vec4<bool>(true, false, false, true), arg_0.x, -1i, vec2<u32>(83924u, u_input.a), u_input.b), Struct_1(vec4<bool>(true, false, true, true), -2147483647i, 2707i, vec2<u32>(u_input.a, 94720u), 0i)), Struct_2(Struct_1(vec4<bool>(false, true, true, false), arg_0.x, 39823i, vec2<u32>(u_input.a, 0u), arg_0.x), -2061f, true)), Struct_1(vec4<bool>(false, false, true, false), 1i, arg_0.x, vec2<u32>(u_input.a, u_input.a), arg_0.x), min(u_input.a, 1u)), func_3(func_2(Struct_4(Struct_2(Struct_1(vec4<bool>(true, true, false, false), arg_0.x, 1i, vec2<u32>(1491u, u_input.a), 1i), -334f, true), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), Struct_3(u_input.b, vec4<f32>(-826f, 530f, -203f, 615f), Struct_1(vec4<bool>(true, true, false, false), -2147483647i, -29028i, vec2<u32>(u_input.a, 0u), 2147483647i), Struct_1(vec4<bool>(true, false, true, true), -8685i, -19538i, vec2<u32>(u_input.a, u_input.a), 0i)), Struct_2(Struct_1(vec4<bool>(true, false, false, true), -26200i, u_input.b, vec2<u32>(u_input.a, u_input.a), 2147483647i), 780f, false)), arg_0.x), Struct_4(Struct_2(Struct_1(vec4<bool>(false, true, false, false), -20831i, arg_0.x, vec2<u32>(16293u, 57501u), 0i), 875f, true), vec4<u32>(u_input.a, u_input.a, 29262u, 1u), Struct_3(u_input.b, vec4<f32>(344f, 323f, -507f, 1695f), Struct_1(vec4<bool>(false, true, true, true), 1i, 2147483647i, vec2<u32>(28570u, 48400u), arg_0.x), Struct_1(vec4<bool>(false, true, true, false), arg_0.x, -515i, vec2<u32>(u_input.a, 1u), arg_0.x)), Struct_2(Struct_1(vec4<bool>(false, false, false, false), 1i, arg_0.x, vec2<u32>(u_input.a, u_input.a), u_input.b), -894f, false)), func_2(Struct_4(Struct_2(Struct_1(vec4<bool>(false, false, true, true), 0i, arg_0.x, vec2<u32>(1u, u_input.a), u_input.b), -850f, false), vec4<u32>(u_input.a, 1u, u_input.a, 24683u), Struct_3(1i, vec4<f32>(792f, -271f, 922f, -2183f), Struct_1(vec4<bool>(true, false, false, false), -2147483647i, 1043i, vec2<u32>(u_input.a, u_input.a), 34561i), Struct_1(vec4<bool>(false, true, true, false), -58469i, u_input.b, vec2<u32>(4294967295u, u_input.a), arg_0.x)), Struct_2(Struct_1(vec4<bool>(true, false, true, false), -2147483647i, arg_0.x, vec2<u32>(11298u, 0u), 2147483647i), 825f, true)), arg_0.x), ~u_input.a), true), true), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), select(vec4<bool>(false, func_3(Struct_1(vec4<bool>(true, false, true, false), -28074i, u_input.b, vec2<u32>(28665u, 15640u), u_input.b), Struct_4(Struct_2(Struct_1(vec4<bool>(false, true, true, true), u_input.b, u_input.b, vec2<u32>(u_input.a, 4294967295u), 0i), -907f, true), vec4<u32>(76169u, 91354u, 1u, u_input.a), Struct_3(arg_0.x, vec4<f32>(1322f, -949f, 1637f, -2378f), Struct_1(vec4<bool>(true, false, false, false), -2261i, arg_0.x, vec2<u32>(u_input.a, 4294967295u), 0i), Struct_1(vec4<bool>(false, false, true, false), 1i, 2147483647i, vec2<u32>(u_input.a, 17099u), u_input.b)), Struct_2(Struct_1(vec4<bool>(true, true, true, true), -1i, u_input.b, vec2<u32>(4294967295u, 10338u), 5272i), 948f, false)), func_2(Struct_4(Struct_2(Struct_1(vec4<bool>(true, true, true, false), 1i, arg_0.x, vec2<u32>(21148u, u_input.a), arg_0.x), 851f, false), vec4<u32>(u_input.a, 43891u, 19408u, u_input.a), Struct_3(arg_0.x, vec4<f32>(331f, -652f, -658f, 104f), Struct_1(vec4<bool>(false, false, true, false), arg_0.x, u_input.b, vec2<u32>(u_input.a, u_input.a), -12254i), Struct_1(vec4<bool>(true, false, false, false), -35623i, arg_0.x, vec2<u32>(74230u, 4294967295u), -20554i)), Struct_2(Struct_1(vec4<bool>(false, true, false, false), u_input.b, -56864i, vec2<u32>(u_input.a, u_input.a), u_input.b), 1000f, false)), u_input.b), u_input.a), true, true), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), false)), !(!(u_input.a > 0u))));
    let var_1 = u_input.a;
    var var_2 = Struct_3(firstLeadingBit(~(u_input.b ^ u_input.b) << (1u % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1154f, 1198f, 1645f, -674f) + vec4<f32>(1327f, 836f, 898f, -334f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1704f, -528f, -1888f, -1063f)))) - vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -326f))), 422f, 1606f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-952f, -1596f))))), func_2(Struct_4(Struct_2(Struct_1(vec4<bool>(var_0.x, true, var_0.x, false), u_input.b, arg_0.x, vec2<u32>(4294967295u, u_input.a), 8873i), _wgslsmith_f_op_f32(select(557f, 687f, true)), true), vec4<u32>(~47390u, ~4294967295u, 0u, u_input.a), Struct_3(10184i, _wgslsmith_f_op_vec4_f32(vec4<f32>(1184f, -566f, -453f, 1635f) + vec4<f32>(302f, -589f, -1954f, 908f)), func_2(Struct_4(Struct_2(Struct_1(vec4<bool>(var_0.x, var_0.x, var_0.x, true), arg_0.x, -2147483647i, vec2<u32>(u_input.a, 1u), u_input.b), 457f, var_0.x), vec4<u32>(7685u, u_input.a, var_1, 28780u), Struct_3(arg_0.x, vec4<f32>(237f, -650f, -500f, 650f), Struct_1(vec4<bool>(true, var_0.x, true, true), 2147483647i, 1i, vec2<u32>(u_input.a, var_1), -21654i), Struct_1(vec4<bool>(true, false, var_0.x, true), u_input.b, arg_0.x, vec2<u32>(var_1, 14216u), arg_0.x)), Struct_2(Struct_1(vec4<bool>(var_0.x, true, var_0.x, false), u_input.b, u_input.b, vec2<u32>(4294967295u, 0u), u_input.b), -939f, var_0.x)), u_input.b), Struct_1(vec4<bool>(var_0.x, true, true, var_0.x), u_input.b, 47699i, vec2<u32>(18166u, 0u), 0i)), Struct_2(Struct_1(vec4<bool>(false, var_0.x, var_0.x, false), 2147483647i, u_input.b, vec2<u32>(1u, 0u), arg_0.x), -327f, true)), 32870i), Struct_1(func_2(Struct_4(Struct_2(Struct_1(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), -35i, -1i, vec2<u32>(61419u, 14165u), 24982i), -985f, var_0.x), min(vec4<u32>(var_1, u_input.a, var_1, 4294967295u), vec4<u32>(1u, var_1, 672u, 0u)), Struct_3(arg_0.x, vec4<f32>(1000f, 440f, 711f, -1509f), Struct_1(vec4<bool>(true, var_0.x, true, true), arg_0.x, arg_0.x, vec2<u32>(0u, var_1), 57670i), Struct_1(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), u_input.b, arg_0.x, vec2<u32>(38976u, 4294967295u), u_input.b)), Struct_2(Struct_1(vec4<bool>(true, var_0.x, false, var_0.x), -2147483647i, -1i, vec2<u32>(var_1, 8230u), 2147483647i), -1000f, var_0.x)), 1i).a, ~firstLeadingBit(19989i), 1287i, ~vec2<u32>(var_1, ~1u), i32(-1i) * -func_2(Struct_4(Struct_2(Struct_1(vec4<bool>(false, true, true, true), 1i, u_input.b, vec2<u32>(4294967295u, u_input.a), 10262i), -758f, var_0.x), vec4<u32>(var_1, u_input.a, 14998u, 4294967295u), Struct_3(21969i, vec4<f32>(195f, -1407f, 234f, -1000f), Struct_1(vec4<bool>(false, false, var_0.x, var_0.x), -219i, -2147483647i, vec2<u32>(var_1, 20036u), 1i), Struct_1(vec4<bool>(true, var_0.x, var_0.x, true), 2147483647i, -1i, vec2<u32>(u_input.a, 8055u), 27882i)), Struct_2(Struct_1(vec4<bool>(var_0.x, var_0.x, false, var_0.x), -1i, 34029i, vec2<u32>(u_input.a, u_input.a), u_input.b), -551f, var_0.x)), u_input.b).e));
    let var_3 = var_2.b.x;
    var var_4 = var_2.a;
    return 429f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1688f + 1683f) + -1712f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1662f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1436f, 128f)))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -576f), _wgslsmith_f_op_f32(func_1(vec3<i32>(2147483647i, -1i, u_input.b)))))));
    let var_1 = countOneBits(~reverseBits(~firstLeadingBit(vec3<u32>(1u, 77827u, 75568u))));
    var var_2 = _wgslsmith_clamp_vec2_u32(var_1.xy, _wgslsmith_mult_vec2_u32(~max(~var_1.zz, var_1.zy), var_1.zy), ~(~vec2<u32>(_wgslsmith_sub_u32(u_input.a, var_1.x), ~u_input.a)));
    var_2 = countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 14561u), _wgslsmith_mod_vec2_u32(~var_1.xy, reverseBits(~var_1.yz))));
    var var_3 = u_input.b;
    var_2 = vec2<u32>(var_2.x, 41435u | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, var_2.x, 4294967295u) | (vec4<u32>(46339u, 1u, var_2.x, var_2.x) ^ vec4<u32>(var_1.x, 4294967295u, u_input.a, var_1.x)), ~(~vec4<u32>(u_input.a, 4294967295u, u_input.a, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(2019f, _wgslsmith_f_op_f32(1000f - 1f)), -329f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2553f), var_0.x, true)))), vec4<u32>(_wgslsmith_mod_u32(firstLeadingBit(var_1.x), 0u), countOneBits(4294967295u), 91820u, func_2(Struct_4(Struct_2(Struct_1(vec4<bool>(true, false, false, true), u_input.b, u_input.b, vec2<u32>(1u, var_1.x), u_input.b), var_0.x, false), firstTrailingBit(vec4<u32>(0u, 73548u, 22441u, u_input.a)), Struct_3(u_input.b, vec4<f32>(374f, var_0.x, -1165f, var_0.x), Struct_1(vec4<bool>(false, true, true, false), 56151i, 0i, var_1.zz, u_input.b), Struct_1(vec4<bool>(false, true, false, false), u_input.b, -2147483647i, var_1.yz, u_input.b)), Struct_2(Struct_1(vec4<bool>(true, true, false, false), u_input.b, 1i, var_1.yz, 1i), -927f, true)), _wgslsmith_mult_i32(u_input.b, -2147483647i)).d.x), _wgslsmith_f_op_f32(round(-883f)));
}

