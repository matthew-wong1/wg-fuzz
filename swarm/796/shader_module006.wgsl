struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(408f, -887f, 1834f, 774f);

var<private> global1: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(27532i, vec2<bool>(true, true), Struct_1(vec3<f32>(-511f, -726f, 701f), 1i)), Struct_3(-12386i, vec2<bool>(false, true), Struct_1(vec3<f32>(579f, 631f, -452f), 22079i)), Struct_3(77597i, vec2<bool>(true, true), Struct_1(vec3<f32>(870f, -488f, 1000f), -19473i)), Struct_3(67614i, vec2<bool>(false, true), Struct_1(vec3<f32>(-229f, 1000f, 310f), 2147483647i)), Struct_3(-38251i, vec2<bool>(false, false), Struct_1(vec3<f32>(-1298f, 1447f, 2135f), -24396i)), Struct_3(22858i, vec2<bool>(true, true), Struct_1(vec3<f32>(1026f, 1000f, -419f), -21894i)), Struct_3(i32(-2147483648), vec2<bool>(false, false), Struct_1(vec3<f32>(1739f, -616f, -477f), -2548i)), Struct_3(-1i, vec2<bool>(true, false), Struct_1(vec3<f32>(-1075f, 334f, 917f), -1i)), Struct_3(-37601i, vec2<bool>(false, true), Struct_1(vec3<f32>(-2518f, -1314f, -933f), 2147483647i)), Struct_3(i32(-2147483648), vec2<bool>(false, false), Struct_1(vec3<f32>(-1286f, -1000f, -138f), 23800i)), Struct_3(-42443i, vec2<bool>(false, false), Struct_1(vec3<f32>(-750f, -700f, -205f), 59265i)), Struct_3(i32(-2147483648), vec2<bool>(true, true), Struct_1(vec3<f32>(-628f, -1037f, 2278f), 17491i)), Struct_3(0i, vec2<bool>(true, false), Struct_1(vec3<f32>(355f, -1107f, -2166f), 1i)), Struct_3(2147483647i, vec2<bool>(false, false), Struct_1(vec3<f32>(102f, 749f, -812f), 2147483647i)), Struct_3(2147483647i, vec2<bool>(false, true), Struct_1(vec3<f32>(377f, -994f, -418f), -1i)), Struct_3(-18281i, vec2<bool>(false, true), Struct_1(vec3<f32>(1847f, 1089f, 949f), i32(-2147483648))), Struct_3(38369i, vec2<bool>(true, true), Struct_1(vec3<f32>(-948f, 940f, -1699f), -56157i)), Struct_3(17162i, vec2<bool>(false, false), Struct_1(vec3<f32>(1093f, -831f, 1334f), 2147483647i)), Struct_3(-44302i, vec2<bool>(false, false), Struct_1(vec3<f32>(-205f, -407f, 2215f), 6064i)), Struct_3(i32(-2147483648), vec2<bool>(true, true), Struct_1(vec3<f32>(294f, -1582f, 764f), 36626i)), Struct_3(-1i, vec2<bool>(false, false), Struct_1(vec3<f32>(-170f, 593f, 1969f), 1i)), Struct_3(28227i, vec2<bool>(true, true), Struct_1(vec3<f32>(-929f, -2519f, -1447f), 24258i)), Struct_3(2147483647i, vec2<bool>(true, false), Struct_1(vec3<f32>(-1044f, 824f, -537f), i32(-2147483648))), Struct_3(18279i, vec2<bool>(true, false), Struct_1(vec3<f32>(-1069f, 1361f, 1000f), 47123i)), Struct_3(36855i, vec2<bool>(true, false), Struct_1(vec3<f32>(-1671f, -190f, -103f), -1853i)), Struct_3(63072i, vec2<bool>(false, false), Struct_1(vec3<f32>(1000f, 320f, -1102f), i32(-2147483648))));

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<f32>(-1000f, -1759f, -1162f), 17392i), Struct_1(vec3<f32>(-486f, 499f, 1404f), -6729i), true, vec4<bool>(false, true, false, true), vec2<u32>(89004u, 436u));

var<private> global3: Struct_3 = Struct_3(46091i, vec2<bool>(false, true), Struct_1(vec3<f32>(1000f, -1000f, -205f), 21499i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: i32, arg_3: Struct_3) -> u32 {
    var var_0 = abs(global2.e.x) | abs(global2.e.x);
    var var_1 = _wgslsmith_add_u32(arg_0, ~1u);
    let var_2 = !(!(!all(vec3<bool>(true, global2.c, true))));
    let var_3 = global1[_wgslsmith_index_u32(~1u, 26u)];
    return _wgslsmith_add_u32(16933u, _wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_add_u32(0u, global2.e.x), 1u)), u_input.a));
}

