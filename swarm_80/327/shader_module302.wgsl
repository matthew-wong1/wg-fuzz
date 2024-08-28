struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: f32,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec2<u32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 4>;

var<private> global1: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(4294967295u, true, vec2<u32>(4294967295u, 31926u)), Struct_4(0u, false, vec2<u32>(0u, 4294967295u)), Struct_4(73571u, true, vec2<u32>(4294967295u, 59051u)), Struct_4(69965u, false, vec2<u32>(0u, 0u)), Struct_4(4294967295u, true, vec2<u32>(1u, 54769u)), Struct_4(108540u, false, vec2<u32>(18447u, 0u)), Struct_4(4387u, false, vec2<u32>(31761u, 5757u)), Struct_4(67793u, true, vec2<u32>(10364u, 55230u)), Struct_4(0u, true, vec2<u32>(73507u, 35779u)), Struct_4(1u, false, vec2<u32>(4294967295u, 46074u)), Struct_4(4294967295u, false, vec2<u32>(10537u, 4294967295u)), Struct_4(7322u, true, vec2<u32>(1u, 14760u)), Struct_4(0u, true, vec2<u32>(1u, 1u)), Struct_4(25664u, true, vec2<u32>(52248u, 1u)), Struct_4(98199u, true, vec2<u32>(14979u, 101161u)), Struct_4(4294967295u, true, vec2<u32>(0u, 1u)), Struct_4(18671u, true, vec2<u32>(28537u, 63355u)), Struct_4(0u, true, vec2<u32>(0u, 42717u)));

var<private> global2: f32 = 307f;

