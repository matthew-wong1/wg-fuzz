struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: u32;

var<private> global2: array<vec3<i32>, 27>;

var<private> global3: array<Struct_5, 14> = array<Struct_5, 14>(Struct_5(Struct_4(Struct_2(Struct_1(vec3<i32>(9842i, -1i, 0i), vec3<f32>(1000f, 501f, -753f), vec4<f32>(-750f, 1000f, -1180f, 2429f), vec4<bool>(false, false, false, true)), false, 1u)), -16770i, vec4<bool>(true, true, true, true), Struct_1(vec3<i32>(-26329i, i32(-2147483648), 1i), vec3<f32>(-849f, -1347f, -753f), vec4<f32>(790f, 1000f, 121f, 468f), vec4<bool>(true, true, false, false))), Struct_5(Struct_4(Struct_2(Struct_1(vec3<i32>(12989i, -8655i, 11446i), vec3<f32>(-1167f, -331f, 1361f), vec4<f32>(-783f, -1000f, 664f, -894f), vec4<bool>(true, true, true, false)), true, 5805u)), 27936i, vec4<bool>(true, false, false, true), Struct_1(vec3<i32>(-7851i, 76419i, 62649i), vec3<f32>(1948f, 822f, 117f), vec4<f32>(-460f, -709f, -1729f, -324f), vec4<bool>(false, true, false, true))), Struct_5(Struct_4(Struct_2(Struct_1(vec3<i32>(0i, -17518i, 0i), vec3<f32>(-239f, -1727f, -1296f), vec4<f32>(797f, -538f, -1721f, 293f), vec4<bool>(false, true, true, true)), true, 1u)), 29850i, vec4<bool>(false, true, true, true), Struct_1(vec3<i32>(8358i, 1i, -52206i), vec3<f32>(-1346f, -1597f, -1465f), vec4<f32>(-1333f, -1857f, -1000f, -1244f), vec4<bool>(false, false, false, true))), Struct_5(Struct_4(Struct_2(Struct_1(vec3<i32>(1i, 13271i, i32(-2147483648)), vec3<f32>(350f, -147f, 590f), vec4<f32>(142f, -1000f, 271f, -684f), vec4<bool>(true, false, true, true)), true, 62211u)), 2147483647i, vec4<bool>(false, true, true, true), Struct_1(vec3<i32>(-38334i, -7202i, 6982i), vec3<f32>(374f, -776f, -789f), vec4<f32>(536f, 1953f, -1064f, -1397f), vec4<bool>(true, true, false, false))), Struct_5(Struct_4(Struct_2(Struct_1(vec3<i32>(5229i, -22954i, -10050i), vec3<f32>(865f, 1249f, 501f), vec4<f32>(178f, 431f, -190f, -2488f), vec4<bool>(false, true, true, true)), false, 37094u)), -11263i, vec4<bool>(true, true, false, true), Struct_1(vec3<i32>(-43000i, 37159i, 9334i), vec3<f32>(-1144f, 339f, -1000f), vec4<f32>(-1984f, -1903f, -539f, -663f), vec4<bool>(false, false, false, false))), Struct_5(Struct_4(Struct_2(Struct_1(vec3<i32>(0i, 2147483647i, -1i), vec3<f32>(3504f, -1684f, -761f), vec4<f32>(-1036f, -248f, -306f, 988f), vec4<bool>(true, true, false, false)), false, 4294967295u)), 37754i, vec4<bool>(false, true, false, false), Struct_1(vec3<i32>(1i, 12409i, 4445i), vec3<f32>(-1657f, 100f, -1210f), vec4<f32>(-107f, -461f, -688f, -1032f), vec4<bool>(true, false, false, true))), Struct_5(Struct_4(Struct_2(Struct_1(vec3<i32>(77537i, 7522i, i32(-2147483648)), vec3<f32>(247f, 1185f, 1491f), vec4<f32>(-766f, 222f, 1411f, 2103f), vec4<bool>(true, true, false, true)), true, 6434u)), 24975i, vec4<bool>(false, false, false, true), Struct_1(vec3<i32>(0i, i32(-2147483648), 0i), vec3<f32>(1000f, 524f, 1273f), vec4<f32>(980f, 646f, -2335f, -401f), vec4<bool>(false, true, false, true))), Struct_5(Struct_4(Struct_2(Struct_1(vec3<i32>(-1i, -57363i, 0i), vec3<f32>(-131f, 1223f, -600f), vec4<f32>(212f, -383f, 441f, -1171f), vec4<bool>(false, true, true, true)), false, 0u)), -28282i, vec4<bool>(true, false, false, false), Struct_1(vec3<i32>(2147483647i, -1i, 8183i), vec3<f32>(1578f, -1000f, 398f), vec4<f32>(-1666f, 1935f, 1081f, 1139f), vec4<bool>(true, true, true, false))), Struct_5(Struct_4(Struct_2(Struct_1(vec3<i32>(609i, -28522i, 1i), vec3<f32>(-263f, 1783f, -1089f), vec4<f32>(-1133f, 661f, -1185f, -1382f), vec4<bool>(true, false, false, true)), true, 43670u)), -48377i, vec4<bool>(true, true, true, false), Struct_1(vec3<i32>(29548i, 14954i, 1i), vec3<f32>(343f, -525f, -749f), vec4<f32>(-789f, 1000f, 1137f, 2590f), vec4<bool>(false, false, true, true))), Struct_5(Struct_4(Struct_2(Struct_1(vec3<i32>(0i, 1i, 22689i), vec3<f32>(1308f, 1239f, 1317f), vec4<f32>(-371f, 1475f, 2093f, 563f), vec4<bool>(true, false, true, true)), false, 0u)), 0i, vec4<bool>(false, true, true, false), Struct_1(vec3<i32>(1i, i32(-2147483648), -19767i), vec3<f32>(491f, 310f, 103f), vec4<f32>(672f, 1120f, -475f, 1316f), vec4<bool>(false, true, false, true))), Struct_5(Struct_4(Struct_2(Struct_1(vec3<i32>(2147483647i, 13236i, 12227i), vec3<f32>(-622f, -1428f, 1000f), vec4<f32>(780f, -1460f, 1000f, 370f), vec4<bool>(false, true, true, true)), true, 1u)), i32(-2147483648), vec4<bool>(false, false, true, true), Struct_1(vec3<i32>(-204i, 92322i, 42183i), vec3<f32>(1636f, -1405f, -217f), vec4<f32>(648f, 160f, -459f, -566f), vec4<bool>(false, false, true, true))), Struct_5(Struct_4(Struct_2(Struct_1(vec3<i32>(3850i, 7596i, 0i), vec3<f32>(125f, -238f, -533f), vec4<f32>(1220f, 109f, 341f, 526f), vec4<bool>(true, true, true, true)), false, 1u)), 1i, vec4<bool>(false, true, false, true), Struct_1(vec3<i32>(-1i, 2147483647i, 47070i), vec3<f32>(-1242f, -249f, -641f), vec4<f32>(234f, -487f, 409f, 409f), vec4<bool>(false, true, false, true))), Struct_5(Struct_4(Struct_2(Struct_1(vec3<i32>(-230i, -1i, -62413i), vec3<f32>(-395f, -160f, -817f), vec4<f32>(-1542f, 2328f, -1025f, 1035f), vec4<bool>(true, false, true, false)), false, 4294967295u)), i32(-2147483648), vec4<bool>(false, true, false, true), Struct_1(vec3<i32>(1i, -1i, -16647i), vec3<f32>(-526f, -1010f, 218f), vec4<f32>(-1000f, 1000f, -635f, 1219f), vec4<bool>(true, false, true, false))), Struct_5(Struct_4(Struct_2(Struct_1(vec3<i32>(-42718i, 13692i, 2147483647i), vec3<f32>(1324f, 902f, -1570f), vec4<f32>(2220f, -1000f, -721f, 898f), vec4<bool>(true, true, false, false)), false, 4294967295u)), 2147483647i, vec4<bool>(false, true, false, false), Struct_1(vec3<i32>(-22619i, 0i, -7094i), vec3<f32>(260f, 329f, 735f), vec4<f32>(453f, -173f, 931f, -132f), vec4<bool>(true, false, false, false))));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(10481u, 1508u, u_input.b, 0u), vec4<u32>(0u, u_input.b, u_input.b, 0u), ~vec4<u32>(u_input.b, 18734u, u_input.b, 27136u)), vec4<u32>(u_input.b, ~min(u_input.b, 38121u), u_input.b, 1u)), ~(~vec4<u32>(0u, u_input.b, 56167u, u_input.b) ^ ~vec4<u32>(4294967295u, 1u, 27837u, u_input.b)) & max(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(95936u, 112655u, 18855u, u_input.b), vec4<u32>(0u, 4294967295u, u_input.b, u_input.b)), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), ~(~vec4<u32>(u_input.b, 1509u, u_input.b, u_input.b))));
    let var_1 = vec3<u32>(~var_0, _wgslsmith_mod_u32(abs(_wgslsmith_clamp_u32(abs(0u), _wgslsmith_sub_u32(22880u, var_0), var_0 & var_0)), select(0u << (u_input.b % 32u), 113461u, arg_2.d.x)), ~(~(~(~u_input.b))));
    var var_2 = Struct_3(var_0 == 15717u, -vec4<i32>(-(arg_2.a.x | 29600i), -arg_2.a.x, u_input.a, _wgslsmith_dot_vec2_i32(max(vec2<i32>(5556i, arg_2.a.x), vec2<i32>(-49012i, u_input.a)), -vec2<i32>(-34417i, 2147483647i))), _wgslsmith_f_op_f32(floor(arg_0.x)));
    let var_3 = Struct_2(global0[_wgslsmith_index_u32(countOneBits(17329u), 24u)], !all(!arg_2.d), _wgslsmith_div_u32(~_wgslsmith_div_u32(1u, u_input.b), var_0));
    var var_4 = 4294967295u;
    return 2147483647i;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: Struct_5) -> f32 {
    let var_0 = vec2<bool>(arg_3.c.x, select(any(select(arg_3.a.a.a.d.zzy, select(arg_3.d.d.yzw, arg_3.c.xzy, vec3<bool>(true, true, arg_3.c.x)), select(arg_3.c.x, true, false))), true, !arg_3.c.x | (countOneBits(42980u) != arg_1.x)));
    global3 = array<Struct_5, 14>();
    global0 = array<Struct_1, 24>();
    global3 = array<Struct_5, 14>();
    global1 = 25071u;
    return 1f;
}

