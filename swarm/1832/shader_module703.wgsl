struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_5, 19> = array<Struct_5, 19>(Struct_5(Struct_2(vec4<u32>(4294967295u, 4294967295u, 51466u, 4294967295u), vec2<f32>(-667f, -282f), vec3<i32>(1i, -1i, 0i), 52280u, vec3<f32>(-864f, -1568f, 328f))), Struct_5(Struct_2(vec4<u32>(11249u, 73157u, 0u, 33316u), vec2<f32>(874f, 1743f), vec3<i32>(-8763i, -815i, -45295i), 22716u, vec3<f32>(532f, 1059f, -1994f))), Struct_5(Struct_2(vec4<u32>(6117u, 4294967295u, 0u, 54194u), vec2<f32>(742f, -183f), vec3<i32>(-26023i, 37689i, -70650i), 41131u, vec3<f32>(749f, -507f, -482f))), Struct_5(Struct_2(vec4<u32>(52784u, 46154u, 11962u, 4294967295u), vec2<f32>(1135f, 133f), vec3<i32>(2147483647i, 2147483647i, 0i), 1u, vec3<f32>(-1277f, 1538f, 876f))), Struct_5(Struct_2(vec4<u32>(70339u, 1u, 1u, 45724u), vec2<f32>(-1000f, -425f), vec3<i32>(1i, 35501i, 9980i), 59084u, vec3<f32>(530f, 372f, 210f))), Struct_5(Struct_2(vec4<u32>(1u, 101559u, 0u, 1u), vec2<f32>(-726f, -1000f), vec3<i32>(9689i, -9352i, -38548i), 4294967295u, vec3<f32>(-869f, -1487f, 796f))), Struct_5(Struct_2(vec4<u32>(4294967295u, 4294967295u, 25728u, 96667u), vec2<f32>(1232f, 276f), vec3<i32>(42806i, -56664i, 1i), 23826u, vec3<f32>(-305f, 654f, -839f))), Struct_5(Struct_2(vec4<u32>(1u, 0u, 4294967295u, 37580u), vec2<f32>(-1000f, 1378f), vec3<i32>(-31602i, 15581i, 61309i), 1u, vec3<f32>(-1258f, 1723f, -819f))), Struct_5(Struct_2(vec4<u32>(32190u, 11027u, 4294967295u, 37502u), vec2<f32>(1804f, 566f), vec3<i32>(2147483647i, 0i, -55337i), 4294967295u, vec3<f32>(-684f, -1578f, 124f))), Struct_5(Struct_2(vec4<u32>(45100u, 0u, 0u, 15670u), vec2<f32>(-1708f, 603f), vec3<i32>(i32(-2147483648), -4817i, 6212i), 3437u, vec3<f32>(-1076f, 1062f, -942f))), Struct_5(Struct_2(vec4<u32>(12129u, 19146u, 15845u, 28477u), vec2<f32>(-510f, 1000f), vec3<i32>(i32(-2147483648), 2147483647i, -1i), 96855u, vec3<f32>(-1139f, -232f, 1000f))), Struct_5(Struct_2(vec4<u32>(1u, 5723u, 51817u, 9824u), vec2<f32>(-915f, 719f), vec3<i32>(-1i, -56098i, 0i), 15362u, vec3<f32>(2499f, 1742f, -798f))), Struct_5(Struct_2(vec4<u32>(28742u, 31244u, 11102u, 0u), vec2<f32>(-234f, 1785f), vec3<i32>(1i, -15265i, -28638i), 1467u, vec3<f32>(-265f, 724f, 1493f))), Struct_5(Struct_2(vec4<u32>(85067u, 4294967295u, 62532u, 14070u), vec2<f32>(887f, -1305f), vec3<i32>(-7278i, 1i, 2147483647i), 39451u, vec3<f32>(-898f, 1133f, 799f))), Struct_5(Struct_2(vec4<u32>(73663u, 44599u, 38518u, 0u), vec2<f32>(-720f, 1329f), vec3<i32>(-18029i, 2147483647i, -24870i), 0u, vec3<f32>(711f, 195f, 852f))), Struct_5(Struct_2(vec4<u32>(52521u, 51423u, 4294967295u, 104845u), vec2<f32>(1000f, -1092f), vec3<i32>(-34598i, -1i, 1i), 0u, vec3<f32>(-196f, 472f, 142f))), Struct_5(Struct_2(vec4<u32>(42580u, 1u, 14400u, 85239u), vec2<f32>(2002f, -463f), vec3<i32>(2147483647i, -33699i, 34878i), 1u, vec3<f32>(-478f, -606f, -1281f))), Struct_5(Struct_2(vec4<u32>(1u, 63765u, 65333u, 3650u), vec2<f32>(-1008f, 123f), vec3<i32>(-19661i, -1i, -22345i), 4294967295u, vec3<f32>(-699f, 433f, -1811f))), Struct_5(Struct_2(vec4<u32>(47123u, 4294967295u, 0u, 65880u), vec2<f32>(-878f, -1868f), vec3<i32>(29418i, -18988i, 26662i), 4294967295u, vec3<f32>(-219f, 135f, 726f))));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_5, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.b.x, _wgslsmith_f_op_f32(arg_2.a.e.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + arg_2.a.e.x))), arg_2.a.b.x));
    let var_1 = 0u;
    var var_2 = true;
    let var_3 = select(vec2<bool>(arg_3.b, !arg_3.b), select(select(!vec2<bool>(arg_3.b, arg_3.b), select(vec2<bool>(true, true), vec2<bool>(true, true), arg_3.b), !(-1000f != var_0.x)), vec2<bool>(all(select(vec4<bool>(true, false, arg_3.b, arg_3.b), vec4<bool>(arg_3.b, false, arg_3.b, arg_3.b), vec4<bool>(arg_3.b, true, arg_3.b, true))), all(vec4<bool>(arg_3.b, true, false, arg_3.b))), any(select(vec2<bool>(arg_3.b, false), select(vec2<bool>(arg_3.b, arg_3.b), vec2<bool>(arg_3.b, arg_3.b), arg_3.b), vec2<bool>(false, true)))), select(!(!select(vec2<bool>(false, arg_3.b), vec2<bool>(arg_3.b, true), vec2<bool>(arg_3.b, arg_3.b))), select(!vec2<bool>(arg_3.b, arg_3.b), vec2<bool>(true, arg_3.b), select(vec2<bool>(false, true), select(vec2<bool>(arg_3.b, arg_3.b), vec2<bool>(false, false), vec2<bool>(false, false)), arg_3.b)), arg_3.b));
    var var_4 = -2147483647i;
    return abs(arg_2.a.c.xy);
}