fn func_2(arg_0: u32) -> vec3<f32> {
    var var_0 = min(~_wgslsmith_sub_u32(~func_3(4294967295u, 994f, -1i, global1[_wgslsmith_index_u32(28744u, 26u)]), global2.e.x), ~41511u >> (arg_0 % 32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(global3.c.a, _wgslsmith_f_op_vec3_f32(round(global0.yzz))));
    let var_2 = Struct_4(Struct_2(global2.b, Struct_1(vec3<f32>(_wgslsmith_div_f32(-988f, global2.b.a.x), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(round(global3.c.a.x))), i32(-1i) * -2147483647i), any(vec2<bool>(any(vec2<bool>(global2.c, global2.c)), !global2.d.x)), select(select(global2.d, vec4<bool>(global2.c, global2.c, global3.b.x, global3.b.x), true), global2.d, true), vec2<u32>(~0u, countOneBits(~arg_0))), global3.c.b);
    let var_3 = Struct_2(global3.c, Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.a.x, -1000f, 2109f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 518f, var_1.x))))), ~abs(45520i & global3.a)), global3.b.x, select(!(!select(var_2.a.d, global2.d, false)), !(!(!vec4<bool>(global2.c, true, true, true))), _wgslsmith_f_op_f32(global3.c.a.x * -1484f) == var_2.a.a.a.x), abs(vec2<u32>(select(arg_0, 1u, global3.b.x), 4294967295u) << (var_2.a.e % vec2<u32>(32u))));
    var var_4 = Struct_2(var_3.b, var_3.b, all(vec3<bool>(true, any(select(vec3<bool>(global2.c, true, true), global2.d.www, global2.d.x)), var_2.a.d.x)), select(vec4<bool>(true, _wgslsmith_div_i32(global2.a.b, -1i) != var_3.a.b, any(!vec2<bool>(global2.d.x, true)), true), vec4<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.a.e.x, var_2.a.e.x, 1u), vec4<u32>(38462u, global2.e.x, 4294967295u, 29441u)) == arg_0, var_3.c, any(global2.d.ywz), var_2.a.c), !vec4<bool>(global3.b.x, !global3.b.x, all(var_2.a.d.wyz), !var_2.a.c)), max(var_2.a.e >> (reverseBits(~var_3.e) % vec2<u32>(32u)), vec2<u32>(~41188u, ~var_2.a.e.x)));
    return global0.yzz;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = arg_1.xy;
    global2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a.x, 985f, global0.x), arg_0.a, !global2.d.xxz)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(1u)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2024f, -419f, global3.c.a.x))))), -35617i), Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-139f, global0.x, 1000f) - vec3<f32>(2055f, -1928f, global0.x)))))), firstTrailingBit(_wgslsmith_dot_vec4_i32(arg_1, arg_1))), global2.c, !global2.d, ~(vec2<u32>(func_3(u_input.b, 1856f, -36223i, Struct_3(u_input.c.x, vec2<bool>(false, true), global2.b)), countOneBits(1u)) << (_wgslsmith_sub_vec2_u32(global2.e, global2.e) % vec2<u32>(32u))));
    global3 = Struct_3(reverseBits(2147483647i), global3.b, arg_0);
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, arg_0.a.x, global3.c.a.x, global0.x))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global3.c.a.x, 2028f, -656f)), vec4<f32>(global0.x, -373f, global2.a.a.x, global0.x)))))));
    global0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1091f, arg_0.a.x, global3.c.a.x, -440f), vec4<f32>(global0.x, global0.x, 263f, -1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(685f, -277f, 794f, 892f) * vec4<f32>(global3.c.a.x, var_1.x, 1000f, 1000f))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0.a.x, global0.x, -472f))))))));
    return Struct_2(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-286f, _wgslsmith_div_f32(global2.b.a.x, arg_0.a.x), -271f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.b.a))), _wgslsmith_add_i32(firstTrailingBit(-32909i), arg_0.b)), Struct_1(global3.c.a, var_0.x), false, vec4<bool>(!(_wgslsmith_f_op_f32(-global0.x) >= _wgslsmith_f_op_f32(sign(global0.x))), !(~global2.a.b < ~(-7965i)), (global2.c | false) && (true | global2.d.x), false), ~(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 38650u, 4294967295u, global2.e.x), vec4<u32>(u_input.b, 6884u, u_input.a, u_input.a)), 0u) & ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, global2.e.x), vec2<u32>(19565u, global2.e.x))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_2 {
    global2 = func_1(global3.c, vec4<i32>(_wgslsmith_sub_i32(27188i, max(17554i, -22731i)), 1i, abs(abs(u_input.d.x)), ~countOneBits(global3.c.b)) << (vec4<u32>(~1u, _wgslsmith_sub_u32(arg_0.e.x, 4294967295u) | 1u, global2.e.x, _wgslsmith_mult_u32(min(20294u, 1u), ~arg_0.e.x)) % vec4<u32>(32u)));
    global1 = array<Struct_3, 26>();
    let var_0 = 7647i >> (_wgslsmith_sub_u32(global2.e.x, ~(max(20456u, 0u) ^ arg_0.e.x)) % 32u);
    global2 = arg_0;
    let var_1 = func_1(Struct_1(_wgslsmith_f_op_vec3_f32(-global0.zzz), global3.a), ~vec4<i32>(min(-26359i, arg_2.b), global2.b.b, max(-arg_2.b, ~arg_0.b.b), firstTrailingBit(3384i))).b;
    return func_1(arg_0.a, u_input.d);
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: Struct_1) -> Struct_3 {
    var var_0 = func_4(func_1(arg_2, select(vec4<i32>(38900i, 1i, 2147483647i, 46783i), vec4<i32>(arg_0.a.a.b, 33996i, arg_2.b, -64424i), false) | (vec4<i32>(45500i, arg_2.b, -46710i, arg_0.a.a.b) ^ vec4<i32>(global3.c.b, arg_2.b, arg_2.b, -849i))), vec2<f32>(336f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.a.a.x * 972f) * global2.a.a.x)), arg_0.a.b).d.x || global3.b.x;
    let var_1 = arg_0;
    global1 = array<Struct_3, 26>();
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-var_1.a.b.a.x), any(vec4<bool>(global3.b.x, var_1.a.d.x, true, false)))), _wgslsmith_f_op_f32(global0.x * -1011f), _wgslsmith_f_op_f32(1211f + _wgslsmith_f_op_vec3_f32(func_2(arg_0.a.e.x)).x), arg_1) * vec4<f32>(-207f, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1022f)), _wgslsmith_f_op_f32(arg_1 * -1247f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(218f, _wgslsmith_f_op_f32(arg_1 + -564f), 302f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.a.a.x - 803f) * func_1(global2.b, u_input.c).a.a.x)))));
    let var_2 = select(!(arg_1 < -1000f), true, 1u < var_1.a.e.x) & (var_1.a.d.x && true);
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(~global2.e.x), u_input.b, ~var_1.a.e.x, 1u), vec4<u32>(var_1.a.e.x, 24631u, ~_wgslsmith_div_u32(1u << (arg_0.a.e.x % 32u), ~17641u), _wgslsmith_div_u32(func_1(global2.a, -vec4<i32>(arg_2.b, var_1.a.b.b, -2147483647i, arg_2.b)).e.x, ~func_3(1u, arg_0.a.a.a.x, var_1.b, Struct_3(16965i, vec2<bool>(arg_0.a.c, var_2), arg_2))))), 26u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_5(Struct_4(func_4(func_1(Struct_1(vec3<f32>(global0.x, global2.a.a.x, global2.b.a.x), u_input.c.x), vec4<i32>(-21068i, 7586i, u_input.d.x, 1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global3.c.a.yy, global0.xw)), global2.a), select(u_input.d.x, u_input.d.x, true)), _wgslsmith_f_op_f32(sign(-1455f)), func_1(Struct_1(global2.a.a, 1i), ~select(abs(u_input.c), vec4<i32>(1692i, global3.c.b, 52438i, 1i), global2.d)).b);
    var var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(global2.e.x, u_input.b), vec2<u32>(_wgslsmith_dot_vec4_u32(countOneBits(firstTrailingBit(vec4<u32>(0u, global2.e.x, global2.e.x, 1u))), ~select(vec4<u32>(global2.e.x, 82200u, 8857u, global2.e.x), vec4<u32>(u_input.e, 4232u, 1u, u_input.a), false)), 38025u), global2.e);
    let var_1 = u_input.c.wx;
    let var_2 = Struct_4(Struct_2(global3.c, Struct_1(global0.yzw, -global2.a.b), all(vec2<bool>(true, !global3.b.x)), select(vec4<bool>(true, global2.c, true, false), func_1(global2.b, vec4<i32>(global2.a.b, 1i, 1i, global3.a) & u_input.d).d, !global2.d), vec2<u32>(4294967295u, _wgslsmith_add_u32(6184u, 1u))), var_1.x);
    global0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-660f, 762f, global3.c.a.x, global2.a.a.x), vec4<f32>(global0.x, global0.x, 519f, 1000f)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1253f, 383f, false))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global0.x, global0.x, true)), _wgslsmith_f_op_f32(368f + -1942f))), global3.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c.a.x) * _wgslsmith_f_op_f32(640f * -1924f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(46858u, var_0.x, 28410u));
}