var<private> global3: array<Struct_5, 30> = array<Struct_5, 30>(Struct_5(Struct_1(vec3<f32>(-157f, -1265f, -409f), true, -1511f, vec3<i32>(0i, 0i, i32(-2147483648)), false)), Struct_5(Struct_1(vec3<f32>(1101f, -475f, 2153f), false, 1375f, vec3<i32>(0i, 23611i, 19857i), false)), Struct_5(Struct_1(vec3<f32>(-140f, -818f, 1000f), true, -1000f, vec3<i32>(0i, 37769i, -21713i), false)), Struct_5(Struct_1(vec3<f32>(719f, -375f, -1152f), true, 1371f, vec3<i32>(49331i, -34290i, -18015i), false)), Struct_5(Struct_1(vec3<f32>(172f, 747f, 1000f), false, -347f, vec3<i32>(-5558i, i32(-2147483648), 14613i), false)), Struct_5(Struct_1(vec3<f32>(-222f, 637f, -800f), true, -1000f, vec3<i32>(-35483i, 1i, 28574i), true)), Struct_5(Struct_1(vec3<f32>(1716f, 1141f, 308f), true, 1240f, vec3<i32>(-5293i, 1i, i32(-2147483648)), true)), Struct_5(Struct_1(vec3<f32>(1265f, -1570f, 1000f), true, 1433f, vec3<i32>(2147483647i, 1i, -24522i), true)), Struct_5(Struct_1(vec3<f32>(-1774f, -898f, -162f), true, 159f, vec3<i32>(-11144i, 0i, 1i), false)), Struct_5(Struct_1(vec3<f32>(-134f, -304f, -1936f), false, -1101f, vec3<i32>(48837i, -6668i, 44498i), true)), Struct_5(Struct_1(vec3<f32>(1295f, -290f, -1000f), false, -2146f, vec3<i32>(2147483647i, 0i, 55955i), true)), Struct_5(Struct_1(vec3<f32>(-1215f, 811f, -1688f), true, 1000f, vec3<i32>(i32(-2147483648), -19742i, 0i), false)), Struct_5(Struct_1(vec3<f32>(509f, -1000f, 410f), false, 539f, vec3<i32>(59486i, 0i, 1i), true)), Struct_5(Struct_1(vec3<f32>(1169f, 1889f, 126f), false, -511f, vec3<i32>(2147483647i, -20792i, -34367i), false)), Struct_5(Struct_1(vec3<f32>(-967f, -623f, -596f), false, 764f, vec3<i32>(0i, -55624i, 9297i), false)), Struct_5(Struct_1(vec3<f32>(743f, -275f, 868f), false, -1608f, vec3<i32>(-19494i, -1i, 0i), true)), Struct_5(Struct_1(vec3<f32>(724f, -128f, 249f), false, 1323f, vec3<i32>(2147483647i, i32(-2147483648), -9516i), true)), Struct_5(Struct_1(vec3<f32>(-624f, 1000f, 1000f), true, -772f, vec3<i32>(2147483647i, -1i, 2147483647i), false)), Struct_5(Struct_1(vec3<f32>(-188f, -590f, 1022f), false, 1561f, vec3<i32>(-34667i, 0i, 36215i), true)), Struct_5(Struct_1(vec3<f32>(-988f, 1000f, -251f), true, 607f, vec3<i32>(0i, 13197i, 2147483647i), false)), Struct_5(Struct_1(vec3<f32>(-630f, -194f, 1180f), true, -1517f, vec3<i32>(-53954i, -31745i, -54797i), true)), Struct_5(Struct_1(vec3<f32>(-646f, 1985f, 846f), true, 1311f, vec3<i32>(-9548i, 21692i, i32(-2147483648)), true)), Struct_5(Struct_1(vec3<f32>(498f, -803f, 343f), true, 596f, vec3<i32>(2147483647i, i32(-2147483648), 0i), true)), Struct_5(Struct_1(vec3<f32>(1000f, 1018f, -1709f), true, 888f, vec3<i32>(-10979i, 2147483647i, -62439i), false)), Struct_5(Struct_1(vec3<f32>(529f, -228f, 1599f), true, -643f, vec3<i32>(-55297i, 1i, -52367i), false)), Struct_5(Struct_1(vec3<f32>(218f, 668f, -1254f), true, 297f, vec3<i32>(-31920i, 0i, 2147483647i), true)), Struct_5(Struct_1(vec3<f32>(1148f, 227f, 802f), true, 953f, vec3<i32>(0i, 27830i, -25368i), true)), Struct_5(Struct_1(vec3<f32>(-223f, -1481f, 127f), true, 609f, vec3<i32>(32596i, 1i, -2959i), false)), Struct_5(Struct_1(vec3<f32>(178f, -1000f, -226f), false, 370f, vec3<i32>(2147483647i, -38113i, -37603i), false)), Struct_5(Struct_1(vec3<f32>(-1314f, -677f, 1000f), false, 636f, vec3<i32>(0i, 1i, -1i), true)));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: f32) -> vec2<f32> {
    global3 = array<Struct_5, 30>();
    let var_0 = ~select(_wgslsmith_mod_vec4_i32(~max(vec4<i32>(0i, -1i, u_input.c, u_input.d), vec4<i32>(-18772i, 78647i, -1i, u_input.d)), -vec4<i32>(u_input.c, 0i, -1i, -4099i) & ~vec4<i32>(u_input.d, u_input.c, u_input.d, 67400i)), vec4<i32>(select(_wgslsmith_mult_i32(u_input.d, u_input.d), min(u_input.c, u_input.d), true), min(u_input.c ^ -19065i, abs(-1i)), _wgslsmith_add_i32(u_input.c << (71215u % 32u), 12364i), u_input.d), vec4<bool>(560f < _wgslsmith_div_f32(arg_1.x, arg_3), all(vec4<bool>(true, true, true, true)), any(select(vec2<bool>(false, false), vec2<bool>(true, false), true)), true));
    var var_1 = firstLeadingBit(~abs(var_0.xw));
    var var_2 = !vec4<bool>(true | !all(vec4<bool>(true, true, true, true)), true, any(vec2<bool>(true, true)), ~var_1.x != _wgslsmith_dot_vec4_i32(var_0, var_0));
    var var_3 = !(!select(!select(var_2.yz, vec2<bool>(false, true), vec2<bool>(false, true)), !vec2<bool>(false, var_2.x), all(vec3<bool>(false, var_2.x, var_2.x)) & (false & var_2.x)));
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_1)))));
}

fn func_4(arg_0: Struct_3) -> i32 {
    global1 = array<Struct_4, 18>();
    global2 = arg_0.a;
    global1 = array<Struct_4, 18>();
    let var_0 = arg_0.b.e;
    global3 = array<Struct_5, 30>();
    return ~(~88770i | firstLeadingBit(u_input.c));
}

