struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec4<f32>,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 8> = array<Struct_5, 8>(Struct_5(Struct_3(vec2<u32>(61060u, 4294967295u), false, Struct_2(vec3<bool>(false, false, false), true, Struct_1(vec4<u32>(4294967295u, 69842u, 73359u, 10273u), vec4<i32>(1i, 15119i, -1i, 1i), vec4<f32>(810f, 1326f, 1047f, -2167f)), Struct_1(vec4<u32>(4294967295u, 0u, 0u, 736u), vec4<i32>(-15410i, -4102i, -19082i, i32(-2147483648)), vec4<f32>(-1123f, 553f, -1301f, -651f)), vec2<bool>(false, false))), vec4<i32>(2147483647i, 1i, 1i, 0i), vec4<i32>(0i, 5027i, -31016i, 11387i)), Struct_5(Struct_3(vec2<u32>(4294967295u, 1u), true, Struct_2(vec3<bool>(false, true, false), true, Struct_1(vec4<u32>(19498u, 0u, 0u, 1u), vec4<i32>(0i, 26022i, 2147483647i, i32(-2147483648)), vec4<f32>(1412f, 580f, 815f, -626f)), Struct_1(vec4<u32>(80349u, 27683u, 121757u, 0u), vec4<i32>(0i, -1i, -1i, 2147483647i), vec4<f32>(1307f, -152f, 427f, -112f)), vec2<bool>(false, true))), vec4<i32>(0i, -16634i, -32047i, i32(-2147483648)), vec4<i32>(12538i, i32(-2147483648), i32(-2147483648), 2147483647i)), Struct_5(Struct_3(vec2<u32>(70526u, 22682u), true, Struct_2(vec3<bool>(true, false, false), true, Struct_1(vec4<u32>(1u, 4294967295u, 0u, 25745u), vec4<i32>(48514i, 1i, -1i, -29350i), vec4<f32>(855f, 1108f, -288f, 373f)), Struct_1(vec4<u32>(4294967295u, 6454u, 0u, 0u), vec4<i32>(-4094i, 1i, 2147483647i, 0i), vec4<f32>(-618f, -130f, -447f, -560f)), vec2<bool>(false, false))), vec4<i32>(-58515i, i32(-2147483648), 1i, 1i), vec4<i32>(-30182i, 2147483647i, 0i, 1i)), Struct_5(Struct_3(vec2<u32>(26421u, 4294967295u), false, Struct_2(vec3<bool>(true, true, true), true, Struct_1(vec4<u32>(0u, 9520u, 38005u, 5938u), vec4<i32>(-63064i, 1i, 0i, 69727i), vec4<f32>(855f, 1000f, -176f, 1464f)), Struct_1(vec4<u32>(1u, 33146u, 17261u, 4294967295u), vec4<i32>(48261i, i32(-2147483648), 0i, -16989i), vec4<f32>(-438f, -1688f, 748f, -1398f)), vec2<bool>(false, true))), vec4<i32>(3727i, -20765i, 5848i, -1i), vec4<i32>(1i, 12909i, 4336i, 17271i)), Struct_5(Struct_3(vec2<u32>(19140u, 1u), false, Struct_2(vec3<bool>(true, true, false), true, Struct_1(vec4<u32>(27773u, 86401u, 11957u, 347u), vec4<i32>(25681i, -1i, 1i, 1i), vec4<f32>(1037f, -1509f, -997f, 2075f)), Struct_1(vec4<u32>(22387u, 1u, 5547u, 15656u), vec4<i32>(16504i, 4800i, 37006i, -5726i), vec4<f32>(1151f, 1414f, -569f, 397f)), vec2<bool>(true, false))), vec4<i32>(0i, -1i, 14737i, 1i), vec4<i32>(-37408i, 44606i, 2147483647i, 983i)), Struct_5(Struct_3(vec2<u32>(0u, 20746u), false, Struct_2(vec3<bool>(false, true, true), false, Struct_1(vec4<u32>(0u, 49514u, 1u, 0u), vec4<i32>(i32(-2147483648), -30176i, -48112i, -1i), vec4<f32>(387f, 226f, -510f, 1133f)), Struct_1(vec4<u32>(3078u, 1u, 34671u, 1u), vec4<i32>(-14142i, 18795i, i32(-2147483648), 2147483647i), vec4<f32>(-656f, -105f, -297f, -292f)), vec2<bool>(true, true))), vec4<i32>(1i, -47791i, -1i, -30146i), vec4<i32>(48151i, -4229i, -7875i, -5082i)), Struct_5(Struct_3(vec2<u32>(4294967295u, 44046u), false, Struct_2(vec3<bool>(false, false, true), true, Struct_1(vec4<u32>(0u, 4294967295u, 0u, 33114u), vec4<i32>(28101i, 1i, 0i, 0i), vec4<f32>(-591f, 916f, -366f, -482f)), Struct_1(vec4<u32>(1u, 21815u, 4294967295u, 36213u), vec4<i32>(-1i, 0i, 2147483647i, 2147483647i), vec4<f32>(1567f, 485f, 346f, 1000f)), vec2<bool>(false, false))), vec4<i32>(-27740i, 29151i, -47692i, 45024i), vec4<i32>(0i, 0i, 61754i, 23288i)), Struct_5(Struct_3(vec2<u32>(0u, 1u), true, Struct_2(vec3<bool>(true, false, false), true, Struct_1(vec4<u32>(57988u, 4294967295u, 1u, 61614u), vec4<i32>(1i, 10296i, 35234i, 34803i), vec4<f32>(408f, -1055f, 1368f, 1007f)), Struct_1(vec4<u32>(27709u, 15543u, 0u, 28268u), vec4<i32>(-25560i, 2147483647i, i32(-2147483648), 2147483647i), vec4<f32>(2349f, 426f, 313f, -339f)), vec2<bool>(false, false))), vec4<i32>(6370i, -31783i, i32(-2147483648), 46008i), vec4<i32>(2147483647i, 2147483647i, -1i, -1i)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: Struct_3, arg_3: bool) -> vec4<u32> {
    global0 = array<Struct_5, 8>();
    var var_0 = _wgslsmith_div_f32(arg_1.e.d.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(827f * _wgslsmith_f_op_f32(floor(1022f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(180f + arg_1.d.x))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-703f + -1604f)))));
    let var_1 = ~arg_1.e.c.a.x;
    var_0 = _wgslsmith_f_op_f32(-arg_0);
    return reverseBits(arg_2.c.c.a);
}

