struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: bool,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(-41084i, vec3<u32>(3063u, 0u, 4294967295u), true, vec4<u32>(1u, 56151u, 4294967295u, 18989u), vec2<f32>(316f, 2344f)), Struct_1(17427i, vec3<u32>(50187u, 4294967295u, 15352u), true, vec4<u32>(4294967295u, 65358u, 1u, 7699u), vec2<f32>(-820f, 644f)), Struct_1(-27598i, vec3<u32>(45113u, 0u, 5222u), true, vec4<u32>(68009u, 12842u, 99008u, 29491u), vec2<f32>(-956f, 146f)), Struct_1(i32(-2147483648), vec3<u32>(4306u, 4294967295u, 66218u), true, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), vec2<f32>(1000f, 1000f)), Struct_1(12581i, vec3<u32>(27749u, 0u, 52581u), false, vec4<u32>(37346u, 0u, 1u, 32509u), vec2<f32>(-291f, 341f)), Struct_1(i32(-2147483648), vec3<u32>(13503u, 1u, 48950u), false, vec4<u32>(118292u, 4294967295u, 29243u, 0u), vec2<f32>(-1227f, -1000f)), Struct_1(34186i, vec3<u32>(1u, 26867u, 4294967295u), true, vec4<u32>(1u, 4294967295u, 1u, 114642u), vec2<f32>(1000f, 1000f)), Struct_1(1i, vec3<u32>(4294967295u, 29582u, 1u), false, vec4<u32>(1u, 11330u, 43653u, 79317u), vec2<f32>(-498f, 159f)), Struct_1(29485i, vec3<u32>(65705u, 4597u, 1u), false, vec4<u32>(1u, 4294967295u, 57046u, 37529u), vec2<f32>(-1410f, 886f)), Struct_1(42916i, vec3<u32>(102726u, 1u, 579u), false, vec4<u32>(11243u, 0u, 1u, 4294967295u), vec2<f32>(454f, 318f)), Struct_1(40267i, vec3<u32>(20982u, 0u, 21260u), false, vec4<u32>(0u, 0u, 0u, 62630u), vec2<f32>(1000f, 356f)), Struct_1(19441i, vec3<u32>(46486u, 13509u, 4294967295u), false, vec4<u32>(1u, 79732u, 4294967295u, 0u), vec2<f32>(1254f, -1486f)), Struct_1(10252i, vec3<u32>(73884u, 1u, 1u), false, vec4<u32>(0u, 51177u, 4294967295u, 0u), vec2<f32>(668f, 1332f)), Struct_1(-1i, vec3<u32>(13424u, 1u, 1u), false, vec4<u32>(13262u, 1u, 83989u, 0u), vec2<f32>(-600f, 1021f)), Struct_1(i32(-2147483648), vec3<u32>(25334u, 24023u, 0u), false, vec4<u32>(4294967295u, 4294967295u, 1u, 24390u), vec2<f32>(-631f, 437f)), Struct_1(14535i, vec3<u32>(70919u, 0u, 4294967295u), false, vec4<u32>(0u, 1u, 0u, 0u), vec2<f32>(138f, 487f)), Struct_1(-33202i, vec3<u32>(0u, 4294967295u, 27770u), true, vec4<u32>(1u, 6644u, 1u, 56279u), vec2<f32>(-100f, -559f)), Struct_1(41411i, vec3<u32>(75794u, 34649u, 14845u), false, vec4<u32>(0u, 1u, 0u, 75330u), vec2<f32>(-1050f, -2111f)), Struct_1(-4612i, vec3<u32>(1u, 4294967295u, 38368u), true, vec4<u32>(9694u, 4294967295u, 66924u, 1u), vec2<f32>(218f, -327f)), Struct_1(1i, vec3<u32>(1u, 52426u, 4294967295u), false, vec4<u32>(0u, 52506u, 0u, 18518u), vec2<f32>(611f, 491f)), Struct_1(43052i, vec3<u32>(1u, 1u, 1u), true, vec4<u32>(42526u, 0u, 12875u, 63426u), vec2<f32>(-179f, -121f)), Struct_1(0i, vec3<u32>(70029u, 30345u, 0u), true, vec4<u32>(10369u, 1u, 20860u, 4294967295u), vec2<f32>(973f, -352f)), Struct_1(i32(-2147483648), vec3<u32>(1u, 1u, 15570u), true, vec4<u32>(4294967295u, 2248u, 23109u, 65586u), vec2<f32>(184f, 635f)), Struct_1(-1i, vec3<u32>(0u, 10937u, 1u), false, vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec2<f32>(766f, 1532f)), Struct_1(12843i, vec3<u32>(1u, 62097u, 4294967295u), true, vec4<u32>(1u, 92943u, 1u, 1u), vec2<f32>(-296f, 1000f)), Struct_1(1i, vec3<u32>(4294967295u, 1u, 52051u), true, vec4<u32>(10303u, 32402u, 23193u, 1u), vec2<f32>(464f, -759f)), Struct_1(27502i, vec3<u32>(0u, 1u, 0u), false, vec4<u32>(64254u, 12332u, 59528u, 1u), vec2<f32>(-1123f, 506f)), Struct_1(i32(-2147483648), vec3<u32>(3285u, 23375u, 11718u), true, vec4<u32>(1u, 33618u, 0u, 11907u), vec2<f32>(1811f, 493f)), Struct_1(2147483647i, vec3<u32>(28244u, 47236u, 4294967295u), true, vec4<u32>(1u, 17615u, 4294967295u, 19880u), vec2<f32>(-122f, -981f)), Struct_1(2147483647i, vec3<u32>(1u, 3592u, 49289u), true, vec4<u32>(4294967295u, 40304u, 17465u, 1u), vec2<f32>(286f, 464f)), Struct_1(i32(-2147483648), vec3<u32>(65276u, 4294967295u, 0u), false, vec4<u32>(0u, 4294967295u, 9005u, 45520u), vec2<f32>(-138f, 622f)));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = Struct_1(u_input.b, u_input.a.zwx, arg_1.x, u_input.a, vec2<f32>(-1251f, 1325f));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_3.d, -666f), 113f, _wgslsmith_div_f32(451f, var_0.e.x))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), -431f, 1000f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1530f, arg_2.x, 592f), vec3<f32>(arg_3.e.e.x, arg_3.e.e.x, arg_3.d))) * vec3<f32>(-1000f, arg_2.x, 142f)))));
    let var_2 = 44304i;
    global0 = array<Struct_1, 31>();
    let var_3 = !(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1091f))) >= var_1.x));
    return vec3<bool>(arg_3.a, !any(vec2<bool>(true, any(vec2<bool>(true, false)))), true);
}