fn func_2() -> Struct_4 {
    let var_0 = vec4<bool>(true, false, any(vec2<bool>(true, true)), true);
    let var_1 = vec3<i32>(~firstTrailingBit(_wgslsmith_mult_i32(-1i, u_input.d)), u_input.c, func_4(Struct_3(879f, Struct_2(Struct_1(vec3<f32>(1094f, -1678f, -391f), var_0.x, 1314f, vec3<i32>(1i, 77381i, u_input.c), false), -u_input.c, _wgslsmith_f_op_vec2_f32(func_3(200f, vec2<f32>(-532f, 447f), vec2<u32>(u_input.b.x, u_input.a), 1050f)), min(8197i, -35495i), any(vec3<bool>(var_0.x, var_0.x, false))), Struct_2(Struct_1(vec3<f32>(586f, -1000f, 100f), false, 329f, vec3<i32>(u_input.d, u_input.d, 2147483647i), true), _wgslsmith_sub_i32(u_input.c, 0i), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(684f, 1163f))), min(-71023i, 1i), var_0.x))));
    return global1[_wgslsmith_index_u32(u_input.b.x, 18u)];
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: Struct_5, arg_3: vec4<f32>) -> u32 {
    var var_0 = arg_2.a;
    let var_1 = var_0.d.x << (~u_input.b.x % 32u);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.yzx)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.a.x, var_0.a.x, 235f))))), !any(vec4<bool>(arg_2.a.e, true, false, false)) & select(arg_2.a.b, any(select(vec3<bool>(false, arg_1.b, arg_2.a.b), vec3<bool>(var_0.e, arg_2.a.e, arg_1.b), vec3<bool>(arg_2.a.b, arg_1.b, arg_2.a.e))), 566f <= _wgslsmith_f_op_f32(arg_2.a.a.x * arg_3.x)), 1117f, vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(1i, func_4(Struct_3(-1000f, Struct_2(Struct_1(vec3<f32>(arg_0.x, 126f, 1000f), false, arg_2.a.a.x, arg_2.a.d, true), u_input.c, arg_0.zz, -28795i, true), Struct_2(Struct_1(arg_3.zzw, var_0.e, var_0.c, vec3<i32>(u_input.c, 34483i, u_input.d), false), u_input.d, vec2<f32>(115f, var_0.c), -2635i, false))), arg_2.a.d.x), var_0.d.x), -u_input.d, -36773i), var_0.e);
    global2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x))))));
    let var_3 = firstTrailingBit(min(~select(vec4<i32>(-27740i, -2147483647i, arg_2.a.d.x, -1i), firstTrailingBit(vec4<i32>(-2147483647i, 44642i, u_input.c, u_input.c)), var_0.b), max(vec4<i32>(var_0.d.x ^ -2392i, _wgslsmith_dot_vec2_i32(vec2<i32>(-21696i, 2147483647i), vec2<i32>(1i, -21030i)), 4312i, 1i), -vec4<i32>(2147483647i, var_2.d.x, 1i, var_1))));
    return firstTrailingBit((abs(~arg_1.a) & _wgslsmith_div_u32(69808u, u_input.a)) << (arg_1.c.x % 32u));
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: bool, arg_3: u32) -> Struct_3 {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(816f + 102f))) - -744f) - _wgslsmith_f_op_f32(f32(-1f) * -1444f));
    global0 = array<Struct_5, 4>();
    global3 = array<Struct_5, 30>();
    let var_0 = _wgslsmith_f_op_f32(-684f - _wgslsmith_f_op_f32(-592f - _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -463f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(593f, 704f), vec2<f32>(-249f, 574f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-639f, 495f)))), ~(~u_input.b.yx), _wgslsmith_f_op_f32(max(1513f, _wgslsmith_f_op_f32(f32(-1f) * -504f))))).x));
    global0 = array<Struct_5, 4>();
    return Struct_3(-896f, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 475f, -1084f) - vec3<f32>(var_0, var_0, var_0)))), false, var_0, vec3<i32>(select(u_input.d, 2147483647i, arg_1.b), -1600i, u_input.d), _wgslsmith_f_op_f32(-var_0) <= 1026f), 0i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-783f, var_0))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -421f) + vec2<f32>(564f, 1985f))) * vec2<f32>(_wgslsmith_f_op_f32(-var_0), -833f)), 0i, false), Struct_2(Struct_1(vec3<f32>(1848f, var_0, _wgslsmith_f_op_f32(-2033f * 2119f)), true, var_0, _wgslsmith_add_vec3_i32(max(vec3<i32>(-23056i, 0i, u_input.d), vec3<i32>(u_input.d, u_input.c, 1i)), min(vec3<i32>(2147483647i, u_input.c, -19263i), vec3<i32>(u_input.d, 0i, u_input.c))), true), _wgslsmith_div_i32(-4528i, firstTrailingBit(2147483647i) ^ ~u_input.c), vec2<f32>(_wgslsmith_div_f32(1f, var_0), _wgslsmith_f_op_f32(-var_0)), u_input.d, !(!any(vec3<bool>(true, true, arg_1.b)))));
}

