struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

var<private> global0: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(false, vec3<f32>(1810f, 437f, -1178f), Struct_3(4294967295u, i32(-2147483648), -42390i, vec3<i32>(-8455i, 42069i, 0i), Struct_2(vec4<bool>(true, true, true, false), 24390i, Struct_1(1411f)))), Struct_4(false, vec3<f32>(-105f, -1459f, 668f), Struct_3(4294967295u, -38711i, 9153i, vec3<i32>(-53725i, -1i, 1i), Struct_2(vec4<bool>(true, false, true, false), 15793i, Struct_1(-1188f)))), Struct_4(true, vec3<f32>(-1000f, -792f, 370f), Struct_3(4294967295u, -7525i, -1i, vec3<i32>(1i, -9463i, 27009i), Struct_2(vec4<bool>(false, true, true, false), -11496i, Struct_1(103f)))), Struct_4(true, vec3<f32>(-485f, 889f, -731f), Struct_3(16436u, -44631i, -34161i, vec3<i32>(66602i, 1i, 3993i), Struct_2(vec4<bool>(false, false, false, false), 50147i, Struct_1(-1000f)))), Struct_4(true, vec3<f32>(-224f, -1452f, -908f), Struct_3(4294967295u, -24483i, 0i, vec3<i32>(-18999i, 2147483647i, 0i), Struct_2(vec4<bool>(false, false, true, true), 2147483647i, Struct_1(167f)))), Struct_4(false, vec3<f32>(-141f, -961f, 773f), Struct_3(23286u, 2147483647i, -1i, vec3<i32>(35771i, 41064i, 0i), Struct_2(vec4<bool>(false, true, false, false), -27176i, Struct_1(1973f)))), Struct_4(false, vec3<f32>(-683f, -125f, 638f), Struct_3(31634u, 28186i, -10065i, vec3<i32>(-6658i, 2147483647i, -11991i), Struct_2(vec4<bool>(false, true, false, true), -1i, Struct_1(-1900f)))), Struct_4(false, vec3<f32>(-581f, 569f, 585f), Struct_3(4294967295u, -1i, 1i, vec3<i32>(23184i, -1i, 25565i), Struct_2(vec4<bool>(true, true, false, false), -28592i, Struct_1(1196f)))), Struct_4(true, vec3<f32>(-1519f, 720f, 1000f), Struct_3(1u, 0i, -41567i, vec3<i32>(-1i, -1i, 2147483647i), Struct_2(vec4<bool>(false, true, true, false), 37633i, Struct_1(-619f)))), Struct_4(false, vec3<f32>(444f, -974f, -1000f), Struct_3(1u, 23257i, 20651i, vec3<i32>(1i, 33717i, 8580i), Struct_2(vec4<bool>(false, true, false, false), -25497i, Struct_1(143f)))), Struct_4(false, vec3<f32>(175f, 479f, 187f), Struct_3(6392u, -14379i, 2147483647i, vec3<i32>(12631i, 28518i, 2147483647i), Struct_2(vec4<bool>(true, false, false, false), 43816i, Struct_1(-1241f)))), Struct_4(true, vec3<f32>(1128f, 769f, 664f), Struct_3(1u, -1i, i32(-2147483648), vec3<i32>(-10169i, 2147483647i, 1i), Struct_2(vec4<bool>(false, false, false, false), i32(-2147483648), Struct_1(-947f)))), Struct_4(true, vec3<f32>(111f, -491f, 1008f), Struct_3(48626u, 0i, 1i, vec3<i32>(81341i, i32(-2147483648), 1i), Struct_2(vec4<bool>(true, true, true, true), 0i, Struct_1(1991f)))), Struct_4(true, vec3<f32>(-416f, 934f, 1463f), Struct_3(70595u, 24028i, -22594i, vec3<i32>(-25235i, 2147483647i, 11727i), Struct_2(vec4<bool>(false, false, true, true), -49402i, Struct_1(-133f)))));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = !select(vec4<bool>(true, true, true, firstTrailingBit(-1i) <= ~0i), select(select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true)), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false)), any(vec4<bool>(false, false, true, true)))), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true))));
    global0 = array<Struct_4, 14>();
    let var_1 = Struct_5(vec3<i32>(-1i) * -(~vec3<i32>(0i, 1i, -23922i)), select(var_0.zz, select(select(vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(false, var_0.x), var_0.ww, vec2<bool>(false, true)), var_0.zx), vec2<bool>(true, true), !var_0.zw), true));
    global0 = array<Struct_4, 14>();
    let var_2 = !var_1.b.x;
    return ~abs(39472u);
}