fn func_4(arg_0: vec3<bool>, arg_1: u32) -> bool {
    var var_0 = Struct_2(all(!select(!vec2<bool>(arg_0.x, false), arg_0.xz, true)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(0i, -1i, u_input.b) << ((u_input.a.yzx >> (vec3<u32>(4294967295u, arg_1, arg_1) % vec3<u32>(32u))) % vec3<u32>(32u)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -49607i, -51808i), vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, -38001i, -41713i))), vec3<i32>(u_input.b, i32(-1i) * -u_input.b, ~(-3783i))), vec2<i32>(-2147483647i, u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 542f)))), global0[_wgslsmith_index_u32(arg_1 & ((46873u << (countOneBits(u_input.a.x) % 32u)) | 139827u), 31u)]);
    global0 = array<Struct_1, 31>();
    var_0 = Struct_2(all(arg_0), -2315i, vec2<i32>(select(var_0.b, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.b), vec2<i32>(-1i, var_0.e.a)), arg_0.x || arg_0.x) ^ (u_input.b & -var_0.b), -36549i << (min(~4294967295u, 4294967295u) % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -1764f), var_0.e);
    var_0 = Struct_2(var_0.a, -abs(var_0.e.a), vec2<i32>(-22494i, reverseBits(63945i)) << (vec2<u32>(firstLeadingBit(arg_1), 18889u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(sign(-240f)), var_0.e);
    let var_1 = ~(-vec4<i32>(u_input.b, ~u_input.b, 11901i, 42188i));
    return func_3(max(_wgslsmith_div_i32(var_0.b, 1i), -17860i), arg_0.zz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(182f - 309f), -420f))) - vec2<f32>(-1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1000f)), -363f)))), Struct_2(select(true, !any(vec3<bool>(false, true, true)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), arg_0.yx))), _wgslsmith_mult_i32(72587i, max(-29245i, _wgslsmith_clamp_i32(u_input.b, var_1.x, var_0.e.a))), ~(var_0.c | (var_1.wy & vec2<i32>(-39434i, var_0.e.a))), -723f, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 1u), 31u)])).x;
}

