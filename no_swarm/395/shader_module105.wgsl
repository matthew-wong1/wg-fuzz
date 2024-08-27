struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 319f;

var<private> global1: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(-889f, 750f, -1615f, 1721f), vec4<f32>(941f, 143f, -772f, -1079f), vec4<f32>(1596f, 309f, -1000f, -1158f), vec4<f32>(-273f, -668f, -1000f, 749f), vec4<f32>(121f, 708f, -793f, 683f), vec4<f32>(478f, -997f, 734f, 643f), vec4<f32>(864f, -1149f, 429f, 362f), vec4<f32>(-286f, 820f, -608f, -1379f), vec4<f32>(-609f, 460f, 741f, -557f), vec4<f32>(321f, -723f, 2008f, -1353f), vec4<f32>(-739f, -377f, -632f, -457f), vec4<f32>(-1270f, -678f, -1000f, -634f), vec4<f32>(-819f, -863f, -1000f, 774f), vec4<f32>(1324f, 1234f, 564f, 259f), vec4<f32>(1917f, -108f, -555f, 522f), vec4<f32>(1745f, 409f, 1507f, -1000f), vec4<f32>(175f, -1187f, 1204f, -828f), vec4<f32>(455f, 147f, -453f, -107f), vec4<f32>(-1681f, -1571f, 632f, 1319f), vec4<f32>(-316f, -1150f, 625f, 944f), vec4<f32>(-480f, -116f, -1749f, -1371f), vec4<f32>(229f, 954f, 340f, 680f), vec4<f32>(-2154f, -347f, -1000f, -887f), vec4<f32>(1000f, 1026f, 1549f, 1358f), vec4<f32>(1644f, -2013f, -2678f, -405f), vec4<f32>(223f, -1701f, -1832f, 1376f), vec4<f32>(533f, 864f, -241f, -282f), vec4<f32>(-1718f, 1790f, -2096f, -1110f), vec4<f32>(-101f, 559f, -520f, 1000f), vec4<f32>(1441f, 351f, -830f, 200f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> vec4<bool> {
    var var_0 = !select(vec4<bool>(any(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true)), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)))), vec4<bool>(select(u_input.a < 13139u, all(vec4<bool>(true, true, false, true)), -100f >= arg_0.x), any(vec3<bool>(true, false, true)), all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), true));
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -596f), _wgslsmith_div_f32(-745f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, 137f, var_0.x))))), -33668i);
    let var_2 = countOneBits(_wgslsmith_clamp_i32(~reverseBits(~var_1.b), u_input.e.x, 0i));
    var var_3 = var_1;
    var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x + -165f)), vec2<f32>(-462f, _wgslsmith_div_f32(-523f, -339f))) - var_1.a), var_3.b);
    return vec4<bool>(all(var_0.yy), var_0.x, all(select(var_0.zww, vec3<bool>(true, !var_0.x, false), false)), true);
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: vec2<u32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(596f, arg_0)))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, arg_0)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, arg_0))), vec2<f32>(397f, -1613f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-900f, -1115f), vec2<f32>(arg_0, 954f)))), _wgslsmith_div_i32(i32(-1i) * -17512i, -15336i));
    global1 = array<vec4<f32>, 30>();
    let var_1 = var_0;
    let var_2 = ~arg_2.x;
    global0 = -937f;
    return ~arg_2.x;
}

fn func_2(arg_0: u32) -> vec2<bool> {
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -351f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(599f))))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1275f))))));
    global1 = array<vec4<f32>, 30>();
    let var_0 = vec4<u32>(_wgslsmith_clamp_u32(min(_wgslsmith_sub_u32(arg_0, ~u_input.a), arg_0), 26100u, _wgslsmith_mult_u32(~_wgslsmith_sub_u32(26530u, arg_0), _wgslsmith_sub_u32(u_input.a, ~17809u))), ~(~0u) | u_input.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(45195u, 41181u) ^ _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, arg_0), ~vec2<u32>(arg_0, u_input.a)), ~_wgslsmith_add_vec2_u32(vec2<u32>(27708u, u_input.a), vec2<u32>(4294967295u, arg_0)) | vec2<u32>(65998u, 4294967295u)), max(reverseBits(_wgslsmith_add_u32(8310u, _wgslsmith_mod_u32(u_input.a, u_input.a))), func_4(_wgslsmith_f_op_f32(f32(-1f) * -1000f), !func_3(vec3<f32>(682f, -464f, -428f)), max(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, 1u)), select(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(51234u, 4294967295u), vec2<bool>(true, false))))));
    global1 = array<vec4<f32>, 30>();
    let var_1 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-475f - -143f)), 697f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1628f, -863f))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(395f, -1976f), vec2<f32>(1206f, 1500f)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1318f, -701f)))))), ~(_wgslsmith_sub_i32(-2147483647i, ~u_input.b) ^ _wgslsmith_dot_vec2_i32(u_input.e & vec2<i32>(-2147483647i, u_input.e.x), u_input.e)));
    return vec2<bool>(!any(vec3<bool>(true, true, true)), !(!all(vec3<bool>(false, false, false)) && (u_input.e.x <= ~var_1.b)));
}

