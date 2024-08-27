struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

var<private> global1: i32 = 1i;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> f32 {
    let var_0 = select(vec4<bool>(!any(vec3<bool>(true, true, true)), _wgslsmith_sub_u32(_wgslsmith_add_u32(arg_1.c.x, 0u), ~94964u) >= arg_0, true, false), !vec4<bool>(true, !(u_input.a.x >= -22975i), true, !all(vec3<bool>(false, false, false))), true);
    let var_1 = arg_0;
    let var_2 = Struct_2(arg_1.c.x, arg_1, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(-678f + arg_1.d.x), _wgslsmith_f_op_f32(369f * -1432f), _wgslsmith_f_op_f32(sign(arg_1.b.x))) * arg_1.d), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_div_f32(arg_1.b.x, -637f), 379f))), select(~vec3<u32>(var_1, 33568u, 48444u), ~_wgslsmith_mod_vec3_u32(arg_1.c, arg_1.c), var_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.d * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, arg_1.d.x, 538f, arg_1.b.x))) + vec4<f32>(667f, _wgslsmith_div_f32(arg_1.a.x, 529f), _wgslsmith_f_op_f32(trunc(-329f)), arg_1.b.x))), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-arg_1.a))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -363f) + _wgslsmith_f_op_f32(f32(-1f) * -831f)), _wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(f32(-1f) * -781f))), _wgslsmith_mod_vec3_u32(~_wgslsmith_sub_vec3_u32(arg_1.c, vec3<u32>(0u, 33163u, arg_0)), arg_1.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(762f, 500f, arg_1.a.x, -681f), _wgslsmith_f_op_vec4_f32(vec4<f32>(2258f, arg_1.d.x, arg_1.d.x, -347f) + arg_1.d), vec4<bool>(var_0.x, true, true, false))) * vec4<f32>(1f, _wgslsmith_f_op_f32(arg_1.d.x * 425f), _wgslsmith_f_op_f32(-563f - 1491f), _wgslsmith_f_op_f32(-384f - arg_1.d.x)))), arg_1.b.x);
    return _wgslsmith_f_op_f32(-585f - -841f);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: vec4<i32>) -> vec4<f32> {
    let var_0 = Struct_2(arg_0.c.x, Struct_1(arg_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_2, -353f))), vec2<f32>(arg_1, arg_2)))), _wgslsmith_mod_vec3_u32(arg_0.c | (arg_0.c | vec3<u32>(arg_0.c.x, arg_0.c.x, arg_0.c.x)), ~arg_0.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1 + arg_0.d.x), arg_2, -1227f, _wgslsmith_f_op_f32(max(-2061f, 464f))) + _wgslsmith_f_op_vec4_f32(arg_0.d * vec4<f32>(arg_1, arg_1, arg_1, arg_1)))), Struct_1(vec4<f32>(arg_0.a.x, -604f, arg_0.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_0.a.x, -813f))))), arg_0.b, _wgslsmith_mult_vec3_u32(abs(~arg_0.c), arg_0.c << (~arg_0.c % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2076f, arg_0.d.x, arg_2, 503f) + _wgslsmith_f_op_vec4_f32(sign(arg_0.a))) - arg_0.a)), arg_0, _wgslsmith_f_op_f32(-1477f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1626f, -851f)))))));
    let var_1 = Struct_2(~_wgslsmith_dot_vec2_u32(arg_0.c.zy, reverseBits(arg_0.c.xx)), arg_0, Struct_1(var_0.b.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_0.d.a.wz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1057f, -207f)))) + vec2<f32>(var_0.c.a.x, _wgslsmith_f_op_f32(-543f * -927f))), vec3<u32>(5209u, reverseBits(47619u), countOneBits(var_0.c.c.x ^ 13271u)), arg_0.d), Struct_1(var_0.c.d, arg_0.d.yy, reverseBits(~(~arg_0.c)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(886f, arg_0.a.x, var_0.d.b.x, 2147f)))))), -471f);
    var var_2 = vec4<u32>(var_1.d.c.x, ~abs(firstTrailingBit(14313u)), arg_0.c.x, 796u);
    let var_3 = Struct_3(firstTrailingBit(_wgslsmith_mult_vec3_u32(firstTrailingBit(abs(vec3<u32>(var_0.c.c.x, 8573u, 22251u))), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(17719u, var_2.x, 18928u), vec3<u32>(55083u, 0u, var_1.c.c.x)), select(var_0.d.c, var_0.b.c, true), vec3<u32>(1u, arg_0.c.x, 9499u)))));
    var var_4 = var_1;
    return vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.c.a.x)), 1584f, _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(arg_0.d.x - _wgslsmith_f_op_f32(-arg_0.d.x)));
}