fn func_2() -> u32 {
    var var_0 = Struct_4(Struct_2(global0[_wgslsmith_index_u32(~u_input.b, 24u)], all(vec3<bool>(true, true, true)), max(~1u ^ min(u_input.b, 28734u), 25377u)));
    global3 = array<Struct_5, 14>();
    let var_1 = var_0.a.a.c;
    var var_2 = Struct_3(var_0.a.b, vec4<i32>(_wgslsmith_mult_i32(min(_wgslsmith_mod_i32(var_0.a.a.a.x, 5436i), 0i), -(u_input.a | u_input.a)), ~var_0.a.a.a.x, _wgslsmith_dot_vec2_i32(select(var_0.a.a.a.zy, vec2<i32>(var_0.a.a.a.x, var_0.a.a.a.x), false), ~vec2<i32>(-2147483647i, u_input.a)) | _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, var_0.a.a.a.x, u_input.a, var_0.a.a.a.x), vec4<i32>(-14046i, -1i, 2147483647i, 2147483647i), vec4<i32>(-23781i, u_input.a, var_0.a.a.a.x, var_0.a.a.a.x)), vec4<i32>(-58782i, -2147483647i, u_input.a, var_0.a.a.a.x)), u_input.a), _wgslsmith_f_op_f32(func_4(select(~(-var_0.a.a.a.yx), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a.a.a.x, 8141i), var_0.a.a.a.xy ^ vec2<i32>(u_input.a, -6791i)), true & (var_0.a.b | false)), ~(~(vec2<u32>(0u, var_0.a.c) & vec2<u32>(var_0.a.c, 0u))), var_0.a.a.a | vec3<i32>(~21809i, func_3(vec2<f32>(953f, 809f), false, Struct_1(vec3<i32>(u_input.a, u_input.a, -1i), var_1.zyz, vec4<f32>(var_1.x, var_0.a.a.b.x, var_0.a.a.c.x, -1018f), vec4<bool>(var_0.a.b, var_0.a.a.d.x, false, var_0.a.b))), 31160i), Struct_5(Struct_4(var_0.a), ~(var_0.a.a.a.x << (0u % 32u)), var_0.a.a.d, var_0.a.a))));
    let var_3 = 0i;
    return select(~select(~u_input.b, var_0.a.c << (var_0.a.c % 32u), false) | countOneBits(reverseBits(7429u ^ u_input.b)), _wgslsmith_dot_vec4_u32(~vec4<u32>(~0u, u_input.b | 53888u, 4253u, ~u_input.b), _wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 52730u, u_input.b, u_input.b) >> (abs(vec4<u32>(4294967295u, 0u, 4294967295u, 1u)) % vec4<u32>(32u)), select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, var_0.a.c, 17110u, 18325u), vec4<u32>(var_0.a.c, u_input.b, u_input.b, 3792u)), countOneBits(vec4<u32>(0u, var_0.a.c, 1u, 1u)), !var_0.a.a.d))), var_0.a.a.d.x);
}