fn func_2(arg_0: Struct_5, arg_1: Struct_2, arg_2: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-678f + -677f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) * _wgslsmith_f_op_f32(f32(-1f) * -533f))), arg_1.c.a, -216f) * vec4<f32>(_wgslsmith_f_op_f32(609f * -845f), _wgslsmith_div_f32(943f, arg_1.c.a), arg_2.a, arg_2.a));
    let var_1 = 42558i;
    let var_2 = Struct_5(arg_0.a >> (~vec3<u32>(func_3(), max(4294967295u, 1u), firstLeadingBit(4640u)) % vec3<u32>(32u)), !(!(!select(arg_0.b, arg_1.a.xw, vec2<bool>(true, arg_1.a.x)))));
    let var_3 = Struct_5(abs(arg_0.a), select(arg_0.b, select(vec2<bool>(arg_0.b.x | true, true), arg_1.a.xw, false), vec2<bool>(true, true)));
    return Struct_3(~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(25235u, 45870u, 61098u)), countOneBits(vec3<u32>(14528u, 1u, 0u))), ~arg_1.b, ~var_2.a.x, vec3<i32>(26124i, _wgslsmith_mult_i32(-1i, select(_wgslsmith_div_i32(-7977i, -28616i), i32(-1i) * -19263i, true)), var_3.a.x), arg_1);
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_3) -> Struct_4 {
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b >> (_wgslsmith_sub_u32(_wgslsmith_mod_u32(57399u, arg_2.a), arg_2.a) % 32u)), vec2<i32>(-_wgslsmith_dot_vec2_i32(arg_2.d.xz, ~vec2<i32>(arg_2.b, arg_2.c)), _wgslsmith_add_i32(~(-arg_2.e.b), _wgslsmith_div_i32(arg_2.b, 1i))));
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_0.zz)))));
    let var_2 = func_2(Struct_5(firstTrailingBit(vec3<i32>(firstTrailingBit(arg_2.e.b), u_input.b, _wgslsmith_clamp_i32(arg_2.b, arg_2.e.b, -10831i))), arg_2.e.a.zx), func_2(Struct_5(arg_2.d, vec2<bool>(select(arg_2.e.a.x, arg_2.e.a.x, arg_2.e.a.x), all(vec2<bool>(arg_1, arg_1)))), func_2(Struct_5(vec3<i32>(2888i, u_input.a, 15778i) | vec3<i32>(u_input.a, -2147483647i, -7335i), select(vec2<bool>(true, false), vec2<bool>(arg_1, arg_2.e.a.x), false)), func_2(Struct_5(vec3<i32>(-1i, arg_2.e.b, -1i), vec2<bool>(arg_2.e.a.x, arg_2.e.a.x)), Struct_2(arg_2.e.a, arg_2.b, arg_2.e.c), arg_2.e.c).e, Struct_1(_wgslsmith_f_op_f32(max(-1986f, -257f)))).e, arg_2.e.c).e, Struct_1(2042f)).e.a.yyz;
    var_0 = -abs(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(u_input.a, 39702i)), arg_2.d.xx));
    var var_3 = func_2(Struct_5(~(~arg_2.d), vec2<bool>(arg_2.a < ~4294967295u, !(arg_2.e.c.a < arg_0.x))), arg_2.e, arg_2.e.c).e.c.a;
    return global0[_wgslsmith_index_u32(~arg_2.a, 14u)];
}

fn func_5(arg_0: Struct_4, arg_1: Struct_5, arg_2: u32) -> Struct_2 {
    let var_0 = Struct_2(vec4<bool>(false, true, false, (-2147483647i | abs(arg_0.c.c)) == _wgslsmith_add_i32(-1i, u_input.b)), reverseBits(~u_input.b) >> (~arg_2 % 32u), Struct_1(arg_0.b.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b.zz)))));
    var var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~arg_0.c.a, ~(~arg_2) << (arg_2 % 32u), abs(~(~124921u))), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_2, 0u), ~arg_0.c.a) & arg_2, _wgslsmith_add_u32(~54518u, 0u), _wgslsmith_mod_u32(arg_0.c.a, _wgslsmith_clamp_u32(~arg_2, 37346u, ~36923u))), vec3<u32>(arg_2, abs(1u), ~func_3()));
    var var_3 = vec2<u32>(var_2.x >> (~(~(~4294967295u)) % 32u), 4294967295u);
    global0 = array<Struct_4, 14>();
    return Struct_2(!select(func_2(arg_1, func_2(Struct_5(vec3<i32>(arg_1.a.x, -1i, u_input.a), arg_1.b), Struct_2(vec4<bool>(var_0.a.x, true, false, false), var_0.b, var_0.c), Struct_1(var_0.c.a)).e, Struct_1(var_1.x)).e.a, vec4<bool>(func_4(vec3<f32>(271f, arg_0.c.e.c.a, 152f), arg_1.b.x, Struct_3(4294967295u, 0i, var_0.b, arg_1.a, var_0)).a, arg_0.a, all(vec2<bool>(false, arg_0.a)), false), vec4<bool>(!arg_1.b.x, !var_0.a.x, func_4(vec3<f32>(1575f, -338f, 568f), false, arg_0.c).a, !arg_1.b.x)), -u_input.a, arg_0.c.e.c);
}