fn func_2(arg_0: vec2<f32>) -> Struct_3 {
    let var_0 = arg_0.x;
    global0 = array<Struct_5, 8>();
    global0 = array<Struct_5, 8>();
    global0 = array<Struct_5, 8>();
    global0 = array<Struct_5, 8>();
    return Struct_3(~(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(17406u, 1u), vec2<u32>(0u, 24284u)))), any(vec4<bool>(true, true, true, true)), Struct_2(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true, Struct_1(_wgslsmith_sub_vec4_u32(~vec4<u32>(124323u, 42485u, 1u, 0u), abs(vec4<u32>(0u, 68963u, 23189u, 82639u))), countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.a, 2147483647i), vec4<i32>(2147483647i, u_input.a, 15623i, 67918i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-221f, arg_0.x, var_0, 1000f) * vec4<f32>(var_0, arg_0.x, 1000f, -617f)))), Struct_1(func_3(arg_0.x, Struct_4(vec4<u32>(1u, 0u, 39515u, 0u), Struct_1(vec4<u32>(57186u, 0u, 0u, 134582u), vec4<i32>(u_input.a, -52414i, 0i, 17569i), vec4<f32>(arg_0.x, -1266f, var_0, -760f)), vec3<bool>(true, true, true), vec4<f32>(var_0, -466f, arg_0.x, 781f), Struct_2(vec3<bool>(false, true, true), false, Struct_1(vec4<u32>(2656u, 1u, 56291u, 44424u), vec4<i32>(u_input.a, 2147483647i, 23872i, -1i), vec4<f32>(var_0, -455f, var_0, var_0)), Struct_1(vec4<u32>(1u, 4294967295u, 1u, 0u), vec4<i32>(-14367i, u_input.a, u_input.a, -32973i), vec4<f32>(arg_0.x, 217f, 507f, 105f)), vec2<bool>(true, false))), Struct_3(vec2<u32>(0u, 4294967295u), true, Struct_2(vec3<bool>(true, true, false), false, Struct_1(vec4<u32>(65017u, 15377u, 4294967295u, 13080u), vec4<i32>(0i, 6i, -27407i, u_input.a), vec4<f32>(var_0, arg_0.x, -924f, var_0)), Struct_1(vec4<u32>(4434u, 1u, 85725u, 4329u), vec4<i32>(-71693i, u_input.a, 29135i, u_input.a), vec4<f32>(var_0, -535f, var_0, -1000f)), vec2<bool>(true, false))), any(vec2<bool>(false, true))), vec4<i32>(i32(-1i) * -14560i, 19901i, ~2147483647i, u_input.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(373f, arg_0.x, 558f, -1625f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(342f, 503f, var_0, var_0), vec4<f32>(arg_0.x, 870f, arg_0.x, 1151f))))), !vec2<bool>(select(true, true, true), true)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>) -> Struct_3 {
    let var_0 = Struct_5(Struct_3(arg_0.c.d.a.zz, arg_0.c.e.x, Struct_2(arg_0.c.a, false, func_2(vec2<f32>(1289f, -906f)).c.c, arg_0.c.c, vec2<bool>(true, true))), firstLeadingBit(_wgslsmith_mod_vec4_i32(-(~arg_0.c.c.b), vec4<i32>(u_input.a, _wgslsmith_add_i32(arg_1.x, 64793i), arg_1.x, 23989i))), vec4<i32>(-1i) * -arg_0.c.d.b);
    let var_1 = select(select(!vec4<bool>(var_0.a.b | arg_0.c.b, true, true, arg_0.c.a.x | true), vec4<bool>(!(true | arg_0.b), false, any(!vec4<bool>(true, arg_0.c.b, var_0.a.c.a.x, false)), any(vec4<bool>(arg_0.b, var_0.a.c.e.x, var_0.a.b, arg_0.b))), vec4<bool>(true && func_2(vec2<f32>(-328f, -682f)).b, true, true, all(select(vec3<bool>(true, arg_0.b, true), vec3<bool>(false, true, var_0.a.b), var_0.a.c.a)))), vec4<bool>(true, all(!vec3<bool>(false, arg_0.b, false)), var_0.a.b, true), !all(vec2<bool>(false, false)) == var_0.a.c.a.x);
    global0 = array<Struct_5, 8>();
    global0 = array<Struct_5, 8>();
    var var_2 = vec4<bool>(!arg_0.c.b, var_1.x, !(true && (arg_0.c.d.c.x <= var_0.a.c.d.c.x)), all(vec4<bool>(var_0.a.b, arg_0.c.a.x, !all(vec3<bool>(var_0.a.c.b, false, arg_0.c.b)), all(var_1))));
    return Struct_3(vec2<u32>(~arg_0.a.x, 1u), all(select(vec3<bool>(!var_0.a.b, var_0.a.b, -2147483647i < arg_0.c.d.b.x), vec3<bool>(var_0.a.c.a.x, !var_2.x, true), true)), func_2(_wgslsmith_f_op_vec2_f32(arg_0.c.c.c.xy * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -674f), vec2<f32>(arg_0.c.c.c.x, arg_0.c.c.c.x)), _wgslsmith_f_op_vec2_f32(sign(var_0.a.c.c.c.yz)))))).c);
}

