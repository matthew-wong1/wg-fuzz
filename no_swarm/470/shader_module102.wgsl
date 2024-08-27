struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec2<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: vec4<u32>,
    d: Struct_4,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(1i, 1i, 1531i);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec4<i32>) -> u32 {
    global0 = -(~(~(-vec3<i32>(5417i, arg_0, arg_2.x))));
    global0 = arg_2.yzx;
    global0 = vec3<i32>(abs(1131i), firstTrailingBit(-36727i), arg_2.x);
    let var_0 = arg_2.x;
    let var_1 = 1000f;
    return 1u;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: f32) -> f32 {
    var var_0 = min(abs(-29122i), firstLeadingBit(24308i));
    let var_1 = Struct_5(Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(-710f, arg_2)), _wgslsmith_f_op_f32(max(-110f, 572f)), 311f, arg_2), 4294967295u & _wgslsmith_clamp_u32(arg_0.x, arg_0.x, arg_0.x), min(arg_0.x, ~30719u)), _wgslsmith_mult_u32(_wgslsmith_div_u32(firstLeadingBit(1u), reverseBits(18965u)), func_2(1i, true, vec4<i32>(-30854i, -2147483647i, global0.x, 49096i))), Struct_1(vec4<f32>(arg_2, arg_2, _wgslsmith_f_op_f32(arg_2 * 796f), _wgslsmith_f_op_f32(-arg_2)), 0u, ~u_input.a), 1u), Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, arg_2, -306f) - vec4<f32>(706f, 229f, 1467f, arg_2)), arg_1.x, arg_1.x), arg_0.x, Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-798f, arg_2, arg_2, -272f), vec4<f32>(-418f, -865f, arg_2, arg_2))), 1u, arg_1.x), arg_0.x), Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-534f, arg_2, -1221f), vec3<f32>(arg_2, 668f, -1360f), vec3<bool>(false, false, false))), vec3<f32>(-529f, -445f, arg_2), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2, -724f))), _wgslsmith_div_vec2_f32(vec2<f32>(-642f, arg_2), vec2<f32>(2028f, arg_2)), vec2<bool>(true, true))))), arg_1, Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -1591f, 271f, 1000f)), 0u, firstTrailingBit(45749u)), 493u, Struct_1(vec4<f32>(1929f, arg_2, -1597f, arg_2), ~4294967295u, 0u), arg_1.x), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1524f, 381f, -224f), vec3<f32>(arg_2, -761f, -202f))) - vec3<f32>(-192f, 912f, -1908f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, _wgslsmith_f_op_f32(max(1262f, arg_2))))), _wgslsmith_f_op_f32(f32(-1f) * -1063f));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -883f)))));
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> Struct_1 {
    global0 = countOneBits(vec3<i32>(global0.x, global0.x, ~1i));
    var var_0 = vec4<bool>(arg_0, (arg_1.c.a.x >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.c.a.x + -495f)))) & arg_0, true, !arg_0);
    let var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(~(~4294967295u), _wgslsmith_div_u32(~func_2(11442i, false, vec4<i32>(-20898i, global0.x, 74319i, global0.x)), 1u)), max(~vec2<u32>(arg_1.b, 11079u) << (abs(vec2<u32>(u_input.a, arg_1.b)) % vec2<u32>(32u)), select(_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(arg_1.a.b, arg_1.a.b)), vec2<u32>(u_input.a, arg_1.d)), min(_wgslsmith_mult_vec2_u32(vec2<u32>(6207u, arg_1.a.c), vec2<u32>(822u, arg_1.b)), max(vec2<u32>(arg_1.a.b, 16032u), vec2<u32>(arg_1.b, arg_1.d))), !var_0.xy)));
    var var_2 = Struct_5(Struct_3(arg_1.a, arg_1.a.b, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(172f, arg_1.c.a.x, -562f, 1164f))), ~4294967295u, var_1.x), 4294967295u), Struct_4(arg_1, Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.c.a.x, -644f, 889f), arg_1.a.a.xzx, var_0.yzy)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.c.a.x, arg_1.a.a.x, arg_1.a.a.x))))), arg_1.c.a.ww), _wgslsmith_div_vec4_u32(vec4<u32>(~(~arg_1.c.c), arg_1.a.c, 1u, arg_1.a.c), select(~(~vec4<u32>(14177u, arg_1.a.b, var_1.x, 33174u)), firstLeadingBit(vec4<u32>(24480u, 42130u, var_1.x, u_input.a)), !var_0.x | arg_0)), Struct_4(Struct_3(arg_1.c, firstLeadingBit(_wgslsmith_div_u32(0u, 1u)), arg_1.c, 4294967295u), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.a.a.zxw) + arg_1.a.a.yyx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.c.a.yy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.a.x, 869f))))), _wgslsmith_f_op_f32(func_3(vec3<u32>(arg_1.a.b, ~_wgslsmith_add_u32(0u, 1u), ~(arg_1.b ^ u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(~arg_1.b, ~arg_1.b, var_1.x, 32925u), ~(~vec4<u32>(0u, arg_1.b, 106260u, 0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -367f) * 2455f))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.a.x, arg_1.c.a.x, -391f, 431f))), vec4<f32>(arg_1.a.a.x, _wgslsmith_f_op_f32(trunc(var_2.b.c.x)), _wgslsmith_f_op_f32(select(151f, arg_1.a.a.x, arg_0)), var_2.e)))), 0u, ~_wgslsmith_dot_vec2_u32(var_1, var_1));
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-538f * _wgslsmith_f_op_f32(1000f + arg_1.a.a.x)), _wgslsmith_f_op_f32(abs(arg_1.a.a.x)), -1092f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.a.a.x)))) * var_2.d.a.a.a), _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(1u, var_3.c), reverseBits(var_2.b.a.b) & ~4294967295u), _wgslsmith_mult_u32(abs(abs(u_input.a)), 16486u), var_1.x), 1u << (0u % 32u));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_4) -> f32 {
    let var_0 = Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3.a.a.a.x)) * _wgslsmith_f_op_f32(abs(arg_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.a.a.a.x, -961f) - 1054f), 1000f), 968u, ~32448u), ~(~reverseBits(countOneBits(arg_2.d))), Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(arg_3.a.c.a)))), ~(~u_input.a), max(arg_3.a.d, ~(~17771u))), arg_1.b);
    var var_1 = arg_0;
    var_1 = false;
    var var_2 = Struct_5(Struct_3(arg_1, _wgslsmith_add_u32(u_input.a, ~firstLeadingBit(var_0.c.c)), Struct_1(_wgslsmith_f_op_vec4_f32(arg_3.a.a.a - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a.c.a.x, arg_2.a.a.x, arg_1.a.x, -1000f) + arg_2.a.a)), u_input.a, var_0.b), ~var_0.b), Struct_4(Struct_3(Struct_1(arg_3.a.c.a, _wgslsmith_dot_vec3_u32(vec3<u32>(63098u, 0u, 63561u), vec3<u32>(4294967295u, u_input.a, 4294967295u)), 1u), 1u, arg_2.c, 1u), Struct_2(_wgslsmith_f_op_vec3_f32(select(arg_1.a.zxz, _wgslsmith_div_vec3_f32(arg_3.b.a, vec3<f32>(210f, 154f, arg_1.a.x)), any(vec2<bool>(true, false))))), arg_3.b.a.xz), ~select(firstTrailingBit(~vec4<u32>(u_input.a, u_input.a, var_0.d, 4294967295u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.d, u_input.a), vec3<u32>(38766u, var_0.c.c, 1u)), 4294967295u, _wgslsmith_clamp_u32(66498u, var_0.d, 0u), arg_2.a.c | 25944u), false), Struct_4(arg_2, Struct_2(vec3<f32>(-550f, _wgslsmith_f_op_f32(abs(arg_1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -873f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))), _wgslsmith_f_op_f32(-1397f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c.a.x), -177f))));
    global0 = reverseBits(vec3<i32>(-3881i, -20629i, -firstTrailingBit(global0.x)) ^ ~countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(33095i, -10526i, -22064i), vec3<i32>(global0.x, global0.x, -77052i))));
    return 809f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -121f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1028f)) + -913f), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-121f - 439f), -105f)), _wgslsmith_f_op_f32(func_4(u_input.a >= 1u, func_1(true, Struct_3(Struct_1(vec4<f32>(-378f, 741f, 799f, -875f), 0u, u_input.a), u_input.a, Struct_1(vec4<f32>(-102f, -1404f, -527f, 381f), u_input.a, 1u), u_input.a)), Struct_3(Struct_1(vec4<f32>(1136f, 429f, 773f, 1000f), 59958u, u_input.a), u_input.a, Struct_1(vec4<f32>(-1050f, 619f, 447f, -825f), u_input.a, u_input.a), 0u), Struct_4(Struct_3(Struct_1(vec4<f32>(-1322f, -158f, -2162f, -1539f), 70525u, u_input.a), u_input.a, Struct_1(vec4<f32>(1136f, 1000f, 450f, 1883f), u_input.a, u_input.a), 27960u), Struct_2(vec3<f32>(-824f, -149f, -2780f)), vec2<f32>(1384f, -804f)))))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_div_f32(-125f, var_0.x)))), _wgslsmith_f_op_f32(select(var_0.x, var_0.x, !(_wgslsmith_f_op_f32(ceil(var_0.x)) <= _wgslsmith_div_f32(var_0.x, var_0.x)))), 1473f);
    var var_2 = global0.x;
    var var_3 = Struct_5(Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2041f, 604f, 784f, -868f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -594f, var_1.x, var_1.x)))), 4294967295u, _wgslsmith_div_u32(1u, _wgslsmith_mult_u32(u_input.a, 4793u))), 67300u | (u_input.a << ((1u ^ u_input.a) % 32u)), func_1(any(vec3<bool>(true, true, true)), Struct_3(func_1(false, Struct_3(Struct_1(vec4<f32>(-259f, 527f, var_1.x, 1000f), u_input.a, 4294967295u), u_input.a, Struct_1(vec4<f32>(-557f, var_0.x, var_1.x, 387f), 63079u, 45373u), 760u)), ~u_input.a, Struct_1(vec4<f32>(var_1.x, var_0.x, -1000f, 340f), 132089u, u_input.a), 2845u)), 0u), Struct_4(Struct_3(func_1(true, Struct_3(Struct_1(vec4<f32>(var_0.x, 412f, var_1.x, var_1.x), u_input.a, u_input.a), u_input.a, Struct_1(vec4<f32>(319f, var_0.x, 2039f, 280f), u_input.a, u_input.a), 23155u)), 36009u, Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-120f, -1074f, 564f, var_0.x), vec4<f32>(468f, 2583f, 924f, 771f)), 1u, min(u_input.a, 16723u)), _wgslsmith_clamp_u32(~u_input.a, 0u, func_2(28114i, false, vec4<i32>(global0.x, -27638i, 30294i, -11558i)))), Struct_2(vec3<f32>(-191f, 834f, _wgslsmith_f_op_f32(var_1.x - var_0.x))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(var_1.x))), _wgslsmith_f_op_vec2_f32(var_1.yx + var_1.yz)))), vec4<u32>((func_1(true, Struct_3(Struct_1(vec4<f32>(var_1.x, 237f, 1387f, var_0.x), u_input.a, 0u), 1u, Struct_1(vec4<f32>(var_0.x, var_1.x, var_1.x, var_1.x), 1u, u_input.a), 48605u)).b | 1u) & (_wgslsmith_div_u32(u_input.a, 40216u) >> (~61250u % 32u)), _wgslsmith_div_u32(u_input.a, ~24126u) << (~4294967295u % 32u), u_input.a, _wgslsmith_sub_u32(21867u, _wgslsmith_mod_u32(reverseBits(31542u), ~u_input.a))), Struct_4(Struct_3(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-1523f, var_0.x, var_1.x, 1000f), vec4<f32>(-1397f, 838f, var_0.x, var_0.x)), _wgslsmith_mod_u32(u_input.a, u_input.a), ~4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.a, 1u, 1u)) | _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.a, 15317u, 1u)), Struct_1(vec4<f32>(var_0.x, -354f, 745f, -929f), 4294967295u, u_input.a), 6271u), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1274f, 1000f) - vec3<f32>(var_0.x, var_1.x, var_0.x)) * _wgslsmith_f_op_vec3_f32(-var_1))), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x * var_1.x), var_1.x, true)))), 600f);
    var var_4 = _wgslsmith_sub_vec2_u32(~(vec2<u32>(u_input.a, u_input.a) ^ var_3.c.yw), abs(abs(var_3.c.wx) & (~var_3.c.wy | var_3.c.zx)));
    var var_5 = select(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), true)), vec4<bool>(false, false, true, true), vec4<bool>(all(vec4<bool>(true, false, false, true)), true, true, any(vec3<bool>(false, false, false)))), select(select(vec4<bool>(all(vec4<bool>(false, false, false, true)), true, select(false, false, false), all(vec3<bool>(true, false, false))), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)), false), vec4<bool>(true, true, true, true)), vec4<bool>(!any(vec3<bool>(false, false, false)), false, true, true), any(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)))), select(~(-2147483647i), global0.x, any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), false))) <= ~(_wgslsmith_add_i32(global0.x, 1i) << (_wgslsmith_mod_u32(var_3.b.a.a.c, 21993u) % 32u)));
    var var_6 = var_3.b;
    var var_7 = var_6.b.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-629f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -402f))), firstLeadingBit(-vec4<i32>(-global0.x, -global0.x, min(global0.x, 43658i), 2147483647i)), -1974f, -28253i, abs(~global0.yx));
}