fn func_6(arg_0: Struct_2, arg_1: i32, arg_2: i32, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = Struct_5(vec3<i32>(1i, abs(_wgslsmith_sub_i32(-31949i, arg_2)), -11519i) & -(~max(vec3<i32>(arg_2, arg_0.b, arg_2), vec3<i32>(arg_1, 9388i, arg_0.b))), arg_0.a.xz);
    let var_1 = arg_3.a;
    var_0 = Struct_5(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-60317i, -1i, 2147483647i), ~var_0.a), vec3<i32>(-(~var_0.a.x), _wgslsmith_sub_i32(u_input.b, -2147483647i) | u_input.b, ~(-1i))), !(!var_1.ww));
    global0 = array<Struct_4, 14>();
    var var_2 = vec2<u32>(select(~_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 7922u))), ~13434u, var_0.b.x), _wgslsmith_dot_vec3_u32(~select(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(4294967295u, 0u, 28111u), true), min(vec3<u32>(132468u, 25212u, ~895u), ~vec3<u32>(1u, 27825u, 4294967295u))));
    return !vec3<bool>(true, any(var_1.ywy), func_2(Struct_5(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1, arg_0.b, -1i), vec3<i32>(1i, arg_1, -14832i)), !arg_3.a.wz), Struct_2(arg_0.a, -1i ^ arg_0.b, func_4(vec3<f32>(arg_0.c.a, -1468f, arg_3.c.a), true, Struct_3(var_2.x, arg_2, arg_2, var_0.a, arg_3)).c.e.c), Struct_1(-238f)).e.a.x);
}