fn func_1() -> Struct_5 {
    var var_0 = func_6(vec2<bool>(true, true), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_5(vec4<f32>(1f, _wgslsmith_f_op_f32(abs(1000f)), 704f, _wgslsmith_div_f32(306f, 247f)), func_2(), global3[_wgslsmith_index_u32(23779u, 30u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), u_input.a), 18u)], true, ~(u_input.b.x >> (11088u % 32u)));
    var var_1 = var_0.c;
    global1 = array<Struct_4, 18>();
    let var_2 = var_0.b;
    var_1 = func_6(select(select(!(!vec2<bool>(var_1.e, var_2.e)), select(!vec2<bool>(false, var_1.e), select(vec2<bool>(var_0.c.e, var_1.e), vec2<bool>(var_1.a.b, var_1.a.b), var_2.a.b), select(vec2<bool>(var_1.e, false), vec2<bool>(false, var_0.b.e), vec2<bool>(true, true))), vec2<bool>(!var_1.a.b, true)), vec2<bool>(_wgslsmith_mult_i32(var_2.a.d.x, 10216i) == _wgslsmith_dot_vec2_i32(var_0.c.a.d.zz, vec2<i32>(-2147483647i, -7314i)), var_2.a.e), !select(vec2<bool>(var_2.a.b, var_1.e), !vec2<bool>(true, var_2.a.e), select(vec2<bool>(true, var_1.e), vec2<bool>(true, var_0.c.e), vec2<bool>(true, false)))), func_2(), true, ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.b.x, u_input.b.x, 15832u, 16920u), vec4<u32>(1u, 4294967295u, 4294967295u, 1u), vec4<bool>(false, var_1.e, true, var_1.e)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 17374u), vec4<u32>(4294967295u, 6713u, u_input.a, 26528u))) ^ ~u_input.a).b;
    return Struct_5(var_2.a);
}

fn func_7(arg_0: Struct_5, arg_1: bool, arg_2: vec3<f32>) -> StorageBuffer {
    let var_0 = arg_0.a;
    var var_1 = 1i;
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~abs(u_input.b.x), 65116u, u_input.b.x), u_input.b), u_input.b.x);
    let var_3 = 486f;
    var var_4 = _wgslsmith_mult_vec3_u32(max(~u_input.b, vec3<u32>(~(~var_2), 0u, firstTrailingBit(u_input.b.x << (4294967295u % 32u)))), _wgslsmith_mult_vec3_u32(~(~vec3<u32>(4294967295u, 1u, u_input.b.x)), _wgslsmith_mod_vec3_u32(~(u_input.b ^ u_input.b), vec3<u32>(u_input.b.x >> (1u % 32u), 13485u, ~u_input.b.x))));
    return StorageBuffer(_wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b.x, 1u), 1u << (u_input.b.x % 32u))), _wgslsmith_add_u32(~var_2, firstLeadingBit(29776u)), 0u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1530f, var_0.a.x, 978f), func_6(vec2<bool>(arg_0.a.e, true), global1[_wgslsmith_index_u32(4294967295u, 18u)], false, 51643u).c.a.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(786f, -1918f, 197f)))))), vec2<i32>(_wgslsmith_mod_i32(u_input.d ^ _wgslsmith_dot_vec2_i32(var_0.d.xx, arg_0.a.d.xy), _wgslsmith_clamp_i32(arg_0.a.d.x, func_1().a.d.x, arg_0.a.d.x | var_0.d.x)), -_wgslsmith_div_i32(arg_0.a.d.x, u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1038f)) - 244f);
    global2 = 729f;
    global3 = array<Struct_5, 30>();
    var var_1 = 1317f;
    global1 = array<Struct_4, 18>();
    global3 = array<Struct_5, 30>();
    global3 = array<Struct_5, 30>();
    var var_2 = Struct_4(~u_input.a, all(vec3<bool>(true, true, true)), vec2<u32>(firstLeadingBit(0u << (0u % 32u)), firstTrailingBit(firstLeadingBit(86483u))) | ~(~(~u_input.b.yx)));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-585f * 1078f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1295f)))), 857f)));
    let x = u_input.a;
    s_output = func_7(func_1(), all(vec3<bool>(var_2.b && var_2.b, var_2.b, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(240f, var_3.x, -2266f)))) - vec3<f32>(340f, _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(var_3.x - -420f)))));
}