fn func_2() -> i32 {
    global0 = array<Struct_1, 31>();
    global0 = array<Struct_1, 31>();
    var var_0 = -30277i;
    var_0 = -(~u_input.b);
    var var_1 = Struct_2(func_4(func_3(5278i, vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -1531f), vec2<f32>(-726f, 1154f), vec2<bool>(true, true))) * vec2<f32>(-1000f, 359f)), Struct_2(-2147483647i >= u_input.b, 1426i, vec2<i32>(18609i, u_input.b), _wgslsmith_div_f32(445f, -163f), Struct_1(-2147483647i, vec3<u32>(1u, 19989u, 1u), true, u_input.a, vec2<f32>(-2422f, -863f)))), u_input.a.x), u_input.b, countOneBits(abs(-vec2<i32>(u_input.b, u_input.b))), -1856f, Struct_1(_wgslsmith_div_i32(u_input.b, 2147483647i), u_input.a.yyz, true, u_input.a, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(574f, -1217f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(357f, 246f), vec2<f32>(-1033f, 248f), vec2<bool>(false, false))))))));
    return u_input.b;
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = arg_3.d.wyw << (abs(~arg_3.d.yxx) % vec3<u32>(32u));
    global0 = array<Struct_1, 31>();
    let var_1 = ~90184u;
    return select(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(abs(vec3<i32>(arg_2.a, -1i, -1i)), vec3<i32>(arg_2.a, 0i, -1i)), ~_wgslsmith_add_vec3_i32(vec3<i32>(12217i, -1i, 893i), vec3<i32>(1i, -1i, 1246i))), reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, arg_0, -1i) | vec3<i32>(-31701i, arg_2.a, arg_3.a), vec3<i32>(1i, arg_2.a, -30859i))), !all(!vec4<bool>(arg_3.c, arg_3.c, arg_3.c, false))) & vec3<i32>(36060i, reverseBits(func_2()), abs(-_wgslsmith_add_i32(-83402i, 3743i)));
}

fn func_6(arg_0: vec3<i32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2071f), 1142f)), _wgslsmith_f_op_f32(sign(1f)), any(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(299f - -2052f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1239f), -925f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1617f, -471f))))));
    let var_1 = 11058i;
    var var_2 = 46722u;
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(var_0.x - -641f)))))));
    global0 = array<Struct_1, 31>();
    return !(!select(vec2<bool>(any(vec3<bool>(false, true, false)), any(vec3<bool>(true, true, true))), func_3(-arg_0.x, select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(var_0.wy - var_0.xx), Struct_2(false, -1i, vec2<i32>(-19818i, arg_0.x), var_0.x, global0[_wgslsmith_index_u32(u_input.a.x, 31u)])).zy, true));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = false;
    return func_6(func_5(func_2(), u_input.a.x, arg_3, Struct_1(countOneBits(2147483647i), u_input.a.wzy, any(vec4<bool>(true, arg_3.c, arg_3.c, true)), max(~vec4<u32>(1u, 4307u, 34218u, 89526u), vec4<u32>(1u, arg_0, 0u, 33116u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3.e - arg_3.e) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1551f, arg_3.e.x))))));
}