fn func_1() -> StorageBuffer {
    global0 = array<Struct_5, 8>();
    var var_0 = Struct_5(func_4(func_2(vec2<f32>(_wgslsmith_f_op_f32(ceil(-112f)), 1004f)), -(~_wgslsmith_mod_vec2_i32(vec2<i32>(-45343i, -2147483647i), vec2<i32>(u_input.a, u_input.a)))), _wgslsmith_add_vec4_i32(countOneBits(~max(vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 1i, -36598i))), -(min(vec4<i32>(0i, u_input.a, 38021i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 1i)) | -vec4<i32>(1i, u_input.a, 1i, 15993i))), vec4<i32>(func_4(Struct_3(vec2<u32>(1u, 63682u), false, func_4(Struct_3(vec2<u32>(4294967295u, 3515u), false, Struct_2(vec3<bool>(true, false, false), true, Struct_1(vec4<u32>(62691u, 1910u, 31884u, 2144u), vec4<i32>(u_input.a, -36838i, u_input.a, 0i), vec4<f32>(1000f, 703f, -381f, 503f)), Struct_1(vec4<u32>(104505u, 23689u, 49245u, 4294967295u), vec4<i32>(u_input.a, -1i, u_input.a, -37733i), vec4<f32>(580f, 270f, 628f, -234f)), vec2<bool>(false, true))), vec2<i32>(u_input.a, -721i)).c), ~(vec2<i32>(2147483647i, u_input.a) >> (vec2<u32>(22447u, 1u) % vec2<u32>(32u)))).c.d.b.x, countOneBits(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-35815i, -1i))), -1i >> (1u % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(0i, -2147483647i, u_input.a, -1i)), ~vec4<i32>(u_input.a, 24364i, 29220i, -62576i), func_2(vec2<f32>(1000f, -576f)).c.d.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(-826i, 0i, u_input.a, u_input.a), vec4<i32>(u_input.a, 2147483647i, -2147483647i, -2147483647i), vec4<i32>(-1i, u_input.a, u_input.a, u_input.a)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(80107u, 4294967295u, 0u, 1u), vec4<u32>(1u, 39061u, 1u, 78216u), vec4<u32>(0u, 21020u, 4294967295u, 0u)) % vec4<u32>(32u)))));
    let var_1 = -var_0.b;
    var var_2 = var_0.a.c.c;
    global0 = array<Struct_5, 8>();
    return StorageBuffer(~(~vec4<u32>(0u, var_2.a.x & 39421u, var_0.a.a.x, var_2.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 160f;
    var var_1 = ~1u;
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(550f, 379f), vec2<f32>(2197f, 535f)))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(255f, _wgslsmith_f_op_f32(f32(-1f) * -1059f))) * -1782f), -253f));
    let x = u_input.a;
    s_output = func_1();
}

