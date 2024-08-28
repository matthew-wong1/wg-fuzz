struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<bool>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(Struct_1(vec4<i32>(40756i, 42931i, -38193i, -23311i), i32(-2147483648), vec4<bool>(true, true, true, false), false, vec2<i32>(i32(-2147483648), -44491i)), 1u), Struct_3(Struct_1(vec4<i32>(-13603i, 0i, -1i, 2147483647i), -15751i, vec4<bool>(false, true, false, true), false, vec2<i32>(-23848i, 2147483647i)), 32465u), Struct_3(Struct_1(vec4<i32>(17276i, 16650i, 1i, 41620i), 41546i, vec4<bool>(true, true, true, true), false, vec2<i32>(i32(-2147483648), -25885i)), 4294967295u), Struct_3(Struct_1(vec4<i32>(-5921i, -24036i, -46578i, 1i), 0i, vec4<bool>(true, false, false, true), true, vec2<i32>(-17882i, 1670i)), 12040u), Struct_3(Struct_1(vec4<i32>(-1i, i32(-2147483648), -1i, -4430i), 22050i, vec4<bool>(false, true, true, false), false, vec2<i32>(2147483647i, -43786i)), 1u), Struct_3(Struct_1(vec4<i32>(-34671i, -1i, i32(-2147483648), -1i), -1i, vec4<bool>(true, false, false, true), false, vec2<i32>(0i, 2147483647i)), 23893u), Struct_3(Struct_1(vec4<i32>(-3064i, 2147483647i, -9042i, 22265i), 2147483647i, vec4<bool>(false, true, false, false), false, vec2<i32>(77i, i32(-2147483648))), 78989u), Struct_3(Struct_1(vec4<i32>(-1i, 14309i, -9745i, 17589i), 39077i, vec4<bool>(false, true, false, true), true, vec2<i32>(-26125i, i32(-2147483648))), 4294967295u), Struct_3(Struct_1(vec4<i32>(-13627i, -4806i, 2147483647i, -1i), 1i, vec4<bool>(true, false, true, true), true, vec2<i32>(58877i, 0i)), 1545u), Struct_3(Struct_1(vec4<i32>(-9215i, -57933i, 0i, 2147483647i), -1i, vec4<bool>(false, true, false, true), true, vec2<i32>(-40381i, 2147483647i)), 54117u), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), -17931i, 1i, 65588i), 64099i, vec4<bool>(true, true, true, false), true, vec2<i32>(-46101i, 6761i)), 4294967295u), Struct_3(Struct_1(vec4<i32>(-17341i, i32(-2147483648), -3454i, 18997i), 2147483647i, vec4<bool>(true, false, true, true), false, vec2<i32>(-1i, 8518i)), 27307u), Struct_3(Struct_1(vec4<i32>(23030i, -1i, -1786i, 9473i), 1i, vec4<bool>(false, false, false, true), false, vec2<i32>(1i, -27143i)), 21794u), Struct_3(Struct_1(vec4<i32>(1i, 26134i, 2147483647i, 46693i), 25012i, vec4<bool>(true, false, false, false), true, vec2<i32>(20398i, -1i)), 0u), Struct_3(Struct_1(vec4<i32>(-1i, -21820i, 45158i, 2147483647i), 9686i, vec4<bool>(false, true, true, true), true, vec2<i32>(0i, 2147483647i)), 0u), Struct_3(Struct_1(vec4<i32>(41408i, 3698i, 1i, -43848i), 0i, vec4<bool>(true, false, false, true), true, vec2<i32>(0i, 1572i)), 46573u), Struct_3(Struct_1(vec4<i32>(-2480i, 1i, -2696i, -4900i), 54018i, vec4<bool>(false, false, false, true), true, vec2<i32>(-21881i, -1i)), 51749u), Struct_3(Struct_1(vec4<i32>(-37294i, 1i, 0i, -46476i), 1i, vec4<bool>(false, false, false, true), true, vec2<i32>(-14413i, -10164i)), 32996u), Struct_3(Struct_1(vec4<i32>(2147483647i, -1i, -17587i, 1i), 74144i, vec4<bool>(false, true, true, true), false, vec2<i32>(1i, 1i)), 41211u), Struct_3(Struct_1(vec4<i32>(2147483647i, 1i, -7163i, 16771i), i32(-2147483648), vec4<bool>(false, true, false, false), false, vec2<i32>(29131i, -32413i)), 4294967295u), Struct_3(Struct_1(vec4<i32>(2147483647i, -1i, 1i, 29239i), 0i, vec4<bool>(false, false, true, true), false, vec2<i32>(0i, -22097i)), 3586u), Struct_3(Struct_1(vec4<i32>(-2813i, 11724i, -9722i, -1i), 21851i, vec4<bool>(true, false, true, true), true, vec2<i32>(2147483647i, -11435i)), 4294967295u), Struct_3(Struct_1(vec4<i32>(-32265i, -1i, 22283i, 1i), -10992i, vec4<bool>(false, false, false, false), true, vec2<i32>(0i, 11308i)), 5722u), Struct_3(Struct_1(vec4<i32>(1i, i32(-2147483648), -19997i, 0i), -5084i, vec4<bool>(false, false, true, true), false, vec2<i32>(-18825i, 2147483647i)), 321u), Struct_3(Struct_1(vec4<i32>(0i, 1i, -25846i, -1i), 2147483647i, vec4<bool>(false, true, true, false), false, vec2<i32>(0i, 18463i)), 1u), Struct_3(Struct_1(vec4<i32>(-50641i, 0i, 29295i, -14962i), 2147483647i, vec4<bool>(false, true, false, false), true, vec2<i32>(-1i, 0i)), 1u), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 2147483647i), i32(-2147483648), vec4<bool>(false, true, true, false), false, vec2<i32>(25261i, -14960i)), 9013u), Struct_3(Struct_1(vec4<i32>(1i, 0i, -1i, 0i), 3503i, vec4<bool>(true, false, true, true), false, vec2<i32>(-12659i, -18252i)), 1u), Struct_3(Struct_1(vec4<i32>(-11113i, -38019i, -1i, -35761i), -1i, vec4<bool>(false, false, true, true), false, vec2<i32>(1i, 0i)), 0u), Struct_3(Struct_1(vec4<i32>(25647i, -22017i, -84892i, 2147483647i), 0i, vec4<bool>(false, true, true, true), false, vec2<i32>(6751i, 3442i)), 16648u), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), 0i, -10485i, -28642i), i32(-2147483648), vec4<bool>(false, false, false, true), true, vec2<i32>(2147483647i, -33391i)), 8871u), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), -30848i, -2980i, -1i), 2147483647i, vec4<bool>(true, false, true, true), false, vec2<i32>(-35311i, -1i)), 0u));