fn func_7(arg_0: bool, arg_1: vec2<bool>) -> Struct_2 {
    global0 = array<Struct_1, 31>();
    let var_0 = !arg_1.x;
    global0 = array<Struct_1, 31>();
    var var_1 = func_3(max(u_input.b, abs(26146i)) | _wgslsmith_clamp_i32(reverseBits(abs(u_input.b)), max(-1i, 0i), u_input.b), !(!arg_1), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(332f, -834f) - -570f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(310f, 1128f) - _wgslsmith_f_op_f32(f32(-1f) * -850f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-604f + 1546f) + _wgslsmith_f_op_f32(-1281f * 1000f)))), Struct_2(select(true, arg_0, var_0), reverseBits(1i), ~(vec2<i32>(3335i, 44472i) >> (vec2<u32>(65899u, u_input.a.x) % vec2<u32>(32u))) ^ vec2<i32>(_wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.b), 30377i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(224f, -116f)))), Struct_1(-2147483647i, _wgslsmith_add_vec3_u32(u_input.a.wwy, vec3<u32>(u_input.a.x, 23565u, 15342u)) >> (reverseBits(vec3<u32>(u_input.a.x, 19634u, 4783u)) % vec3<u32>(32u)), true, min(abs(u_input.a), vec4<u32>(u_input.a.x, u_input.a.x, 56821u, u_input.a.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-232f, 801f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(303f, 147f))))))).x;
    let var_2 = Struct_1(firstLeadingBit(-(~firstTrailingBit(u_input.b))), ~vec3<u32>(0u, 16261u, 28845u << (_wgslsmith_mod_u32(u_input.a.x, 18295u) % 32u)), true, vec4<u32>(~u_input.a.x, ~1u, ~max(u_input.a.x, 0u) | ~(u_input.a.x ^ u_input.a.x), _wgslsmith_mod_u32(u_input.a.x & 0u, _wgslsmith_div_u32(abs(u_input.a.x), 3756u))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(892f * _wgslsmith_f_op_f32(f32(-1f) * -2274f)), _wgslsmith_f_op_f32(753f * _wgslsmith_f_op_f32(f32(-1f) * -155f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(411f, 309f), _wgslsmith_f_op_f32(select(-674f, 1002f, true))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(552f, -960f) - vec2<f32>(-760f, -891f)) + vec2<f32>(-479f, -369f))), !(~u_input.b >= -2147483647i))));
    return Struct_2(true, func_2() | _wgslsmith_sub_i32(~(-51103i), var_2.a), max(_wgslsmith_clamp_vec2_i32(-vec2<i32>(-2147483647i, 23456i), -vec2<i32>(u_input.b, u_input.b), reverseBits(~vec2<i32>(-1i, -20469i))), _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(u_input.b, -47379i)), _wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(0i, 2147483647i)), vec2<i32>(u_input.b, -66117i) | vec2<i32>(u_input.b, u_input.b)))), _wgslsmith_f_op_f32(355f + _wgslsmith_f_op_f32(f32(-1f) * -785f)), global0[_wgslsmith_index_u32(u_input.a.x, 31u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 31>();
    let var_0 = _wgslsmith_mod_u32(~(~(_wgslsmith_div_u32(57999u, u_input.a.x) << (1u % 32u))), u_input.a.x);
    var var_1 = Struct_2(true, _wgslsmith_dot_vec2_i32(~(~vec2<i32>(u_input.b, u_input.b) | (vec2<i32>(u_input.b, u_input.b) >> (u_input.a.xw % vec2<u32>(32u)))), ~firstTrailingBit(~vec2<i32>(u_input.b, 2147483647i))), abs(-reverseBits(~vec2<i32>(u_input.b, -2147483647i))), -522f, global0[_wgslsmith_index_u32(4294967295u, 31u)]);
    var_1 = func_7(true, select(func_1(2875u, var_1.d, var_1.d, Struct_1(-41484i ^ u_input.b, u_input.a.wxz >> (vec3<u32>(1u, u_input.a.x, 41346u) % vec3<u32>(32u)), false, min(u_input.a, vec4<u32>(var_1.e.b.x, 6995u, 11002u, 0u)), _wgslsmith_f_op_vec2_f32(-var_1.e.e))), vec2<bool>(true, var_1.e.c), var_1.a));
    var var_2 = var_1.e;
    var var_3 = Struct_2(true, 0i, var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -877f) + -600f)), func_7(false, vec2<bool>(func_4(vec3<bool>(var_2.c, var_1.e.c, true), var_1.e.d.x) & true, var_1.e.c)).e);
    var var_4 = var_3.c;
    let var_5 = global0[_wgslsmith_index_u32(var_1.e.b.x, 31u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.e.e.x * -369f), 2322f))), -(~(~select(vec3<i32>(93885i, var_2.a, var_2.a), vec3<i32>(u_input.b, var_5.a, u_input.b), vec3<bool>(var_3.a, true, false)))), max(vec3<i32>(-39223i, ~u_input.b, -19945i), _wgslsmith_mod_vec3_i32(func_5(-1i, 13499u, global0[_wgslsmith_index_u32(var_1.e.d.x, 31u)], Struct_1(var_5.a, vec3<u32>(77850u, var_3.e.b.x, 5490u), true, var_5.d, var_1.e.e)), vec3<i32>(u_input.b, var_4.x, 2147483647i))) & (vec3<i32>(var_1.b, reverseBits(1i), var_1.b) << (var_2.d.zzw % vec3<u32>(32u))), abs(~(-28008i)));
}

