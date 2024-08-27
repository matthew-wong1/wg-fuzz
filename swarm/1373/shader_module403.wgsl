struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(Struct_2(Struct_1(vec3<bool>(true, false, true), true, -1i, 72976u), -298f, i32(-2147483648), Struct_1(vec3<bool>(true, true, false), false, -50094i, 65697u), vec3<i32>(-393i, 37831i, 5118i))), Struct_4(Struct_2(Struct_1(vec3<bool>(true, true, false), true, i32(-2147483648), 4294967295u), 1343f, 1i, Struct_1(vec3<bool>(true, false, true), false, 70055i, 1u), vec3<i32>(2147483647i, -65595i, 2147483647i))), Struct_4(Struct_2(Struct_1(vec3<bool>(true, true, true), false, 2147483647i, 4294967295u), -359f, 2147483647i, Struct_1(vec3<bool>(false, false, true), true, -8884i, 4294967295u), vec3<i32>(0i, 1i, 0i))), Struct_4(Struct_2(Struct_1(vec3<bool>(false, false, true), true, 2147483647i, 0u), -1851f, 7253i, Struct_1(vec3<bool>(false, true, true), false, 0i, 1u), vec3<i32>(38755i, -1i, 15099i))), Struct_4(Struct_2(Struct_1(vec3<bool>(false, true, true), true, -35941i, 22170u), -1000f, 1i, Struct_1(vec3<bool>(false, true, true), true, i32(-2147483648), 15282u), vec3<i32>(0i, -22569i, -34017i))), Struct_4(Struct_2(Struct_1(vec3<bool>(false, true, true), false, -39563i, 68488u), -1034f, -1i, Struct_1(vec3<bool>(true, false, false), true, -34053i, 0u), vec3<i32>(-51623i, 2147483647i, 2147483647i))), Struct_4(Struct_2(Struct_1(vec3<bool>(false, false, false), false, i32(-2147483648), 1268u), 1641f, 2147483647i, Struct_1(vec3<bool>(false, false, false), true, -15665i, 0u), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i))), Struct_4(Struct_2(Struct_1(vec3<bool>(false, true, false), false, 2147483647i, 14852u), 1217f, -5273i, Struct_1(vec3<bool>(true, false, true), false, -74415i, 36609u), vec3<i32>(33591i, 2147483647i, i32(-2147483648)))), Struct_4(Struct_2(Struct_1(vec3<bool>(false, true, false), true, 2147483647i, 2803u), 953f, -2669i, Struct_1(vec3<bool>(true, true, true), false, -7363i, 0u), vec3<i32>(0i, 30649i, 1i))), Struct_4(Struct_2(Struct_1(vec3<bool>(true, true, true), true, 15030i, 4294967295u), -1116f, -1i, Struct_1(vec3<bool>(true, true, false), false, -1i, 66363u), vec3<i32>(-23290i, -5510i, 15089i))), Struct_4(Struct_2(Struct_1(vec3<bool>(false, true, false), false, 18764i, 28079u), -126f, 1i, Struct_1(vec3<bool>(false, true, false), true, 25867i, 5832u), vec3<i32>(8978i, 1i, -14119i))), Struct_4(Struct_2(Struct_1(vec3<bool>(false, true, true), false, 2147483647i, 4294967295u), 203f, -36173i, Struct_1(vec3<bool>(true, false, false), true, 63130i, 10840u), vec3<i32>(-1i, 47131i, 14051i))), Struct_4(Struct_2(Struct_1(vec3<bool>(false, true, false), true, -1i, 109520u), -760f, i32(-2147483648), Struct_1(vec3<bool>(false, true, true), true, 0i, 1u), vec3<i32>(50315i, -1i, 1i))), Struct_4(Struct_2(Struct_1(vec3<bool>(false, false, true), false, 19110i, 4294967295u), -1449f, 25145i, Struct_1(vec3<bool>(false, true, true), true, -29578i, 52519u), vec3<i32>(-1i, i32(-2147483648), 2147483647i))), Struct_4(Struct_2(Struct_1(vec3<bool>(false, false, false), false, 0i, 61475u), 209f, -52959i, Struct_1(vec3<bool>(false, false, false), true, 26251i, 0u), vec3<i32>(2147483647i, i32(-2147483648), 0i))), Struct_4(Struct_2(Struct_1(vec3<bool>(false, false, false), true, 1022i, 45423u), 1563f, 0i, Struct_1(vec3<bool>(true, false, false), false, 1i, 34761u), vec3<i32>(1i, 16433i, -21440i))), Struct_4(Struct_2(Struct_1(vec3<bool>(false, true, false), false, 1i, 16274u), -1000f, 15257i, Struct_1(vec3<bool>(true, true, true), false, 20664i, 1u), vec3<i32>(41691i, 1i, 1i))), Struct_4(Struct_2(Struct_1(vec3<bool>(true, true, false), false, -1i, 21888u), 876f, 8876i, Struct_1(vec3<bool>(false, false, true), false, 48080i, 4294967295u), vec3<i32>(5961i, i32(-2147483648), i32(-2147483648)))), Struct_4(Struct_2(Struct_1(vec3<bool>(false, false, true), false, -25998i, 4294967295u), 165f, 34047i, Struct_1(vec3<bool>(false, false, false), true, -17149i, 0u), vec3<i32>(i32(-2147483648), 64182i, -7948i))), Struct_4(Struct_2(Struct_1(vec3<bool>(true, false, false), false, i32(-2147483648), 35929u), -483f, -1i, Struct_1(vec3<bool>(false, true, false), true, 0i, 4212u), vec3<i32>(21584i, i32(-2147483648), -78663i))), Struct_4(Struct_2(Struct_1(vec3<bool>(false, true, true), false, 0i, 1u), 141f, i32(-2147483648), Struct_1(vec3<bool>(true, false, false), true, -2314i, 49869u), vec3<i32>(1i, -1i, 6553i))), Struct_4(Struct_2(Struct_1(vec3<bool>(true, false, true), true, 1i, 4294967295u), -460f, -21204i, Struct_1(vec3<bool>(false, true, true), true, 0i, 23340u), vec3<i32>(-1i, 0i, 42633i))), Struct_4(Struct_2(Struct_1(vec3<bool>(true, false, true), true, i32(-2147483648), 4294967295u), 534f, 0i, Struct_1(vec3<bool>(true, true, false), false, 34010i, 1u), vec3<i32>(2147483647i, 33306i, 0i))));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global0 = array<Struct_4, 23>();
    global0 = array<Struct_4, 23>();
    let var_0 = Struct_5(~countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, arg_0.c, arg_0.c), vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x))) >> (~_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(u_input.c.yyz, vec3<u32>(26035u, 4294967295u, 4294967295u)), vec3<u32>(arg_0.d, u_input.c.x, 75731u)) % vec3<u32>(32u)));
    let var_1 = arg_0.c;
    global0 = array<Struct_4, 23>();
    return ~1i;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec3<u32>) -> vec4<bool> {
    var var_0 = Struct_4(arg_2.a);
    var var_1 = Struct_1(vec3<bool>(all(!vec4<bool>(arg_1.b, false, arg_1.b, arg_1.b)), true, arg_1.a.x), true, 1i, ~arg_1.d);
    global0 = array<Struct_4, 23>();
    var_0 = Struct_4(Struct_2(var_0.a.a, _wgslsmith_f_op_f32(f32(-1f) * -1026f), -1i, arg_1, min(countOneBits(~arg_2.a.e), vec3<i32>(_wgslsmith_sub_i32(arg_1.c, u_input.a.x), -var_1.c, 1i))));
    var var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, ~(~(~arg_2.a.a.d)), u_input.b.x), vec3<u32>(1u, countOneBits(select(0u, ~28429u, all(arg_1.a))), ~u_input.d.x), arg_0);
    return !(!(!select(!vec4<bool>(true, false, arg_1.b, false), !vec4<bool>(false, var_1.a.x, true, false), vec4<bool>(false, var_1.b, true, false))));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = select(func_4(u_input.c.wyy | vec3<u32>(3769u << (1u % 32u), 17656u, select(55920u, arg_1.x, true)), Struct_1(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), u_input.b.x >= arg_1.x, _wgslsmith_mod_i32(func_3(Struct_1(vec3<bool>(true, true, false), true, u_input.a.x, 13013u)), 2147483647i), ~_wgslsmith_clamp_u32(arg_1.x, 4294967295u, 56833u)), global0[_wgslsmith_index_u32(26155u, 23u)], min(select(select(u_input.c.zyy, u_input.b, true), vec3<u32>(u_input.c.x, arg_1.x, 45719u) ^ u_input.c.xyw, vec3<bool>(true, true, true)), vec3<u32>(_wgslsmith_clamp_u32(33072u, 32349u, arg_1.x), u_input.c.x, _wgslsmith_sub_u32(1u, u_input.b.x)))), vec4<bool>(false, func_4(_wgslsmith_clamp_vec3_u32(vec3<u32>(43655u, u_input.d.x, 4294967295u), vec3<u32>(23965u, arg_1.x, 43451u), u_input.d) ^ ~vec3<u32>(36000u, 4294967295u, 45549u), Struct_1(vec3<bool>(true, true, true), true, func_3(Struct_1(vec3<bool>(false, false, true), false, -1i, arg_1.x)), _wgslsmith_dot_vec4_u32(u_input.c, u_input.c)), Struct_4(Struct_2(Struct_1(vec3<bool>(true, false, false), false, u_input.a.x, arg_1.x), arg_0, -41751i, Struct_1(vec3<bool>(false, false, true), true, u_input.a.x, u_input.c.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), u_input.b)).x, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true)), true), !vec4<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false)), true, false, true));
    let var_1 = u_input.d.x;
    global0 = array<Struct_4, 23>();
    let var_2 = abs(arg_1.x) <= ~arg_1.x;
    let var_3 = Struct_1(var_0.wxz, all(var_0.zxz), _wgslsmith_add_i32(2147483647i, firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 45557i, 34017i, 1i), vec4<i32>(48773i, u_input.a.x, u_input.a.x, 1i)), u_input.a.x))), 1u);
    return Struct_1(vec3<bool>(all(!var_3.a.xy), true, true), !any(vec2<bool>(true, var_2)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.c, -36290i, 2147483647i, firstTrailingBit(-3386i) ^ var_3.c), firstLeadingBit(-_wgslsmith_div_vec4_i32(vec4<i32>(var_3.c, var_3.c, var_3.c, u_input.a.x), vec4<i32>(u_input.a.x, var_3.c, 2147483647i, 26295i)))), var_3.d);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global0 = array<Struct_4, 23>();
    global0 = array<Struct_4, 23>();
    let var_0 = arg_0.b;
    let var_1 = vec2<u32>(40335u ^ _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~arg_0.d, abs(arg_0.d), ~94536u), ~1u), _wgslsmith_mult_u32(132319u, _wgslsmith_mult_u32(firstTrailingBit(~1u), firstLeadingBit(_wgslsmith_clamp_u32(arg_0.d, u_input.d.x, arg_0.d)))));
    global0 = array<Struct_4, 23>();
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_4) -> Struct_2 {
    global0 = array<Struct_4, 23>();
    global0 = array<Struct_4, 23>();
    let var_0 = -610f;
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0 + _wgslsmith_div_f32(-332f, arg_1.a.b)), _wgslsmith_f_op_f32(748f + _wgslsmith_f_op_f32(-arg_1.a.b))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_f32(max(1453f, arg_1.a.b))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1221f, arg_1.a.b))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.b, arg_1.a.b))))), Struct_2(func_2(_wgslsmith_f_op_f32(451f - _wgslsmith_div_f32(arg_1.a.b, -163f)), ~(~vec2<u32>(0u, arg_1.a.d.d))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.a.b + 310f), -843f, arg_1.a.d.b))), ~abs(32890i ^ u_input.a.x), func_2(-651f, ~(u_input.d.xy << (u_input.c.xz % vec2<u32>(32u)))), -(~arg_1.a.e) & abs(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, 1i, u_input.a.x), arg_1.a.e))));
    global0 = array<Struct_4, 23>();
    return Struct_2(arg_1.a.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1354f)))))), _wgslsmith_mod_i32(-63727i, u_input.a.x), arg_1.a.d, -_wgslsmith_div_vec3_i32(arg_1.a.e, vec3<i32>(-u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -56633i, arg_0.c, arg_0.c), vec4<i32>(-1i, 2147483647i, u_input.a.x, arg_1.a.e.x)), arg_1.a.c)));
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_4, 23>();
    let var_0 = -719f;
    global0 = array<Struct_4, 23>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1382f), -867f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1049f, 3050f)) - vec2<f32>(-800f, var_0))))) * vec2<f32>(1f, var_0));
    global0 = array<Struct_4, 23>();
    return func_6(func_5(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(117f + var_0)), ~(~vec2<u32>(0u, u_input.d.x)))), global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c.yy, vec2<u32>(u_input.d.x, 30049u)), ~u_input.d.zx) | (_wgslsmith_mod_u32(4294967295u, u_input.c.x) & ~u_input.c.x)), 23u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(-_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.a.x, 0i, u_input.a.x), select(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 0i), true), ~vec3<i32>(1i, u_input.a.x, u_input.a.x)) & (vec3<i32>(1i, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, -956i), 31961i) | abs(~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))));
    let var_1 = _wgslsmith_mod_u32(~4294967295u, ~u_input.b.x);
    var var_2 = func_1();
    var var_3 = var_2.e.x;
    var var_4 = Struct_5(_wgslsmith_div_vec3_i32(vec3<i32>(0i, 1i, func_3(func_6(var_2.d, global0[_wgslsmith_index_u32(var_1, 23u)]).d)), -min(reverseBits(vec3<i32>(-2147483647i, var_2.a.c, -31862i)), vec3<i32>(var_2.c, 0i, -1i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.b, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(823f, 1980f), var_2.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b - 292f) * _wgslsmith_f_op_f32(select(-178f, 412f, var_2.a.b))), 649f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.b, -144f, var_2.b, -669f), vec4<f32>(-931f, var_2.b, var_2.b, var_2.b), vec4<bool>(var_2.a.b, true, var_2.d.a.x, var_2.a.a.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1538f, 1449f, 258f, var_2.b)))), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -531f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b * -1000f) * var_2.b), -359f)), var_2.b, u_input.b.zy, 2147483647i);
}