fn func_1() -> Struct_5 {
    let var_0 = !func_6(func_5(func_4(vec3<f32>(1f, 1f, 1f), all(vec2<bool>(true, false)), func_2(Struct_5(vec3<i32>(u_input.a, -71i, 3703i), vec2<bool>(true, false)), Struct_2(vec4<bool>(false, false, true, false), u_input.b, Struct_1(809f)), Struct_1(1582f))), Struct_5(vec3<i32>(u_input.b, u_input.b, 1i) ^ vec3<i32>(0i, u_input.b, -8966i), vec2<bool>(true, false)), 1u), _wgslsmith_mod_i32(-_wgslsmith_clamp_i32(2147483647i, 1i, u_input.a), u_input.a), -2147483647i, Struct_2(vec4<bool>(true, true, true, true), 24604i, Struct_1(_wgslsmith_f_op_f32(1218f + -1000f))));
    global0 = array<Struct_4, 14>();
    var var_1 = func_2(Struct_5(_wgslsmith_sub_vec3_i32(vec3<i32>(20431i, -20828i, u_input.b), firstLeadingBit(vec3<i32>(41187i, u_input.b, -1i))) ^ (select(vec3<i32>(732i, u_input.b, -2147483647i), vec3<i32>(-8206i, 2147483647i, -32869i), vec3<bool>(false, true, var_0.x)) & min(vec3<i32>(12519i, u_input.a, u_input.b), vec3<i32>(u_input.b, u_input.b, 2147483647i))), vec2<bool>(var_0.x, true)), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-602f, 186f, 1701f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-2012f, -703f, 498f), vec3<f32>(996f, 768f, -1094f)))))), false, Struct_3(~0u, abs(30628i) << (1u % 32u), func_5(Struct_4(true, vec3<f32>(1000f, -1509f, -213f), Struct_3(1741u, 0i, u_input.a, vec3<i32>(-1i, u_input.b, u_input.a), Struct_2(vec4<bool>(true, var_0.x, false, true), u_input.a, Struct_1(-683f)))), Struct_5(vec3<i32>(u_input.a, u_input.a, -28213i), vec2<bool>(true, true)), ~4245u).b, vec3<i32>(2147483647i, func_4(vec3<f32>(-1000f, 1214f, 1043f), false, Struct_3(80218u, -26069i, u_input.b, vec3<i32>(-236i, -23777i, u_input.b), Struct_2(vec4<bool>(false, var_0.x, false, var_0.x), 20516i, Struct_1(-198f)))).c.d.x, ~3789i), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1647f, -238f)), false, func_4(vec3<f32>(-2030f, -825f, 344f), var_0.x, Struct_3(6649u, 33576i, u_input.a, vec3<i32>(u_input.a, u_input.a, -1i), Struct_2(vec4<bool>(false, var_0.x, var_0.x, true), 31718i, Struct_1(-823f)))).c).c.e)).c.e, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-769f + -665f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-176f, -185f)), -1613f))))).e.c;
    var_1 = func_5(Struct_4(false, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(152f, -689f, -1088f), vec3<f32>(var_1.a, var_1.a, -647f))))), func_4(vec3<f32>(var_1.a, _wgslsmith_f_op_f32(exp2(var_1.a)), var_1.a), var_0.x, func_2(Struct_5(vec3<i32>(u_input.a, u_input.a, u_input.a), vec2<bool>(false, var_0.x)), Struct_2(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), -1i, Struct_1(-675f)), func_2(Struct_5(vec3<i32>(-968i, u_input.a, u_input.a), vec2<bool>(var_0.x, true)), Struct_2(vec4<bool>(true, var_0.x, var_0.x, true), -2147483647i, Struct_1(var_1.a)), Struct_1(var_1.a)).e.c)).c), Struct_5(func_4(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_1.a, 928f)))), true, Struct_3(1u, u_input.a, 13455i, -vec3<i32>(20314i, 2147483647i, u_input.b), Struct_2(vec4<bool>(true, var_0.x, var_0.x, true), 20027i, Struct_1(var_1.a)))).c.d, !func_5(Struct_4(false, vec3<f32>(160f, -583f, 955f), Struct_3(0u, u_input.a, -2147483647i, vec3<i32>(2147483647i, -38118i, 1526i), Struct_2(vec4<bool>(var_0.x, false, true, var_0.x), -1i, Struct_1(var_1.a)))), Struct_5(vec3<i32>(u_input.b, -1i, -6674i), var_0.zz), firstTrailingBit(46613u)).a.wz), ~max(3627u, min(abs(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(5436u, 39189u))))).c;
    let var_2 = Struct_5(vec3<i32>(min(func_2(Struct_5(vec3<i32>(u_input.b, 76689i, u_input.b), vec2<bool>(var_0.x, var_0.x)), Struct_2(vec4<bool>(false, var_0.x, true, true), 31783i, Struct_1(451f)), Struct_1(-544f)).c, 0i) << (select(4294967295u, _wgslsmith_clamp_u32(44187u, 1u, 1u), true) % 32u), u_input.a, 33648i ^ u_input.b), var_0.zy);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_4(var_0.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(533f, -533f, 1322f))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(366f, 1462f, -149f) - vec3<f32>(1358f, -1180f, 1000f)))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(111f * -626f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-381f + -616f) + -751f), -824f)), func_2(var_0, func_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-583f, -1308f, -837f), vec3<f32>(-781f, 1000f, 620f))))), true, func_4(vec3<f32>(954f, -1000f, -735f), var_0.b.x, func_2(Struct_5(var_0.a, var_0.b), Struct_2(vec4<bool>(true, var_0.b.x, var_0.b.x, false), var_0.a.x, Struct_1(-1339f)), Struct_1(764f))).c).c.e, Struct_1(_wgslsmith_f_op_f32(ceil(1232f)))));
    let var_2 = Struct_1(837f);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-242f, _wgslsmith_f_op_f32(-1501f * var_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-774f - var_1.c.e.c.a)), _wgslsmith_f_op_f32(-var_2.a)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, var_2.a, var_2.a, 1000f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, var_1.b.x, var_1.b.x, -1000f) - vec4<f32>(-340f, var_2.a, 942f, var_1.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(105f, 1011f, var_2.a, var_2.a))) + vec4<f32>(-570f, var_1.b.x, var_2.a, var_1.b.x))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_5(global0[_wgslsmith_index_u32(var_1.c.a, 14u)], var_0, 4294967295u).c.a * var_1.c.e.c.a), -674f, var_2.a, 1798f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, var_2.a, -550f, _wgslsmith_f_op_f32(sign(-841f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(401f, var_2.a, -1296f, -2267f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1502f, -1000f, -1517f, var_1.c.e.c.a)), !var_0.b.x)))));
    global0 = array<Struct_4, 14>();
    var var_4 = 10776u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<u32>(_wgslsmith_sub_u32(4294967295u, 88654u) ^ var_1.c.a, _wgslsmith_mod_u32(var_1.c.a, 1u) & var_1.c.a, ~(~0u))));
}