fn func_2() -> vec4<u32> {
    let var_0 = Struct_2(~countOneBits(1u), Struct_1(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(342f, 604f, -137f, -743f) - vec4<f32>(576f, 746f, 424f, 759f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1992f, -875f) + vec2<f32>(740f, -1400f)), vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1328f, 672f, 1276f, 1199f) * vec4<f32>(644f, 563f, -611f, 941f))), _wgslsmith_f_op_f32(func_3(~0u, Struct_1(vec4<f32>(502f, -868f, 1000f, -674f), vec2<f32>(100f, 1000f), vec3<u32>(0u, 5490u, 11332u), vec4<f32>(454f, -1427f, -968f, 232f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -284f)), u_input.d)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 925f) * vec2<f32>(-124f, -649f)), vec2<bool>(true, true))), ~vec3<u32>(_wgslsmith_div_u32(4294967295u, 782u), ~1u, countOneBits(21494u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1062f, 945f, 1945f, 634f), vec4<f32>(440f, 1274f, -1022f, 523f), vec4<bool>(true, true, false, true)))))), Struct_1(vec4<f32>(1493f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(97599u, Struct_1(vec4<f32>(581f, -1606f, -955f, -177f), vec2<f32>(-1579f, -1000f), vec3<u32>(0u, 82475u, 1u), vec4<f32>(407f, -790f, -1400f, -608f)))) + 1449f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -840f)), 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1228f, -710f)))), ~firstLeadingBit(vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(281f, -1109f, -226f, _wgslsmith_div_f32(-282f, 1045f)))), Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1007f, 1000f, 145f, -1646f) * vec4<f32>(881f, -519f, 449f, -187f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(415f, -529f, 236f, 916f) * vec4<f32>(284f, 421f, -364f, 177f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(422f, 362f, -1157f, 1000f), vec4<f32>(-1100f, 588f, -1736f, 471f), false))))), _wgslsmith_f_op_vec4_f32(func_4(Struct_1(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(838f, -938f)), abs(vec3<u32>(14837u, 11436u, 29635u)), vec4<f32>(133f, 831f, 850f, 392f)), -282f, 700f, vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a.x), u_input.d.wx), 1i, 35907i, -2147483647i))).xz, ~firstLeadingBit(vec3<u32>(33186u, 84531u, 31512u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1602f, -1100f, 1471f, 289f) + vec4<f32>(-485f, -126f, -1667f, -926f)) + _wgslsmith_f_op_vec4_f32(func_4(Struct_1(vec4<f32>(-350f, 1048f, 665f, 1002f), vec2<f32>(679f, -136f), vec3<u32>(31899u, 96371u, 1u), vec4<f32>(-940f, 710f, 237f, -922f)), 2504f, -316f, vec4<i32>(9881i, 4512i, -1i, -1150i)))) * vec4<f32>(654f, -662f, 1363f, 1024f))), -1580f);
    let var_1 = vec3<bool>(!any(vec2<bool>(true, true)) & all(vec2<bool>(true, true)), all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)), var_0.d.b.x > var_0.e), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true)))), true);
    var var_2 = select(vec4<bool>(var_1.x || all(select(var_1, var_1, true)), all(!(!vec4<bool>(true, true, true, var_1.x))), var_1.x, true), select(!(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), vec4<bool>(var_1.x, all(select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, true, var_1.x), vec3<bool>(true, var_1.x, false))), all(var_1), (var_0.d.c.x | 27767u) <= var_0.a), vec4<bool>(!all(vec4<bool>(true, var_1.x, true, var_1.x)), true != any(var_1), any(!var_1.yy), any(!vec4<bool>(true, var_1.x, var_1.x, false)))), true);
    let var_3 = Struct_3(var_0.c.c ^ _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 79906u, 27433u), ~vec3<u32>(36049u, var_0.c.c.x, 65864u)), var_0.d.c));
    global1 = 1i & -u_input.a.x;
    return vec4<u32>(_wgslsmith_div_u32(var_3.a.x, 28197u), (~var_3.a.x ^ firstTrailingBit(var_0.d.c.x)) ^ 72272u, _wgslsmith_add_u32(var_0.b.c.x, 29684u), var_3.a.x);
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_mult_vec4_u32(~func_2(), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, abs(4294967295u), _wgslsmith_mult_u32(26731u, 0u), abs(0u)), ~(~vec4<u32>(94023u, 83755u, 9437u, 0u)), vec4<u32>(func_2().x, 1u, ~28907u, 1u)) >> (vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(38895u, 4085u, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(24909u, 8109u, 7784u, 54159u), vec4<u32>(49021u, 4294967295u, 0u, 4294967295u))), reverseBits(4294967295u >> (1u % 32u)), 62712u, reverseBits(0u) << (0u % 32u)) % vec4<u32>(32u)));
    var var_1 = var_0.x;
    var var_2 = 0u;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), vec2<f32>(-751f, 480f), ~var_0.yyw, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-419f * -428f), 1f, _wgslsmith_f_op_f32(func_3(var_0.x, Struct_1(vec4<f32>(1049f, 837f, 1086f, 881f), vec2<f32>(-267f, -271f), var_0.wwy, vec4<f32>(375f, 962f, -688f, 348f)))), _wgslsmith_f_op_f32(503f * -1094f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-572f, -993f, -503f, -199f), vec4<f32>(-1817f, 171f, -817f, -376f))), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), false))))));
    global0 = array<i32, 5>();
    return Struct_3(_wgslsmith_sub_vec3_u32(~(var_3.c << (vec3<u32>(var_3.c.x, 20555u, 34286u) % vec3<u32>(32u))), func_2().zyy) & max(select(var_0.xxw, var_3.c, vec3<bool>(true, true, false)) >> (max(var_0.xyz, var_0.www) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 16825u, var_3.c.x), 0u, abs(var_3.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = countOneBits(u_input.c.x);
    global0 = array<i32, 5>();
    var var_0 = func_1();
    var_0 = Struct_3(~var_0.a);
    global0 = array<i32, 5>();
    global1 = abs(abs(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -13994i, global0[_wgslsmith_index_u32(var_0.a.x, 5u)], global0[_wgslsmith_index_u32(var_0.a.x, 5u)]), u_input.d), u_input.d.x >> (var_0.a.x % 32u)) >> (0u % 32u)));
    global1 = u_input.d.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(412f, 272f) - vec2<f32>(-1168f, -478f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, _wgslsmith_add_vec4_u32(~(reverseBits(vec4<u32>(0u, var_0.a.x, var_0.a.x, 1984u)) >> (min(vec4<u32>(var_0.a.x, 57753u, var_0.a.x, 1u), vec4<u32>(var_0.a.x, var_0.a.x, 0u, 0u)) % vec4<u32>(32u))), vec4<u32>(countOneBits(countOneBits(var_0.a.x)), ~(~var_0.a.x), var_0.a.x, _wgslsmith_dot_vec3_u32(var_0.a, ~var_0.a))), reverseBits(max(_wgslsmith_mod_vec4_i32(u_input.d, vec4<i32>(u_input.c.x, u_input.b.x, u_input.a.x, u_input.c.x)), u_input.d) << (vec4<u32>(1u, ~var_0.a.x, _wgslsmith_add_u32(1u, var_0.a.x), ~var_0.a.x) % vec4<u32>(32u))));
}