fn func_2() -> u32 {
    global0 = _wgslsmith_clamp_vec2_i32(func_3(1u >> (1u % 32u), global0.x, Struct_5(Struct_2(~vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec2<f32>(1717f, 668f), ~vec3<i32>(u_input.a.x, global0.x, 21285i), 1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(450f, 1000f, 265f)))), Struct_1(abs(-u_input.a.xwx), true)), _wgslsmith_add_vec2_i32(min(u_input.a.wy, u_input.a.yz), _wgslsmith_mod_vec2_i32(firstLeadingBit(countOneBits(vec2<i32>(32996i, 21009i))), countOneBits(_wgslsmith_mod_vec2_i32(u_input.a.zx, vec2<i32>(-17821i, global0.x))))), -(~firstLeadingBit(vec2<i32>(u_input.a.x, u_input.a.x) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u)))));
    var var_0 = Struct_3(Struct_1(_wgslsmith_div_vec3_i32(u_input.a.xxz, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, -33082i, u_input.a.x), vec3<i32>(23112i, global0.x, 0i))), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(0u, 1u)), vec2<u32>(1u, 1u)) > _wgslsmith_mult_u32(firstLeadingBit(35521u), _wgslsmith_clamp_u32(0u, 23009u, 0u))), 4294967295u, Struct_1(_wgslsmith_mult_vec3_i32(select(vec3<i32>(1i, 1i, 1i), select(vec3<i32>(global0.x, 0i, u_input.b), u_input.a.ywy, vec3<bool>(true, true, true)), select(true, false, false)), firstTrailingBit(vec3<i32>(21897i, -13882i, u_input.b))), true), Struct_1(vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a.x, 0i), u_input.a.xyw), u_input.b, ~(-u_input.b)), true));
    let var_1 = max(1u, 0u);
    global0 = vec2<i32>(_wgslsmith_add_i32(var_0.a.a.x, _wgslsmith_mod_i32(max(global0.x | var_0.d.a.x, _wgslsmith_mod_i32(-2147483647i, 19761i)), 2147483647i)), u_input.b);
    let var_2 = !vec4<bool>(!(!(var_0.b < 84494u)), true, false, true);
    return abs(4294967295u);
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_dot_vec4_u32(min(~vec4<u32>(1u, arg_2, 0u, arg_2) ^ (vec4<u32>(arg_2, 0u, arg_2, 38365u) >> (vec4<u32>(arg_2, 4294967295u, arg_2, 0u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2, arg_2, arg_2, 1u) << (vec4<u32>(1u, 4294967295u, arg_2, arg_2) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_2, 41328u, 1u, 1u), vec4<u32>(1u, 19069u, 1u, 4294967295u)))) & (~(~vec4<u32>(4294967295u, 1u, arg_2, arg_2)) | vec4<u32>(0u, arg_2 ^ 4294967295u, func_2(), ~arg_2)), firstLeadingBit(_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(arg_2, 1u, arg_2, arg_2) | vec4<u32>(4294967295u, 21421u, arg_2, 1u)), abs(firstLeadingBit(vec4<u32>(arg_2, arg_2, arg_2, arg_2))))));
    var var_1 = Struct_3(arg_3, ~56672u, Struct_1(~(-vec3<i32>(u_input.b, global0.x, 23983i)) & _wgslsmith_mult_vec3_i32(-vec3<i32>(19681i, 832i, -2147483647i), vec3<i32>(arg_3.a.x, -2147483647i, -18040i) | arg_1.xzy), arg_3.b), arg_3);
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-155f, _wgslsmith_f_op_f32(abs(arg_0)), arg_0) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, 1000f, 1000f), vec3<f32>(1566f, -1313f, 806f), arg_3.b))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-490f, -620f, arg_0), vec3<f32>(arg_0, 1628f, -161f))))), false))));
    var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * var_2.x) - arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1280f), -1398f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_2.x, -1676f)))), _wgslsmith_f_op_f32(exp2(arg_0))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -572f, 259f) - vec3<f32>(-364f, -264f, 479f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, var_2.x, var_2.x))))), select(select(!select(vec3<bool>(true, true, var_1.d.b), vec3<bool>(false, var_1.d.b, false), false), !select(vec3<bool>(arg_3.b, false, var_1.d.b), vec3<bool>(arg_3.b, var_1.a.b, false), false), var_1.c.b), select(select(select(vec3<bool>(true, var_1.c.b, true), vec3<bool>(false, true, arg_3.b), vec3<bool>(false, arg_3.b, false)), vec3<bool>(var_1.a.b, var_1.c.b, false), -980f <= arg_0), !(!vec3<bool>(var_1.c.b, false, true)), var_1.b < _wgslsmith_div_u32(0u, arg_2)), vec3<bool>(arg_3.b, false, true))));
    let var_3 = 1308u;
    return _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -select(var_1.a.a.xx, u_input.a.xz, false), vec2<i32>(reverseBits(37091i), _wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.a.x, 0i), -arg_3.a.xy), abs(_wgslsmith_div_vec2_i32(var_1.c.a.zy, vec2<i32>(var_1.c.a.x, arg_1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(426f, -1305f, -594f, 1199f)) - vec4<f32>(1737f, -520f, -1990f, -723f))), ~vec3<i32>(_wgslsmith_add_i32(1i, func_1(-182f, u_input.a, 0u, Struct_1(u_input.a.xxx, true))), func_3(_wgslsmith_div_u32(8147u, 7854u), ~8766i, Struct_5(Struct_2(vec4<u32>(9583u, 4294967295u, 87533u, 20931u), vec2<f32>(1800f, 3607f), vec3<i32>(global0.x, 0i, 31445i), 0u, vec3<f32>(1106f, -553f, 1549f))), Struct_1(vec3<i32>(62355i, global0.x, u_input.b), false)).x, -4814i), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-261f, -1791f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-534f, 1544f), vec2<f32>(-887f, -419f))))))), ~vec2<u32>(1u, 1u));
}

