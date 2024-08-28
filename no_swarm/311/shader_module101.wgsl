struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(1u, Struct_1(vec3<bool>(false, true, false), vec2<f32>(-1290f, -1371f), vec2<f32>(666f, -575f), 0u), true, Struct_1(vec3<bool>(true, false, false), vec2<f32>(1081f, 775f), vec2<f32>(-401f, 1000f), 26810u), vec4<bool>(false, true, false, true)), Struct_2(4294967295u, Struct_1(vec3<bool>(true, true, true), vec2<f32>(687f, 317f), vec2<f32>(1515f, 639f), 0u), false, Struct_1(vec3<bool>(true, true, false), vec2<f32>(183f, 715f), vec2<f32>(1689f, -872f), 4294967295u), vec4<bool>(false, false, true, true)), Struct_2(0u, Struct_1(vec3<bool>(true, false, false), vec2<f32>(365f, -859f), vec2<f32>(-455f, -2602f), 4294967295u), false, Struct_1(vec3<bool>(false, false, false), vec2<f32>(264f, 2086f), vec2<f32>(-909f, -119f), 1u), vec4<bool>(false, false, false, true)), Struct_2(1u, Struct_1(vec3<bool>(true, true, false), vec2<f32>(-302f, -952f), vec2<f32>(654f, 925f), 1u), false, Struct_1(vec3<bool>(true, false, false), vec2<f32>(1000f, -1204f), vec2<f32>(184f, -1200f), 1u), vec4<bool>(true, false, false, true)), Struct_2(50409u, Struct_1(vec3<bool>(false, false, false), vec2<f32>(-646f, 1000f), vec2<f32>(-629f, -949f), 1u), false, Struct_1(vec3<bool>(true, false, true), vec2<f32>(1854f, -200f), vec2<f32>(2047f, 270f), 1803u), vec4<bool>(true, false, true, false)), Struct_2(29648u, Struct_1(vec3<bool>(true, false, false), vec2<f32>(-152f, -1000f), vec2<f32>(887f, 415f), 1u), true, Struct_1(vec3<bool>(false, true, false), vec2<f32>(141f, 708f), vec2<f32>(1000f, 372f), 21228u), vec4<bool>(true, false, true, false)), Struct_2(30598u, Struct_1(vec3<bool>(true, true, true), vec2<f32>(-471f, 1209f), vec2<f32>(1164f, 1000f), 34673u), false, Struct_1(vec3<bool>(false, false, false), vec2<f32>(685f, 623f), vec2<f32>(1316f, 572f), 4294967295u), vec4<bool>(true, false, false, false)), Struct_2(38533u, Struct_1(vec3<bool>(true, false, true), vec2<f32>(1000f, 559f), vec2<f32>(-493f, 2312f), 1u), false, Struct_1(vec3<bool>(true, true, true), vec2<f32>(-737f, -411f), vec2<f32>(-163f, -977f), 31831u), vec4<bool>(false, true, true, true)), Struct_2(18043u, Struct_1(vec3<bool>(false, true, true), vec2<f32>(-165f, -205f), vec2<f32>(-685f, -1000f), 0u), false, Struct_1(vec3<bool>(false, false, false), vec2<f32>(-495f, -764f), vec2<f32>(548f, -674f), 1u), vec4<bool>(true, false, false, true)), Struct_2(1u, Struct_1(vec3<bool>(false, true, false), vec2<f32>(2013f, 270f), vec2<f32>(796f, 1037f), 4294967295u), false, Struct_1(vec3<bool>(true, false, false), vec2<f32>(1216f, -371f), vec2<f32>(873f, -458f), 1u), vec4<bool>(true, true, false, false)), Struct_2(1u, Struct_1(vec3<bool>(false, false, true), vec2<f32>(228f, -1984f), vec2<f32>(1000f, -739f), 4294967295u), false, Struct_1(vec3<bool>(true, false, true), vec2<f32>(-955f, -979f), vec2<f32>(349f, -2431f), 0u), vec4<bool>(true, true, true, true)), Struct_2(14195u, Struct_1(vec3<bool>(false, true, false), vec2<f32>(-375f, -412f), vec2<f32>(-195f, 716f), 73801u), true, Struct_1(vec3<bool>(true, true, false), vec2<f32>(200f, 162f), vec2<f32>(-1746f, -1000f), 1u), vec4<bool>(true, false, true, false)), Struct_2(1u, Struct_1(vec3<bool>(false, true, false), vec2<f32>(127f, 207f), vec2<f32>(-1247f, -1015f), 1124u), false, Struct_1(vec3<bool>(true, false, false), vec2<f32>(1000f, -1000f), vec2<f32>(-740f, 388f), 0u), vec4<bool>(true, true, true, false)), Struct_2(38308u, Struct_1(vec3<bool>(false, false, true), vec2<f32>(-555f, 1331f), vec2<f32>(-126f, -1002f), 62584u), false, Struct_1(vec3<bool>(false, true, true), vec2<f32>(2647f, -839f), vec2<f32>(-248f, -974f), 4294967295u), vec4<bool>(false, false, false, true)), Struct_2(0u, Struct_1(vec3<bool>(false, true, false), vec2<f32>(1115f, 1683f), vec2<f32>(-269f, -334f), 14678u), true, Struct_1(vec3<bool>(true, false, false), vec2<f32>(-358f, 744f), vec2<f32>(-210f, 1686f), 1u), vec4<bool>(false, false, false, true)), Struct_2(1u, Struct_1(vec3<bool>(true, false, true), vec2<f32>(-759f, 598f), vec2<f32>(-1016f, -1688f), 0u), true, Struct_1(vec3<bool>(true, true, true), vec2<f32>(1269f, -1000f), vec2<f32>(2442f, 1387f), 91446u), vec4<bool>(true, true, true, false)), Struct_2(54161u, Struct_1(vec3<bool>(false, true, true), vec2<f32>(136f, 565f), vec2<f32>(1969f, -387f), 10409u), false, Struct_1(vec3<bool>(false, true, true), vec2<f32>(705f, -488f), vec2<f32>(951f, 530f), 77266u), vec4<bool>(true, true, false, true)), Struct_2(32581u, Struct_1(vec3<bool>(true, false, false), vec2<f32>(-1000f, -568f), vec2<f32>(-471f, 1607f), 0u), true, Struct_1(vec3<bool>(true, true, false), vec2<f32>(-516f, -831f), vec2<f32>(1000f, -437f), 0u), vec4<bool>(true, true, true, false)), Struct_2(31117u, Struct_1(vec3<bool>(true, true, true), vec2<f32>(-927f, -211f), vec2<f32>(265f, -771f), 100127u), true, Struct_1(vec3<bool>(false, false, true), vec2<f32>(1699f, 2036f), vec2<f32>(2172f, 1155f), 1u), vec4<bool>(true, false, false, true)));

