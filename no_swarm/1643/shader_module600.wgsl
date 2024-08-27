struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: Struct_2,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7> = array<bool, 7>(false, false, true, true, true, false, true);

var<private> global1: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(166f, -36263i, vec2<i32>(39968i, 0i), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 1i, -1i)), Struct_1(vec3<i32>(-1i, 0i, -35490i)), Struct_1(vec3<i32>(-20705i, 13404i, 16217i)), 21331i, vec4<f32>(269f, -374f, -600f, -364f)), vec2<f32>(-198f, -1218f)), Struct_3(-100f, -181i, vec2<i32>(-1i, -20340i), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -22855i, -24526i)), Struct_1(vec3<i32>(-1i, -23297i, -32588i)), Struct_1(vec3<i32>(0i, 34375i, -1i)), i32(-2147483648), vec4<f32>(-186f, -575f, -2220f, -1290f)), vec2<f32>(-674f, -1635f)), Struct_3(-1141f, -1i, vec2<i32>(1i, 2147483647i), Struct_2(Struct_1(vec3<i32>(-44272i, i32(-2147483648), 2147483647i)), Struct_1(vec3<i32>(3637i, -17888i, i32(-2147483648))), Struct_1(vec3<i32>(-43340i, 0i, 0i)), 51101i, vec4<f32>(101f, -1709f, -455f, 1519f)), vec2<f32>(-1000f, 1000f)), Struct_3(323f, -45665i, vec2<i32>(1663i, 5142i), Struct_2(Struct_1(vec3<i32>(0i, -1i, 0i)), Struct_1(vec3<i32>(i32(-2147483648), 0i, -13960i)), Struct_1(vec3<i32>(1i, 0i, 4359i)), -15146i, vec4<f32>(-606f, -748f, -1004f, 861f)), vec2<f32>(-1000f, -1000f)), Struct_3(312f, -14947i, vec2<i32>(-34253i, 2147483647i), Struct_2(Struct_1(vec3<i32>(28460i, 0i, -29109i)), Struct_1(vec3<i32>(-31383i, 2147483647i, -39202i)), Struct_1(vec3<i32>(-29207i, i32(-2147483648), -1i)), i32(-2147483648), vec4<f32>(784f, -998f, -955f, -479f)), vec2<f32>(2188f, 523f)), Struct_3(126f, i32(-2147483648), vec2<i32>(-51715i, -1i), Struct_2(Struct_1(vec3<i32>(-4679i, 0i, -15607i)), Struct_1(vec3<i32>(-1i, 1i, -1i)), Struct_1(vec3<i32>(21899i, -1i, 32327i)), 2147483647i, vec4<f32>(642f, -234f, 2189f, -261f)), vec2<f32>(148f, -531f)), Struct_3(-1000f, -3076i, vec2<i32>(0i, 1i), Struct_2(Struct_1(vec3<i32>(-1i, 1i, 0i)), Struct_1(vec3<i32>(-15792i, -13160i, 1i)), Struct_1(vec3<i32>(2147483647i, -23682i, -18367i)), 10870i, vec4<f32>(309f, 236f, -740f, -856f)), vec2<f32>(155f, -288f)), Struct_3(284f, 0i, vec2<i32>(2147483647i, 7772i), Struct_2(Struct_1(vec3<i32>(0i, -1i, 0i)), Struct_1(vec3<i32>(2147483647i, 21452i, 49312i)), Struct_1(vec3<i32>(2147483647i, 2147483647i, -21627i)), 39744i, vec4<f32>(1799f, -283f, -166f, 1528f)), vec2<f32>(-650f, -643f)), Struct_3(-1585f, i32(-2147483648), vec2<i32>(-17201i, 2147483647i), Struct_2(Struct_1(vec3<i32>(0i, 0i, 2147483647i)), Struct_1(vec3<i32>(-1i, -1i, 106233i)), Struct_1(vec3<i32>(60697i, 2147483647i, -1i)), 0i, vec4<f32>(-189f, 994f, -1782f, 143f)), vec2<f32>(998f, -653f)), Struct_3(-841f, 1i, vec2<i32>(0i, -48453i), Struct_2(Struct_1(vec3<i32>(53748i, 1i, 18034i)), Struct_1(vec3<i32>(37333i, 5769i, 49750i)), Struct_1(vec3<i32>(26426i, 39974i, 1i)), -12572i, vec4<f32>(-707f, 1618f, -857f, 874f)), vec2<f32>(685f, -1706f)), Struct_3(1008f, -28894i, vec2<i32>(830i, 0i), Struct_2(Struct_1(vec3<i32>(2147483647i, -31847i, -1i)), Struct_1(vec3<i32>(19747i, -1i, 6635i)), Struct_1(vec3<i32>(1i, 3953i, 2147483647i)), 64870i, vec4<f32>(190f, 441f, 722f, 1011f)), vec2<f32>(-455f, 162f)), Struct_3(659f, 33031i, vec2<i32>(15748i, 6221i), Struct_2(Struct_1(vec3<i32>(-10049i, 17829i, 46151i)), Struct_1(vec3<i32>(-1i, 26919i, -45203i)), Struct_1(vec3<i32>(-15972i, 13020i, 4932i)), 21290i, vec4<f32>(666f, 693f, 1363f, 512f)), vec2<f32>(-1000f, -368f)), Struct_3(1000f, -25336i, vec2<i32>(6773i, 0i), Struct_2(Struct_1(vec3<i32>(39501i, i32(-2147483648), -1i)), Struct_1(vec3<i32>(-35080i, i32(-2147483648), 1i)), Struct_1(vec3<i32>(2147483647i, -1i, 10357i)), -46495i, vec4<f32>(-936f, 137f, 538f, -211f)), vec2<f32>(-794f, -1689f)), Struct_3(323f, 14325i, vec2<i32>(2147483647i, 5868i), Struct_2(Struct_1(vec3<i32>(-65231i, -14104i, 1i)), Struct_1(vec3<i32>(0i, -1i, -19223i)), Struct_1(vec3<i32>(0i, 163i, -29373i)), 2147483647i, vec4<f32>(249f, 238f, 1921f, 879f)), vec2<f32>(-762f, -582f)), Struct_3(1000f, -15679i, vec2<i32>(0i, 1i), Struct_2(Struct_1(vec3<i32>(23157i, 1i, -1i)), Struct_1(vec3<i32>(0i, -1i, -7800i)), Struct_1(vec3<i32>(-33290i, 34825i, 17312i)), i32(-2147483648), vec4<f32>(-155f, -118f, -1000f, -1560f)), vec2<f32>(-428f, -1018f)), Struct_3(1404f, i32(-2147483648), vec2<i32>(2147483647i, 8708i), Struct_2(Struct_1(vec3<i32>(15620i, 1i, 23046i)), Struct_1(vec3<i32>(3244i, 794i, -1i)), Struct_1(vec3<i32>(-11388i, 33022i, 0i)), 0i, vec4<f32>(1000f, 1095f, -368f, 864f)), vec2<f32>(186f, 240f)), Struct_3(-655f, -1i, vec2<i32>(-85070i, -1i), Struct_2(Struct_1(vec3<i32>(-12319i, 10714i, -1i)), Struct_1(vec3<i32>(2147483647i, -1i, 13602i)), Struct_1(vec3<i32>(14523i, -8027i, -1i)), -1i, vec4<f32>(1233f, 354f, 1228f, 1000f)), vec2<f32>(-111f, 999f)), Struct_3(250f, i32(-2147483648), vec2<i32>(-1437i, i32(-2147483648)), Struct_2(Struct_1(vec3<i32>(46958i, 0i, -1i)), Struct_1(vec3<i32>(15989i, i32(-2147483648), 2147483647i)), Struct_1(vec3<i32>(i32(-2147483648), 0i, 2147483647i)), 2390i, vec4<f32>(1044f, 827f, 243f, 1000f)), vec2<f32>(746f, 631f)), Struct_3(-486f, -186i, vec2<i32>(i32(-2147483648), 11888i), Struct_2(Struct_1(vec3<i32>(2147483647i, -1i, i32(-2147483648))), Struct_1(vec3<i32>(40582i, 2147483647i, -13878i)), Struct_1(vec3<i32>(-30618i, 0i, 25208i)), -1i, vec4<f32>(-473f, -602f, -1000f, -940f)), vec2<f32>(-151f, -533f)), Struct_3(1691f, 2147483647i, vec2<i32>(0i, 5214i), Struct_2(Struct_1(vec3<i32>(-44609i, i32(-2147483648), -27763i)), Struct_1(vec3<i32>(-2936i, 0i, i32(-2147483648))), Struct_1(vec3<i32>(10562i, 5038i, i32(-2147483648))), 49767i, vec4<f32>(285f, 1869f, -810f, 1031f)), vec2<f32>(-617f, -375f)), Struct_3(-763f, 520i, vec2<i32>(2147483647i, 24819i), Struct_2(Struct_1(vec3<i32>(-1i, 9511i, -1i)), Struct_1(vec3<i32>(2147483647i, 6108i, 34377i)), Struct_1(vec3<i32>(-1i, 51077i, 16875i)), 44127i, vec4<f32>(-1000f, -523f, -750f, 1603f)), vec2<f32>(-789f, -658f)), Struct_3(-1327f, 20960i, vec2<i32>(1i, 0i), Struct_2(Struct_1(vec3<i32>(2147483647i, 0i, i32(-2147483648))), Struct_1(vec3<i32>(-1i, -39402i, 15914i)), Struct_1(vec3<i32>(1i, i32(-2147483648), 59155i)), i32(-2147483648), vec4<f32>(886f, -836f, -888f, 476f)), vec2<f32>(-2267f, 345f)), Struct_3(-836f, i32(-2147483648), vec2<i32>(0i, -1i), Struct_2(Struct_1(vec3<i32>(2147483647i, 2147483647i, 1i)), Struct_1(vec3<i32>(-29744i, 1i, 1i)), Struct_1(vec3<i32>(-367i, 51574i, 6599i)), 0i, vec4<f32>(-3036f, -418f, -140f, -577f)), vec2<f32>(-199f, 696f)), Struct_3(-102f, 32355i, vec2<i32>(-13814i, -10685i), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 32654i, 1i)), Struct_1(vec3<i32>(19631i, -73023i, 1i)), Struct_1(vec3<i32>(2147483647i, 2147483647i, -17071i)), -38588i, vec4<f32>(390f, -1586f, -1000f, 834f)), vec2<f32>(228f, 113f)), Struct_3(742f, 13773i, vec2<i32>(17474i, 77011i), Struct_2(Struct_1(vec3<i32>(2147483647i, 3291i, -61792i)), Struct_1(vec3<i32>(-24814i, 620i, -1i)), Struct_1(vec3<i32>(-1i, -5627i, -21400i)), -4988i, vec4<f32>(518f, -309f, -662f, -727f)), vec2<f32>(608f, -930f)), Struct_3(-272f, 4543i, vec2<i32>(-14093i, 11831i), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 0i, 0i)), Struct_1(vec3<i32>(44726i, -36958i, i32(-2147483648))), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 6106i)), -36023i, vec4<f32>(-1000f, -224f, -146f, 449f)), vec2<f32>(135f, -366f)), Struct_3(1037f, 21273i, vec2<i32>(i32(-2147483648), -3318i), Struct_2(Struct_1(vec3<i32>(-32161i, 12545i, 2147483647i)), Struct_1(vec3<i32>(0i, 2147483647i, 1i)), Struct_1(vec3<i32>(i32(-2147483648), 0i, -18237i)), i32(-2147483648), vec4<f32>(-590f, 1216f, 1389f, -1418f)), vec2<f32>(1868f, -1134f)), Struct_3(1229f, 1i, vec2<i32>(1i, -25800i), Struct_2(Struct_1(vec3<i32>(-1i, 111602i, 0i)), Struct_1(vec3<i32>(13232i, -27949i, -6403i)), Struct_1(vec3<i32>(1i, 1i, i32(-2147483648))), i32(-2147483648), vec4<f32>(522f, -317f, 875f, 2544f)), vec2<f32>(804f, 716f)));