fn func_1() -> Struct_1 {
    global1 = array<vec4<f32>, 30>();
    let var_0 = select(func_2(~(_wgslsmith_mod_u32(u_input.a, u_input.a) >> ((u_input.a | 15058u) % 32u))), !select(select(vec2<bool>(true, true), func_3(vec3<f32>(-601f, 1044f, 313f)).yx, true), func_2(~4294967295u), true), vec2<bool>(!(any(vec3<bool>(true, true, false)) != true), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), true), true))));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(228f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1145f)) - 1518f)), _wgslsmith_f_op_f32(step(1005f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(980f, -746f)) - -821f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1556f, 611f))))))));
    let var_2 = max(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.c, -13548i, u_input.d), abs(vec3<i32>(26023i, u_input.d, u_input.c))), ~select(vec3<i32>(u_input.c, u_input.b, u_input.e.x), ~vec3<i32>(u_input.c, -48632i, u_input.b), u_input.b <= u_input.e.x), ~(-vec3<i32>(u_input.e.x, -67941i, u_input.e.x))), vec3<i32>(-(~_wgslsmith_mod_i32(u_input.d, 11842i)), u_input.d, u_input.c));
    var_1 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(exp2(var_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -369f), -1124f);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-925f, -1060f)))) * _wgslsmith_f_op_vec2_f32(sign(var_1.wz)))), ~countOneBits(14780i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_1(var_0.a, -2147483647i);
    var var_1 = vec4<i32>(-2147483647i, -(_wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, var_0.b), -u_input.e) | var_0.b), 2147483647i, firstLeadingBit(_wgslsmith_sub_i32(reverseBits(8593i), i32(-1i) * -4166i)) & -(i32(-1i) * -var_0.b));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(var_0.a - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1509f, var_0.a.x)))), 1i);
    var_1 = select(vec4<i32>(~min(-13575i, _wgslsmith_dot_vec3_i32(var_1.xzw, var_1.xxz)), -1i >> (1u % 32u), 0i, max(_wgslsmith_sub_i32(firstTrailingBit(424i), -38304i), -71960i)), _wgslsmith_mult_vec4_i32(countOneBits(_wgslsmith_add_vec4_i32(-vec4<i32>(var_0.b, var_1.x, var_2.b, -4065i), -vec4<i32>(-33409i, var_2.b, 1i, 51981i))), _wgslsmith_div_vec4_i32(-(vec4<i32>(1i, var_0.b, 1i, var_1.x) ^ vec4<i32>(var_0.b, u_input.c, var_2.b, 21284i)), -vec4<i32>(-2147483647i, var_2.b, -22386i, 23675i) >> (~vec4<u32>(u_input.a, 0u, u_input.a, 79983u) % vec4<u32>(32u)))), select(vec4<bool>(false, any(vec3<bool>(true, true, true)), any(vec2<bool>(false, false)), true), select(!func_3(vec3<f32>(-722f, var_2.a.x, var_0.a.x)), vec4<bool>(true, true, true, true), !func_3(vec3<f32>(349f, -1342f, var_0.a.x))), select(vec4<bool>(true, true, all(vec3<bool>(true, false, false)), -1000f == var_0.a.x), vec4<bool>(func_2(u_input.a).x, func_3(vec3<f32>(var_2.a.x, var_0.a.x, var_0.a.x)).x, false, true), vec4<bool>(true, var_0.a.x != 772f, true, true))));
    global0 = _wgslsmith_f_op_f32(sign(var_0.a.x));
    var_1 = vec4<i32>(-2147483647i, var_2.b, ~u_input.b, var_1.x);
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-950f, vec4<u32>(~(1u & (u_input.a << (0u % 32u))), u_input.a, ~firstTrailingBit(_wgslsmith_mult_u32(41311u, u_input.a)), 12126u));
}