var<private> global1: bool = false;

var<private> global2: f32;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> f32 {
    let var_0 = vec2<bool>((i32(-1i) * -34028i) < (_wgslsmith_mod_i32(select(u_input.c, 35142i, false), u_input.c) | countOneBits(u_input.c)), true);
    return 1056f;
}

fn func_3(arg_0: vec3<f32>, arg_1: u32) -> bool {
    global2 = arg_0.x;
    global2 = _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1068f)))))));
    let var_0 = vec4<bool>(select(true, ((533f == arg_0.x) && true) & all(vec3<bool>(false, true, true)), !(!any(vec3<bool>(true, true, false)))), !select(all(vec2<bool>(false, false)), true, any(vec3<bool>(false, false, true))), !(8313u != arg_1), any(vec2<bool>(true, true)));
    var var_1 = reverseBits(~max(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.d.xx, vec2<u32>(1u, arg_1), vec2<u32>(arg_1, u_input.d.x)), u_input.d.yz), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, arg_1), u_input.d.xz)));
    var var_2 = vec4<i32>(u_input.c, select(_wgslsmith_clamp_i32(reverseBits(2147483647i), u_input.c, -4531i), 0i, _wgslsmith_f_op_f32(-arg_0.x) <= -2318f), u_input.c, 2147483647i) << (_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~firstLeadingBit(vec4<u32>(35701u, arg_1, arg_1, 1u)), vec4<u32>(arg_1 << (20038u % 32u), 0u, max(u_input.d.x, u_input.a), arg_1)), max(reverseBits(~vec4<u32>(u_input.a, u_input.a, arg_1, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(16026u, u_input.b, arg_1, 21090u) & vec4<u32>(36926u, 67820u, u_input.d.x, 0u), select(vec4<u32>(35056u, u_input.b, 3594u, 86917u), vec4<u32>(54429u, arg_1, u_input.b, 1u), true))), countOneBits(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(arg_1, 41877u, 10155u, 12542u)), ~vec4<u32>(118660u, 1u, arg_1, 59389u)))) % vec4<u32>(32u));
    return all(select(!var_0.wy, select(var_0.zz, var_0.wx, true), var_0.x)) & var_0.x;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec4<u32>) -> vec4<bool> {
    global0 = array<Struct_2, 19>();
    global1 = true;
    global0 = array<Struct_2, 19>();
    let var_0 = vec3<bool>(false, func_3(vec3<f32>(_wgslsmith_f_op_f32(func_2()), -1518f, 1000f), ~(arg_0.a | ~68192u)), arg_0.c);
    var var_1 = arg_0.b.a.x;
    return select(vec4<bool>(arg_0.c, !(!(arg_0.c & var_0.x)), !((var_0.x && true) || func_3(vec3<f32>(arg_0.d.b.x, -799f, arg_0.d.b.x), 0u)), 100064u <= arg_2.x), vec4<bool>(!(_wgslsmith_clamp_u32(arg_2.x, 15215u, 0u) == abs(16066u)), true, true, firstTrailingBit(u_input.c) < -1i), all(select(vec3<bool>(false, var_0.x, select(true, var_0.x, var_0.x)), var_0, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = any(select(vec4<bool>(any(vec2<bool>(true, true)), true, true, true), select(select(func_1(Struct_2(u_input.a, Struct_1(vec3<bool>(true, false, false), vec2<f32>(-408f, -1483f), vec2<f32>(306f, 1186f), u_input.a), true, Struct_1(vec3<bool>(false, true, true), vec2<f32>(418f, -226f), vec2<f32>(-376f, -847f), u_input.a), vec4<bool>(true, false, true, true)), vec4<i32>(-1i, 1i, -13886i, 0i), vec4<u32>(u_input.b, u_input.b, 0u, 10211u)), vec4<bool>(true, true, true, true), all(vec3<bool>(false, false, false))), vec4<bool>(true, true, true, true), u_input.c < ~0i), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(all(vec2<bool>(false, true)), true, all(vec3<bool>(false, true, false)), true), !(u_input.a == u_input.b))));
    var var_0 = vec4<bool>(!(!(u_input.c < -1i)), all(func_1(global0[_wgslsmith_index_u32(4294967295u, 19u)], ~vec4<i32>(51017i, u_input.c, -1i, u_input.c), select(~vec4<u32>(8766u, u_input.d.x, u_input.d.x, u_input.b), ~vec4<u32>(u_input.d.x, u_input.a, u_input.d.x, 43075u), true)).yzw), !all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), false))), 1634f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1535f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1587f, -463f, 1622f, -850f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(697f, 970f, 1127f, -519f) + vec4<f32>(-957f, -1000f, -210f, 1795f))) - vec4<f32>(_wgslsmith_f_op_f32(floor(-1226f)), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-528f * -611f), -1590f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-332f, 2431f, 1833f, -978f))), vec4<f32>(-952f, -1335f, 710f, -926f)))))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(290f, 1070f, -253f, -189f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-925f, -3179f, 265f, 457f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(789f, 964f, 1280f, -2710f)), vec4<f32>(-1581f, 1331f, 222f, 182f)))))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1186f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(floor(1000f))))), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1511f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2139f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(var_1.x + var_1.x)))), 682f);
    global0 = array<Struct_2, 19>();
    var var_3 = Struct_3(Struct_1(vec3<bool>(var_0.x, var_0.x, true), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.x, var_2.x)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1039f, _wgslsmith_f_op_f32(func_2()))), u_input.a << (u_input.a % 32u)), ~u_input.d.zz, Struct_1(vec3<bool>((var_1.x < var_2.x) & true, true, var_0.x), var_2.ww, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_2.xx), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_2.x), _wgslsmith_f_op_vec2_f32(-var_1.zx)))), ~1467u));
    let var_4 = u_input.d.x > (~abs(65762u) >> (1u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec4<i32>(u_input.c << (u_input.d.x % 32u), -2147483647i, 25548i, reverseBits(u_input.c)), vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.c, -1i, 2147483647i), vec4<i32>(u_input.c, u_input.c, 2147483647i, u_input.c)), vec4<i32>(-2147483647i, 2147483647i, u_input.c, u_input.c)), -1i, u_input.c, _wgslsmith_add_i32(abs(u_input.c), -32701i)), false), var_3.a.c.x, vec4<f32>(1694f, var_3.c.c.x, -678f, -1286f));
}