fn func_5(arg_0: u32, arg_1: vec3<u32>, arg_2: u32) -> vec4<bool> {
    global1 = ~_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(~arg_1.xz, ~arg_1.xz), max(arg_1.yz, abs(_wgslsmith_sub_vec2_u32(vec2<u32>(31737u, u_input.b), vec2<u32>(arg_1.x, 42908u)))));
    var var_0 = Struct_4(Struct_2(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(4294967295u, ~17684u), 24u)], ~_wgslsmith_mod_i32(33684i, u_input.a) == _wgslsmith_mod_i32(max(u_input.a, u_input.a), ~u_input.a), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(25461u, 7807u, 1u, 1u), vec4<u32>(70519u, 4294967295u, 44437u, 29726u)), arg_1.x) | ~reverseBits(0u)));
    return var_0.a.a.d;
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -(~abs(-22636i)), _wgslsmith_div_i32(1i | u_input.a, u_input.a) | firstTrailingBit(max(-19862i, u_input.a))), _wgslsmith_mult_vec3_i32(countOneBits(_wgslsmith_mult_vec3_i32(select(global2[_wgslsmith_index_u32(1u, 27u)], vec3<i32>(u_input.a, u_input.a, -5487i), true), global2[_wgslsmith_index_u32(u_input.b, 27u)] ^ global2[_wgslsmith_index_u32(4294967295u, 27u)])), vec3<i32>(-1i, select(u_input.a, u_input.a ^ u_input.a, true), ~u_input.a)));
    global3 = array<Struct_5, 14>();
    global2 = array<vec3<i32>, 27>();
    let var_1 = Struct_5(Struct_4(Struct_2(Struct_1(vec3<i32>(-19035i, u_input.a, var_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1674f, 462f, -1623f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, arg_1, -584f, 688f))), vec4<bool>(false, false, false, true)), true, ~48462u)), 1i, func_5(func_2(), vec3<u32>(u_input.b, ~u_input.b, u_input.b | 0u) ^ vec3<u32>(_wgslsmith_div_u32(6492u, u_input.b), 84356u, u_input.b), countOneBits(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(17039u, u_input.b, 4294967295u), vec3<u32>(1u, u_input.b, u_input.b))))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(34913u, u_input.b, u_input.b) ^ vec3<u32>(u_input.b, 12707u, u_input.b), ~vec3<u32>(u_input.b, u_input.b, u_input.b)), abs(~vec3<u32>(20997u, 0u, u_input.b)), ~(~vec3<u32>(u_input.b, u_input.b, 14973u))), ~(~vec3<u32>(1u, 62685u, u_input.b) & vec3<u32>(u_input.b, u_input.b, u_input.b))), 24u)]);
    var var_2 = _wgslsmith_add_u32(1103u | abs(_wgslsmith_mod_u32(var_1.a.a.c, var_1.a.a.c)), ~u_input.b);
    return Struct_1(vec3<i32>(-min(var_1.d.a.x, var_0) ^ (max(u_input.a, 0i) | 19101i), var_0, var_0), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(-vec2<i32>(0i, var_1.a.a.a.a.x), _wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(122852u, 23552u)), ~vec3<i32>(2147483647i, var_1.b, -35528i), var_1))), -1072f, _wgslsmith_f_op_f32(910f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_0, arg_1)), _wgslsmith_f_op_f32(exp2(arg_1)), true)) + _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), -289f, arg_0, var_1.d.b.x), !(!(!var_1.a.a.a.d)));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = global3[_wgslsmith_index_u32(~(~(~_wgslsmith_mult_u32(~0u, func_2()))), 14u)];
    var var_1 = -1i;
    global0 = array<Struct_1, 24>();
    let var_2 = vec3<f32>(arg_2.a.a.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_0.a.c.x, arg_2.a.a.c.x)))))), var_0.a.a.a.c.x);
    let var_3 = ~_wgslsmith_mult_u32(countOneBits(~16928u << (arg_2.a.c % 32u)), ~var_0.a.a.c);
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_2(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-303f, -385f)) - _wgslsmith_div_f32(-1000f, 444f)), 588f), false, ~_wgslsmith_div_u32(u_input.b, u_input.b)), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(349f)) - _wgslsmith_f_op_f32(step(-331f, -793f))) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -133f), 2527f)), -vec4<i32>(_wgslsmith_mult_i32(0i, 0i), u_input.a, func_3(vec2<f32>(-1695f, 1267f), true, Struct_1(global2[_wgslsmith_index_u32(u_input.b, 27u)], vec3<f32>(1657f, -487f, -204f), vec4<f32>(1683f, -683f, 817f, 517f), vec4<bool>(false, true, false, true))), select(u_input.a, u_input.a, true)), -295f), Struct_4(Struct_2(Struct_1(~vec3<i32>(-15741i, 2147483647i, u_input.a), vec3<f32>(-1666f, -973f, 1014f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(2130f, -1439f, 1289f, 925f))), vec4<bool>(true, true, true, true)), false, 1u)), vec2<bool>(1f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-3210f, 1000f)), _wgslsmith_f_op_f32(select(-450f, -1000f, false))), true));
    let var_1 = var_0.a.c.x;
    global3 = array<Struct_5, 14>();
    global1 = 0u;
    global3 = array<Struct_5, 14>();
    let var_2 = Struct_4(var_0);
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<u32>(var_2.a.c, 4294967295u) >> (_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(var_0.c, var_0.c)), select(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 0u), vec2<bool>(var_2.a.b, var_0.a.d.x))) % vec2<u32>(32u)), firstLeadingBit(~vec2<u32>(1u, var_2.a.c))), min(max(min(vec3<u32>(1u, var_2.a.c, var_0.c) >> (vec3<u32>(var_0.c, 41725u, 23235u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_2.a.c, var_2.a.c, 1535u), vec3<u32>(var_0.c, 1u, 4294967295u))), vec3<u32>(~28389u, firstTrailingBit(16357u), abs(18990u))), select(~vec3<u32>(var_0.c, 1u, u_input.b), vec3<u32>(~u_input.b, var_0.c, var_2.a.c), select(vec3<bool>(true, var_0.b, var_0.b), select(var_0.a.d.zxy, var_2.a.a.d.zyz, false), select(var_0.a.d.xyz, var_2.a.a.d.wwx, var_2.a.b)))), vec3<i32>(-2147483647i & var_0.a.a.x, _wgslsmith_add_i32(11397i, abs(-39854i)), ~1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.a.b.x) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(134f, -271f)))));
}