var<private> global1: vec2<i32>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<bool>) -> u32 {
    var var_0 = Struct_1(vec4<i32>(i32(-1i) * -14282i, -2147483647i, _wgslsmith_mod_i32(~36165i, -2147483647i) << (reverseBits(~arg_0) % 32u), -_wgslsmith_sub_i32(u_input.a, -2147483647i)), global1.x, vec4<bool>(!any(vec3<bool>(arg_2.x, true, arg_2.x)), 0u < arg_0, _wgslsmith_f_op_f32(floor(-512f)) <= _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-847f + 1293f))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -608f), _wgslsmith_f_op_f32(f32(-1f) * -1287f))), true, -(vec2<i32>(~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, 0i), vec2<i32>(0i, u_input.a))) | vec2<i32>(_wgslsmith_mod_i32(56644i, global1.x), global1.x)));
    var_0 = Struct_1(reverseBits(-var_0.a), _wgslsmith_mod_i32(var_0.a.x & var_0.a.x, 1i), select(!vec4<bool>(!arg_2.x, true, var_0.d, false), vec4<bool>(any(vec2<bool>(arg_1.x, true)), !arg_2.x, all(!vec2<bool>(var_0.d, true)), ~arg_0 > arg_0), vec4<bool>(!arg_2.x, _wgslsmith_f_op_f32(877f * -854f) < _wgslsmith_f_op_f32(ceil(501f)), any(vec3<bool>(false, false, var_0.c.x)), any(vec2<bool>(true, true)))), !(!(true && all(arg_1))), vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.a.x, 23589i, global1.x, u_input.a), var_0.a), _wgslsmith_add_i32(u_input.a, global1.x)));
    let var_1 = ~vec4<u32>(5309u, min(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(8664u, arg_0, arg_0), ~27241u), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, 21672u, 28741u, 13845u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, 0u, 55977u, arg_0), vec4<u32>(arg_0, arg_0, arg_0, arg_0)))), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(45224u, 1u)), vec2<u32>(arg_0, _wgslsmith_sub_u32(arg_0, 0u))), _wgslsmith_sub_u32(arg_0, ~0u));
    var var_2 = global1.x;
    var_0 = Struct_1(vec4<i32>(u_input.a, -2147483647i, i32(-1i) * -u_input.a, 0i), u_input.a, var_0.c, !((_wgslsmith_f_op_f32(-146f - 671f) >= _wgslsmith_f_op_f32(step(-153f, 1110f))) && var_0.d), vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(select(_wgslsmith_add_vec3_i32(vec3<i32>(-39838i, var_0.e.x, 17350i), vec3<i32>(var_0.a.x, global1.x, global1.x)), var_0.a.wzy, var_0.c.ywx), abs(vec3<i32>(1i, global1.x, u_input.a)))));
    return 0u;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<u32>) -> vec4<u32> {
    global1 = arg_0.zz;
    global1 = _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(arg_0.zx, _wgslsmith_sub_vec2_i32(arg_0.yy, _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, global1.x), arg_0.xx)) | arg_0.xz), arg_0.xx);
    var var_0 = global1.x;
    global1 = arg_0.xx;
    let var_1 = true;
    return max(vec4<u32>(~min(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 1u, 1u), vec3<u32>(arg_1.x, 37993u, 29587u)), ~1u), 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(arg_1.x, arg_1.x), ~12867u, ~arg_1.x), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, arg_1.x) | vec3<u32>(arg_1.x, 0u, arg_1.x), ~vec3<u32>(arg_1.x, 4294967295u, 20830u))), 0u), min(~vec4<u32>(func_3(4294967295u, vec3<bool>(true, var_1, true), vec3<bool>(var_1, var_1, var_1)), arg_1.x, arg_1.x, 10540u), firstLeadingBit(vec4<u32>(arg_1.x, _wgslsmith_mult_u32(arg_1.x, arg_1.x), ~arg_1.x, 1u))));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: u32, arg_3: bool) -> Struct_3 {
    var var_0 = firstLeadingBit(~u_input.a);
    let var_1 = _wgslsmith_sub_vec4_u32(~(~min(vec4<u32>(arg_2, 115290u, arg_2, 4294967295u), func_2(vec3<i32>(u_input.a, u_input.a, -2147483647i), vec2<u32>(0u, 4294967295u)))), ~(~vec4<u32>(~arg_2, arg_2, 1u, _wgslsmith_div_u32(1u, arg_2))));
    var var_2 = !(!arg_3) == false;
    var var_3 = Struct_3(Struct_1(-(~firstTrailingBit(vec4<i32>(u_input.a, global1.x, global1.x, u_input.a))), -19585i & global1.x, !(!(!vec4<bool>(true, true, arg_3, arg_3))), !(!arg_3 || false), countOneBits(abs(vec2<i32>(global1.x, global1.x)))), 4294967295u);
    let var_4 = Struct_1(min(var_3.a.a, vec4<i32>(_wgslsmith_sub_i32(var_3.a.e.x, 56842i), _wgslsmith_mod_i32(~63001i, u_input.a | u_input.a), 1i, countOneBits(13181i))), global1.x, vec4<bool>((_wgslsmith_dot_vec4_i32(var_3.a.a, vec4<i32>(global1.x, 12480i, -1i, global1.x)) | _wgslsmith_mult_i32(-2147483647i, u_input.a)) <= ((var_3.a.a.x | -11839i) ^ var_3.a.b), arg_3, !arg_3, 2524f > _wgslsmith_f_op_f32(sign(arg_0))), arg_3, -vec2<i32>(_wgslsmith_sub_i32(1i, -1i), max(-517i, u_input.a)));
    return Struct_3(Struct_1(vec4<i32>(_wgslsmith_sub_i32(global1.x, -17032i), _wgslsmith_add_i32(~1i, -49602i), -2689i, -_wgslsmith_div_i32(-1i, -13819i)), var_3.a.b, select(var_3.a.c, vec4<bool>(var_4.c.x, !var_3.a.c.x, !arg_3, arg_3), var_4.c), true, vec2<i32>(0i, _wgslsmith_sub_i32(-var_4.e.x, -var_4.e.x))), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_1.wy, vec2<u32>(1u, arg_2)), abs(_wgslsmith_sub_vec2_u32(~var_1.xz, ~vec2<u32>(0u, var_3.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-517f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1129f + 1652f) - _wgslsmith_f_op_f32(-1780f + -642f)) - _wgslsmith_f_op_f32(f32(-1f) * -266f)), _wgslsmith_f_op_f32(-799f * _wgslsmith_f_op_f32(select(-546f, _wgslsmith_div_f32(706f, 1128f), true))))), ~24450u, !(true || (all(vec3<bool>(true, true, false)) == any(vec4<bool>(true, false, false, false)))));
    global0 = array<Struct_3, 32>();
    var var_1 = _wgslsmith_mod_i32(-5838i, min(global1.x << (countOneBits(var_0.b) % 32u), -_wgslsmith_clamp_i32(firstLeadingBit(global1.x), ~0i, _wgslsmith_clamp_i32(var_0.a.b, var_0.a.e.x, -2147483647i))));
    var var_2 = _wgslsmith_mod_i32(-1i, -var_0.a.a.x);
    global1 = _wgslsmith_mod_vec2_i32(vec2<i32>(-22526i, max(global1.x, _wgslsmith_sub_i32(1i, var_0.a.b))), _wgslsmith_mod_vec2_i32(countOneBits(var_0.a.a.zw), vec2<i32>(min(-26069i, -8509i), u_input.a)));
    var var_3 = _wgslsmith_sub_i32(~(~var_0.a.a.x), ~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(18662i, u_input.a), -2147483647i, func_1(-1099f, -238f, 20998u, true).a.b, min(global1.x, var_0.a.a.x)), ~select(var_0.a.a, var_0.a.a, false)));
    let var_4 = select(~max(vec2<u32>(var_0.b, 43786u) & _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.b, var_0.b), vec2<u32>(34777u, var_0.b)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(50315u, var_0.b), vec2<u32>(var_0.b, var_0.b))), vec2<u32>(0u, 39588u), var_0.a.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1710f, 281f))), _wgslsmith_f_op_f32(f32(-1f) * -724f), ~var_4.x, false).a.a.yxy, abs(vec3<i32>(1i, _wgslsmith_sub_i32(-1i, 0i), 1i))), vec4<u32>(22282u, _wgslsmith_div_u32(func_1(-757f, -298f, 92444u, false).b ^ _wgslsmith_sub_u32(var_4.x, 1u), ~var_0.b), 1u, _wgslsmith_div_u32(~(var_0.b >> (var_4.x % 32u)), _wgslsmith_sub_u32(19557u, 0u))), 1i);
}