var<private> global2: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(-503f, -147f, -738f), vec3<f32>(133f, -1000f, -137f), vec3<f32>(-1000f, -921f, -1659f), vec3<f32>(1855f, -336f, -1477f), vec3<f32>(397f, -516f, 687f), vec3<f32>(1464f, -271f, 320f), vec3<f32>(-215f, -1319f, -1084f), vec3<f32>(-590f, 433f, 358f), vec3<f32>(-192f, 1769f, 347f), vec3<f32>(-1738f, -1368f, 1137f), vec3<f32>(1967f, 131f, 1945f), vec3<f32>(643f, -1179f, -2026f), vec3<f32>(259f, 585f, -465f), vec3<f32>(-505f, -427f, -180f), vec3<f32>(292f, -132f, -401f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(floor(1429f));
    var var_1 = vec2<bool>(u_input.d >= u_input.d, !all(select(select(vec4<bool>(global0[_wgslsmith_index_u32(44328u, 7u)], global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)], false), vec4<bool>(false, true, global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(18041u, 7u)]), global0[_wgslsmith_index_u32(u_input.c.x, 7u)]), !vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(u_input.c.x, 7u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 7u)], true, global0[_wgslsmith_index_u32(25213u, 7u)], true))));
    global2 = array<vec3<f32>, 15>();
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1216f), _wgslsmith_f_op_f32(round(265f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-453f * _wgslsmith_f_op_f32(step(395f, -576f))))));
    var_0 = _wgslsmith_f_op_f32(sign(-128f));
    return _wgslsmith_mult_u32(_wgslsmith_div_u32(1u, 96013u), ~_wgslsmith_clamp_u32(~(~u_input.a.x), u_input.a.x, 1u));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<u32>, arg_3: Struct_3) -> bool {
    global0 = array<bool, 7>();
    return false;
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: Struct_3) -> Struct_1 {
    let var_0 = vec3<bool>(func_3(Struct_1(~_wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.d.c.a.x, -1i, 2147483647i), arg_2.d.b.a)), arg_2.e.x, vec3<u32>(arg_0, firstTrailingBit(func_2()), arg_0), arg_2), true, true);
    global2 = array<vec3<f32>, 15>();
    var var_1 = Struct_2(arg_2.d.a, arg_2.d.b, arg_2.d.c, _wgslsmith_mod_i32(~u_input.d, u_input.d >> ((min(u_input.a.x, arg_0) & _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 67559u, 0u), vec3<u32>(arg_0, u_input.c.x, u_input.b.x))) % 32u)), _wgslsmith_div_vec4_f32(vec4<f32>(-1276f, 263f, arg_2.e.x, _wgslsmith_f_op_f32(arg_2.d.e.x - 851f)), _wgslsmith_div_vec4_f32(arg_2.d.e, arg_2.d.e)));
    var_1 = Struct_2(arg_2.d.a, Struct_1(arg_2.d.a.a), arg_2.d.a, ~u_input.d, arg_2.d.e);
    return Struct_1(firstLeadingBit(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(var_1.c.a, vec3<i32>(-1892i, arg_2.c.x, 60477i)), var_1.a.a)) >> (countOneBits(u_input.a >> (abs(u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    var var_0 = arg_2.b;
    var var_1 = global1[_wgslsmith_index_u32(~u_input.b.x, 28u)];
    var var_2 = 0i < arg_2.c.a.x;
    var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(955f, 2067f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1081f * 827f))))), arg_0, vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, 1i, 2147483647i, -1i), vec4<i32>(0i, var_0.a.x, arg_2.d, -12344i)), _wgslsmith_add_i32(1i, arg_2.c.a.x)), ~var_1.d.b.a.x) << (u_input.b.wy % vec2<u32>(32u)), var_1.d, var_1.e);
    let var_3 = arg_2;
    return countOneBits(~(~(~6620u)));
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: vec2<f32>, arg_3: f32) -> bool {
    let var_0 = Struct_3(-1000f, min(i32(-1i) * -1i, arg_0.c.x | u_input.d), vec2<i32>(u_input.d, _wgslsmith_clamp_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(72297i, 2147483647i, -3089i, arg_0.d.c.a.x), vec4<i32>(28003i, arg_0.b, 11854i, -1i)), _wgslsmith_add_i32(-1i, arg_0.d.c.a.x) & _wgslsmith_clamp_i32(2147483647i, -56707i, -54449i), select(-3905i << (u_input.c.x % 32u), u_input.d, all(vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(arg_1, 7u)]))))), Struct_2(func_1(1u, !all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], false, false, true)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.zzy, vec3<u32>(31697u, 0u, 0u) << (vec3<u32>(u_input.c.x, u_input.b.x, 0u) % vec3<u32>(32u))), 28u)]), Struct_1(-abs(vec3<i32>(23265i, u_input.d, u_input.d))), func_1(0u, true, global1[_wgslsmith_index_u32(~21427u, 28u)]), 39315i, arg_0.d.e), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(arg_2)))))));
    global0 = array<bool, 7>();
    var var_1 = var_0.e.x;
    var var_2 = -13181i;
    var var_3 = func_1(~(arg_1 ^ 1u), all(select(!vec2<bool>(global0[_wgslsmith_index_u32(18518u, 7u)], true), vec2<bool>(!global0[_wgslsmith_index_u32(100807u, 7u)], global0[_wgslsmith_index_u32(arg_1, 7u)] | global0[_wgslsmith_index_u32(4294967295u, 7u)]), all(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(17521u, 7u)])))), Struct_3(929f, -(i32(-1i) * -30306i) ^ ~arg_0.d.d, var_0.d.a.a.yx, arg_0.d, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.e.x, _wgslsmith_f_op_f32(arg_2.x - 297f))))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec3<bool>(func_5(global1[_wgslsmith_index_u32(72492u, 28u)], func_4(1i, func_1(100813u, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], Struct_3(-1083f, 1i, vec2<i32>(u_input.d, u_input.d), Struct_2(Struct_1(vec3<i32>(0i, u_input.d, -2147483647i)), Struct_1(vec3<i32>(u_input.d, 1i, u_input.d)), Struct_1(vec3<i32>(-2147483647i, u_input.d, 1i)), 22715i, vec4<f32>(-1000f, 1500f, 1307f, -1000f)), vec2<f32>(-331f, -401f))), Struct_2(Struct_1(vec3<i32>(-2147483647i, u_input.d, u_input.d)), Struct_1(vec3<i32>(u_input.d, u_input.d, -27159i)), Struct_1(vec3<i32>(-33537i, 14657i, u_input.d)), u_input.d, vec4<f32>(1638f, 303f, 552f, -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -432f) - vec2<f32>(-999f, -840f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1983f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), global0[_wgslsmith_index_u32(~func_4(u_input.d & u_input.d, Struct_1(vec3<i32>(u_input.d, u_input.d, u_input.d)), Struct_2(Struct_1(vec3<i32>(u_input.d, 13782i, u_input.d)), Struct_1(vec3<i32>(u_input.d, -1i, -2147483647i)), Struct_1(vec3<i32>(-2147483647i, u_input.d, u_input.d)), 2147483647i, vec4<f32>(1516f, 827f, 140f, 208f))), 7u)], true));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1460f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1076f, -1560f, false))))))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(min(-2463f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-665f - 1106f) * -598f))), i32(-1i) * -19698i, abs(-(vec2<i32>(u_input.d, u_input.d) << (u_input.c.yz % vec2<u32>(32u)))), Struct_2(func_1(~56832u, all(select(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), vec3<bool>(global0[_wgslsmith_index_u32(55463u, 7u)], false, false), global0[_wgslsmith_index_u32(u_input.c.x, 7u)])), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, u_input.b.x), 28u)]), Struct_1(max(vec3<i32>(u_input.d, 0i, 59666i), vec3<i32>(0i, 2315i, -1i)) | -vec3<i32>(u_input.d, u_input.d, 1i)), Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(49558i, 38630i, u_input.d), vec3<i32>(u_input.d, u_input.d, u_input.d)), vec3<i32>(-2147483647i, u_input.d, -1i))), abs(u_input.d), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-216f, -1089f, 3068f, _wgslsmith_f_op_f32(960f + 428f))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1618f, -143f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1178f * -346f))), ~u_input.c.x == ~33647u))));
    let var_3 = -815f;
    global2 = array<vec3<f32>, 15>();
    let var_4 = ~vec4<i32>(abs(~u_input.d), _wgslsmith_mult_i32(firstTrailingBit(var_2.b) >> ((u_input.b.x ^ 6656u) % 32u), var_2.d.c.a.x), var_2.b, firstLeadingBit(firstTrailingBit(-48i)));
    let var_5 = func_5(Struct_3(var_3, -u_input.d & -(var_4.x & var_2.b), ~(~vec2<i32>(var_4.x, u_input.d)), Struct_2(var_2.d.a, Struct_1(var_4.www), func_1(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.b.x, 0u, 48842u)), global0[_wgslsmith_index_u32(u_input.b.x, 7u)] | true, Struct_3(621f, -19702i, var_2.c, Struct_2(var_2.d.a, var_2.d.a, var_2.d.c, u_input.d, var_2.d.e), vec2<f32>(-304f, var_2.d.e.x))), i32(-1i) * -u_input.d, var_2.d.e), vec2<f32>(_wgslsmith_f_op_f32(-var_2.e.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2119f), _wgslsmith_f_op_f32(-var_2.e.x)))), 1u, vec2<f32>(_wgslsmith_f_op_f32(-1304f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e.x * var_3))), var_2.e.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(ceil(var_3))) * _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1488f - var_3) - var_3)))));
    var var_6 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(0u, 15u)]);
}

