struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec3<u32>(42168u, 4419u, 1u), vec3<bool>(true, false, true), vec4<f32>(-2148f, -456f, 1227f, -216f), vec3<f32>(-1149f, 104f, 131f)), vec4<bool>(true, true, false, true), vec4<i32>(-35602i, 6331i, 0i, 0i), vec2<i32>(2147483647i, 0i)), Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec3<u32>(63962u, 40046u, 4294967295u), vec3<bool>(false, true, false), vec4<f32>(-561f, -842f, -149f, 258f), vec3<f32>(129f, 522f, 198f)), vec4<bool>(false, false, true, true), vec4<i32>(2147483647i, 0i, -34246i, -11730i), vec2<i32>(-24410i, i32(-2147483648))), Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec3<u32>(4294967295u, 58944u, 5038u), vec3<bool>(true, true, false), vec4<f32>(-2670f, 153f, 561f, 406f), vec3<f32>(-748f, 551f, -212f)), vec4<bool>(true, true, true, false), vec4<i32>(34800i, 0i, 13057i, -1i), vec2<i32>(-32667i, -61704i)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec3<u32>(0u, 53106u, 106241u), vec3<bool>(false, true, true), vec4<f32>(-547f, -685f, -839f, -417f), vec3<f32>(658f, -231f, -1000f)), vec4<bool>(false, true, false, false), vec4<i32>(1i, 2147483647i, -1i, 1i), vec2<i32>(-1i, i32(-2147483648))), Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec3<u32>(0u, 1u, 56311u), vec3<bool>(true, true, true), vec4<f32>(-1658f, 317f, 557f, -1623f), vec3<f32>(1147f, 847f, 375f)), vec4<bool>(false, false, false, true), vec4<i32>(i32(-2147483648), -31164i, i32(-2147483648), 1i), vec2<i32>(2147483647i, i32(-2147483648))), Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec3<u32>(73122u, 4765u, 1u), vec3<bool>(true, true, true), vec4<f32>(-539f, 848f, -323f, -1065f), vec3<f32>(2329f, 346f, 367f)), vec4<bool>(false, true, true, false), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), -21265i), vec2<i32>(i32(-2147483648), 27859i)), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec3<u32>(0u, 39729u, 4294967295u), vec3<bool>(false, true, false), vec4<f32>(-236f, 1000f, 766f, -241f), vec3<f32>(893f, -1003f, 1037f)), vec4<bool>(false, false, false, true), vec4<i32>(49606i, 1i, 1i, 1i), vec2<i32>(-45919i, -1i)), Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec3<u32>(0u, 1u, 0u), vec3<bool>(true, false, false), vec4<f32>(-451f, 354f, -793f, -273f), vec3<f32>(486f, -1498f, -793f)), vec4<bool>(true, true, false, true), vec4<i32>(-5647i, i32(-2147483648), i32(-2147483648), 21626i), vec2<i32>(2832i, 10725i)), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec3<u32>(1u, 4294967295u, 30029u), vec3<bool>(true, false, true), vec4<f32>(-1300f, -620f, -228f, -669f), vec3<f32>(-498f, -190f, -433f)), vec4<bool>(false, false, true, true), vec4<i32>(0i, -1i, 1i, 21115i), vec2<i32>(0i, -1i)), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec3<u32>(21647u, 0u, 4294967295u), vec3<bool>(true, true, true), vec4<f32>(1234f, 1000f, -1268f, -1000f), vec3<f32>(-1764f, 1013f, 1000f)), vec4<bool>(true, false, false, false), vec4<i32>(-14507i, 1i, -1i, 2147483647i), vec2<i32>(46339i, i32(-2147483648))), Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec3<u32>(1u, 53917u, 13868u), vec3<bool>(false, true, true), vec4<f32>(1023f, 1545f, 717f, -1000f), vec3<f32>(1377f, -1062f, 516f)), vec4<bool>(false, true, false, false), vec4<i32>(2147483647i, 0i, -17286i, -1i), vec2<i32>(-15056i, 28324i)), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec3<u32>(4294967295u, 0u, 5446u), vec3<bool>(true, true, true), vec4<f32>(-1648f, -779f, -596f, -768f), vec3<f32>(744f, 146f, -1307f)), vec4<bool>(false, true, true, false), vec4<i32>(-1i, 33292i, 3287i, i32(-2147483648)), vec2<i32>(846i, i32(-2147483648))), Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec3<u32>(4294967295u, 70916u, 17236u), vec3<bool>(true, true, false), vec4<f32>(1076f, 1844f, 110f, 789f), vec3<f32>(2435f, 212f, -1615f)), vec4<bool>(false, false, false, false), vec4<i32>(-13738i, 18311i, -4214i, 18943i), vec2<i32>(2147483647i, -137i)), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec3<u32>(45522u, 0u, 126138u), vec3<bool>(true, true, true), vec4<f32>(191f, -688f, 1000f, -715f), vec3<f32>(790f, -439f, -1000f)), vec4<bool>(false, false, false, true), vec4<i32>(21562i, 1i, -17897i, -1i), vec2<i32>(-1i, -27253i)), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec3<u32>(0u, 136659u, 4294967295u), vec3<bool>(true, true, true), vec4<f32>(-1227f, -325f, 161f, -1220f), vec3<f32>(1078f, -756f, 535f)), vec4<bool>(false, false, true, true), vec4<i32>(-16759i, 24301i, -33173i, 2147483647i), vec2<i32>(i32(-2147483648), -18480i)), Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec3<u32>(18435u, 26465u, 72138u), vec3<bool>(true, true, true), vec4<f32>(365f, 2148f, -1563f, 2048f), vec3<f32>(900f, -616f, 394f)), vec4<bool>(false, true, true, false), vec4<i32>(2147483647i, 2147483647i, 1i, -16304i), vec2<i32>(-13878i, 0i)), Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec3<u32>(1u, 33913u, 4294967295u), vec3<bool>(true, true, false), vec4<f32>(-930f, 3056f, -1588f, -887f), vec3<f32>(818f, 832f, -1694f)), vec4<bool>(true, false, false, false), vec4<i32>(i32(-2147483648), 37982i, 26623i, i32(-2147483648)), vec2<i32>(-11340i, -1i)), Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec3<u32>(1463u, 25299u, 4294967295u), vec3<bool>(false, true, true), vec4<f32>(609f, -592f, -1834f, 1000f), vec3<f32>(-1150f, -125f, -236f)), vec4<bool>(false, true, true, false), vec4<i32>(-660i, 2147483647i, 29613i, -28062i), vec2<i32>(35991i, 2348i)), Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec3<u32>(41759u, 5760u, 1u), vec3<bool>(false, false, false), vec4<f32>(-1649f, -1081f, -670f, 748f), vec3<f32>(-1429f, -161f, 1557f)), vec4<bool>(true, true, true, true), vec4<i32>(2147483647i, 2147483647i, -47949i, 6718i), vec2<i32>(0i, 27211i)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec3<u32>(56266u, 44462u, 57481u), vec3<bool>(true, false, true), vec4<f32>(-448f, 234f, -690f, -304f), vec3<f32>(-1238f, 634f, 201f)), vec4<bool>(true, false, true, false), vec4<i32>(-10974i, 60620i, -5703i, i32(-2147483648)), vec2<i32>(77326i, 0i)), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec3<u32>(1u, 1u, 10721u), vec3<bool>(true, true, true), vec4<f32>(-476f, -1000f, -1000f, 432f), vec3<f32>(-1404f, 1240f, -560f)), vec4<bool>(false, false, true, false), vec4<i32>(16244i, i32(-2147483648), -1i, -1i), vec2<i32>(1i, 1i)), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec3<u32>(4294967295u, 32569u, 1598u), vec3<bool>(true, true, true), vec4<f32>(1089f, -2362f, -455f, 1063f), vec3<f32>(-724f, 1379f, 184f)), vec4<bool>(false, true, true, true), vec4<i32>(-31832i, 1i, -6443i, 1i), vec2<i32>(-30906i, -24045i)), Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec3<u32>(1u, 4294967295u, 77059u), vec3<bool>(true, true, false), vec4<f32>(-391f, -524f, -674f, -1000f), vec3<f32>(896f, 1020f, 731f)), vec4<bool>(false, false, true, true), vec4<i32>(-27097i, 1i, 3160i, 6173i), vec2<i32>(1i, -1i)), Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec3<u32>(22667u, 0u, 0u), vec3<bool>(false, true, true), vec4<f32>(-942f, -597f, -120f, -1000f), vec3<f32>(-617f, -956f, 248f)), vec4<bool>(true, true, true, false), vec4<i32>(-9417i, 17834i, -1i, -29462i), vec2<i32>(0i, -8380i)));

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, true, true, true), vec3<u32>(1u, 0u, 4294967295u), vec3<bool>(true, false, true), vec4<f32>(1000f, 306f, 447f, -504f), vec3<f32>(-1164f, 256f, 530f));

var<private> global2: vec4<bool>;

var<private> global3: array<i32, 23>;

var<private> global4: Struct_1 = Struct_1(vec4<bool>(true, true, false, true), vec3<u32>(4294967295u, 56884u, 26419u), vec3<bool>(true, false, false), vec4<f32>(2622f, 737f, -381f, 125f), vec3<f32>(1336f, 488f, 1282f));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: f32) -> f32 {
    var var_0 = arg_1.a.b.x ^ 30503u;
    let var_1 = Struct_1(vec4<bool>(all(arg_1.b.zyy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(340f - arg_1.a.e.x)) == _wgslsmith_f_op_f32(arg_1.a.d.x + _wgslsmith_f_op_f32(-670f - global1.d.x)), 7510i > arg_1.d.x, arg_0), ~vec3<u32>(4294967295u, 1u << (firstTrailingBit(global1.b.x) % 32u), firstLeadingBit(global1.b.x)), select(arg_1.b.xxx, global2.wxw, all(select(!global1.a, !vec4<bool>(global1.a.x, global1.c.x, global1.c.x, arg_0), !global1.a))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.d.x) * -2377f))), -2566f, global1.d.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-534f + -287f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.d.x, global4.e.x, -371f), vec3<f32>(global1.d.x, global1.d.x, 1421f), global2.yyx)) - _wgslsmith_div_vec3_f32(vec3<f32>(-1234f, 1194f, 400f), vec3<f32>(219f, arg_2, 921f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1267f, 241f))))));
    var var_2 = _wgslsmith_div_f32(366f, var_1.d.x);
    let var_3 = arg_1.c.yw;
    var_0 = firstLeadingBit(~firstLeadingBit(~(~1u)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global1.e.x)), arg_1.a.d.x));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: u32) -> Struct_1 {
    var var_0 = global1.e.x;
    let var_1 = ~_wgslsmith_add_vec3_i32(vec3<i32>(-(-1i | global3[_wgslsmith_index_u32(0u, 23u)]), -global3[_wgslsmith_index_u32(~arg_2, 23u)], 1i), vec3<i32>(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 19606i, 0i, 0i), vec4<i32>(global3[_wgslsmith_index_u32(global4.b.x, 23u)], 56740i, 15433i, global3[_wgslsmith_index_u32(global4.b.x, 23u)]))), _wgslsmith_dot_vec2_i32(-u_input.a.zy, -vec2<i32>(arg_1, -35493i)), 13692i));
    let var_2 = false;
    var var_3 = global0[_wgslsmith_index_u32(firstLeadingBit(global1.b.x), 24u)];
    var var_4 = var_3.a.c;
    return Struct_1(vec4<bool>(true, arg_0, _wgslsmith_f_op_f32(func_3(all(global1.a), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, var_3.a.b.x), 24u)], _wgslsmith_f_op_f32(select(global1.d.x, global1.d.x, false)))) <= -1016f, select(var_3.a.d.x < _wgslsmith_f_op_f32(ceil(-605f)), all(vec2<bool>(false, global1.c.x)) && (arg_1 >= -659i), true)), vec3<u32>(_wgslsmith_add_u32(var_3.a.b.x, 47617u) ^ ~103183u, arg_2, abs(1u >> (_wgslsmith_dot_vec3_u32(var_3.a.b, vec3<u32>(global1.b.x, arg_2, 0u)) % 32u))), select(!select(global2.yzx, global4.a.yzw, !vec3<bool>(global2.x, global1.a.x, global1.c.x)), vec3<bool>(false, true, !global2.x || var_2), select(!(!global1.c), select(global4.a.wzz, var_3.a.a.wxy, vec3<bool>(true, true, true)), !any(vec4<bool>(global4.a.x, global1.a.x, arg_0, false)))), vec4<f32>(var_3.a.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(583f - var_3.a.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(731f + 336f)), _wgslsmith_f_op_f32(func_3(arg_0, Struct_2(var_3.a, global4.a, var_3.c, -vec2<i32>(-2147483647i, u_input.b.x)), global1.e.x))), global4.d.wzz);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    global3 = array<i32, 23>();
    global1 = Struct_1(func_2(false, 48790i, ~(~(59886u | global1.b.x))).a, vec3<u32>(~arg_1.x, 27011u, arg_1.x) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 1u, 0u, 0u)), ~vec4<u32>(111161u, 90288u, 6525u, 1u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 67012u, 13660u, 0u), reverseBits(vec4<u32>(30478u, global4.b.x, 70437u, global4.b.x))), ~(~0u)) % vec3<u32>(32u)), global4.c, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.e.x, _wgslsmith_f_op_f32(trunc(226f))) * 1864f), _wgslsmith_f_op_f32(func_3(!global1.c.x | global1.a.x, Struct_2(Struct_1(vec4<bool>(global4.a.x, false, global1.a.x, arg_3.a.x), vec3<u32>(global4.b.x, 38333u, arg_1.x), vec3<bool>(global2.x, arg_0.x, global4.c.x), vec4<f32>(arg_3.d.x, global4.e.x, 364f, -639f), arg_3.e), global1.a, abs(vec4<i32>(u_input.c.x, u_input.b.x, u_input.a.x, -17055i)), u_input.b ^ u_input.a.xx), 563f)), _wgslsmith_f_op_f32(arg_2 - -280f), -466f), vec3<f32>(-944f, func_2(!global1.c.x, -_wgslsmith_add_i32(u_input.a.x, -19753i), ~(~arg_1.x)).e.x, _wgslsmith_f_op_f32(-arg_3.e.x)));
    let var_0 = firstTrailingBit(abs(37153i));
    global2 = select(func_2(any(vec2<bool>(u_input.b.x == -30845i, false)), -global3[_wgslsmith_index_u32(global1.b.x, 23u)], global4.b.x).a, !select(global4.a, arg_3.a, arg_3.a), vec4<bool>(true, true, select(!arg_3.c.x, any(global1.c.yx), true), any(vec4<bool>(true, any(arg_3.a.zxw), true, global1.c.x))));
    global3 = array<i32, 23>();
    return Struct_2(arg_3, arg_3.a, vec4<i32>(abs(u_input.c.x), global3[_wgslsmith_index_u32(firstLeadingBit(reverseBits(55431u)), 23u)], 37172i, var_0), ~firstTrailingBit(~(-u_input.c.zz)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    let var_0 = !all(vec2<bool>(!arg_0.a.a.x, !global4.c.x)) | false;
    var var_1 = i32(-1i) * -_wgslsmith_clamp_i32(abs(~27948i), _wgslsmith_dot_vec3_i32(select(vec3<i32>(arg_1.c.x, 10000i, 1i), u_input.c, arg_1.a.a.zyx), countOneBits(u_input.a)), _wgslsmith_mod_i32(-5910i, 0i & global3[_wgslsmith_index_u32(arg_0.a.b.x, 23u)]));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1718f) - -682f)));
    var var_3 = func_4(select(arg_1.a.a.zz, arg_1.b.yx, !func_4(vec2<bool>(global1.a.x, false), global1.b.xz, _wgslsmith_f_op_f32(-770f - -1418f), Struct_1(vec4<bool>(global1.c.x, global4.c.x, global1.a.x, true), global1.b, vec3<bool>(false, true, var_0), global1.d, vec3<f32>(var_2, 1569f, arg_1.a.d.x))).b.yz), ~global1.b.xz, arg_0.a.e.x, func_4(!vec2<bool>(all(global4.c.yy), select(var_0, false, false)), global4.b.yy, var_2, arg_1.a).a).a;
    let var_4 = func_4(global2.xx, ~abs(_wgslsmith_add_vec2_u32(func_2(var_0, 1754i, 1u).b.xy, vec2<u32>(global1.b.x, 17261u))), _wgslsmith_f_op_f32(-arg_1.a.d.x), Struct_1(select(vec4<bool>(arg_1.a.c.x, global4.c.x, all(arg_0.a.a), u_input.a.x != u_input.c.x), vec4<bool>(any(vec3<bool>(global2.x, false, false)), global2.x, var_0, global2.x), true), vec3<u32>(var_3.b.x & 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(32045u, arg_1.a.b.x, arg_0.a.b.x, global4.b.x), abs(vec4<u32>(73624u, 13769u, global4.b.x, 15296u))), _wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, 8136u), arg_1.a.b.x)), !select(!global4.c, func_4(var_3.c.xy, global4.b.xz, var_2, Struct_1(vec4<bool>(false, global4.c.x, global1.c.x, false), arg_0.a.b, vec3<bool>(global1.c.x, global4.c.x, arg_0.a.c.x), arg_0.a.d, vec3<f32>(var_2, -2025f, -146f))).b.xwz, vec3<bool>(true, var_3.c.x, true)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(739f, -549f, arg_1.a.e.x, 250f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.x - -417f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1479f * global4.e.x) + 927f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1419f)))));
    return Struct_2(arg_1.a, vec4<bool>(select(select(arg_0.b.x, true, select(true, true, var_4.a.c.x)), !any(vec2<bool>(var_4.b.x, global4.a.x)), !all(arg_0.a.a.zw)), true, true, !(!(global4.d.x != 1236f))), vec4<i32>(1i, ~(-1i), abs((arg_1.d.x | u_input.b.x) & -19849i), _wgslsmith_dot_vec4_i32(-arg_0.c << (min(vec4<u32>(3015u, 37800u, 25339u, 11591u), vec4<u32>(global4.b.x, var_3.b.x, 0u, global4.b.x)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, global3[_wgslsmith_index_u32(3317u, 23u)], var_4.c.x), vec4<i32>(arg_0.c.x, u_input.c.x, var_4.d.x, u_input.b.x)) & select(vec4<i32>(var_4.d.x, -1357i, u_input.a.x, arg_1.d.x), vec4<i32>(1i, 6356i, arg_1.c.x, u_input.c.x), global4.a))), max(arg_0.d, _wgslsmith_sub_vec2_i32(countOneBits(arg_1.d), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.b.x), vec2<i32>(arg_1.c.x, var_4.c.x)))));
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: f32, arg_3: f32) -> i32 {
    global3 = array<i32, 23>();
    global3 = array<i32, 23>();
    global2 = !select(global4.a, vec4<bool>(select(arg_0.a.a.x, true, false), any(func_4(global2.zz, vec2<u32>(94589u, 0u), -1777f, arg_0.a).a.a), true, (false && global2.x) | false), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -800f))) == _wgslsmith_f_op_f32(step(-386f, arg_3)));
    global3 = array<i32, 23>();
    var var_0 = arg_0.a;
    return select(-(~max(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.a.x, arg_0.c.x), vec3<i32>(arg_0.d.x, u_input.a.x, arg_0.c.x)))), u_input.b.x, var_0.b.x <= abs(22341u));
}

fn func_7(arg_0: i32) -> Struct_1 {
    global3 = array<i32, 23>();
    let var_0 = func_4(vec2<bool>((_wgslsmith_f_op_f32(-global4.e.x) > global1.e.x) && true, false), _wgslsmith_mod_vec2_u32(vec2<u32>(abs(_wgslsmith_mod_u32(1u, global1.b.x)), firstTrailingBit(global1.b.x)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), _wgslsmith_mult_vec2_u32(global4.b.yz, global4.b.yx)), 1u)), _wgslsmith_f_op_f32(sign(1f)), func_4(!select(!global1.c.yx, global4.a.zy, true), select(global4.b.zy, firstTrailingBit(global1.b.xy), global4.a.zy) ^ abs(~global1.b.xy), global1.e.x, func_5(func_5(Struct_2(Struct_1(vec4<bool>(global2.x, true, global1.c.x, global1.a.x), global4.b, global4.a.xyw, global4.d, global1.d.wyw), global4.a, vec4<i32>(u_input.a.x, 48699i, -22385i, arg_0), vec2<i32>(arg_0, -2147483647i)), Struct_2(Struct_1(global4.a, vec3<u32>(0u, 4294967295u, global1.b.x), global4.c, global1.d, global1.e), vec4<bool>(global4.c.x, false, false, true), vec4<i32>(9355i, u_input.c.x, -36168i, global3[_wgslsmith_index_u32(46791u, 23u)]), vec2<i32>(u_input.a.x, -2147483647i))), func_5(Struct_2(Struct_1(global4.a, global4.b, vec3<bool>(true, true, false), global1.d, global4.d.yzz), global1.a, vec4<i32>(u_input.a.x, global3[_wgslsmith_index_u32(global4.b.x, 23u)], -1i, arg_0), u_input.b), Struct_2(Struct_1(global1.a, vec3<u32>(67574u, global4.b.x, global4.b.x), global2.yww, vec4<f32>(global1.e.x, global1.e.x, -1428f, global4.e.x), global4.e), vec4<bool>(global1.a.x, true, false, global4.a.x), vec4<i32>(0i, -9943i, arg_0, 0i), vec2<i32>(0i, global3[_wgslsmith_index_u32(global4.b.x, 23u)])))).a).a).a.d;
    var var_1 = u_input.b;
    var var_2 = global2.x;
    let var_3 = func_2(global1.a.x, ~var_1.x, _wgslsmith_mod_u32(1u, global1.b.x));
    return Struct_1(vec4<bool>(false, global1.c.x, false, func_4(select(func_4(vec2<bool>(false, global4.c.x), vec2<u32>(4294967295u, var_3.b.x), var_0.x, Struct_1(global4.a, var_3.b, global4.a.zzy, var_3.d, vec3<f32>(var_3.d.x, global1.d.x, var_0.x))).a.a.zy, !vec2<bool>(true, global1.a.x), true), ~vec2<u32>(1u, 7335u) | var_3.b.zy, _wgslsmith_f_op_f32(f32(-1f) * -902f), func_5(global0[_wgslsmith_index_u32(global1.b.x, 24u)], func_4(global2.xw, global4.b.xy, var_3.e.x, var_3)).a).b.x), ~global4.b, vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(323f + 1733f), _wgslsmith_f_op_f32(exp2(global1.e.x)), var_0.x, _wgslsmith_f_op_f32(max(-399f, var_3.e.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1485f * global1.e.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.d.x, 419f))), var_3.e.x));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>) -> vec3<u32> {
    global4 = func_7(func_6(func_5(Struct_2(Struct_1(global1.a, global4.b, vec3<bool>(global4.a.x, global4.a.x, global1.a.x), global1.d, global4.d.zxw), vec4<bool>(global1.c.x, global4.a.x, false, global4.c.x), _wgslsmith_div_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(138139u, 23u)], u_input.a.x, 6818i, global3[_wgslsmith_index_u32(17537u, 23u)]), vec4<i32>(8918i, u_input.b.x, -42679i, 1i)), u_input.b), func_4(vec2<bool>(true, true), countOneBits(global1.b.xx), _wgslsmith_f_op_f32(floor(713f)), func_2(global4.a.x, -40068i, global1.b.x))), _wgslsmith_mod_u32(select(1u, 0u, false), ~0u) >= arg_0, _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-913f)) + global1.d.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x)), _wgslsmith_div_f32(108f, 1f), false & (false && global1.c.x)))));
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -1000f, -304f) * global4.d.ywx))), global1.d.xxw);
    let var_1 = u_input.c.x;
    var var_2 = max(func_2(global1.c.x, -(~global3[_wgslsmith_index_u32(arg_0, 23u)]), _wgslsmith_sub_u32(1209u, global1.b.x)).b.x, _wgslsmith_mult_u32(~(~4294967295u), _wgslsmith_sub_u32(~abs(global1.b.x), ~0u >> (func_7(var_1).b.x % 32u))));
    global0 = array<Struct_2, 24>();
    return ~global4.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(global4.a, func_1(0u, vec2<f32>(439f, _wgslsmith_div_f32(global4.d.x, -224f))), vec3<bool>(all(vec4<bool>(false, true, false, global4.c.x)), all(global4.c), !global2.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1444f)), global4.d.x, _wgslsmith_f_op_f32(round(1026f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1717f - -432f)))), global4.d.zwy), func_4(global4.a.xw, ~(vec2<u32>(global4.b.x, 0u) << (vec2<u32>(74822u, 0u) % vec2<u32>(32u))) | ~(~global1.b.yz), global4.d.x, Struct_1(global4.a, (vec3<u32>(4294967295u, global4.b.x, global4.b.x) & vec3<u32>(0u, global1.b.x, 1u)) << (~global4.b % vec3<u32>(32u)), !func_7(2147483647i).a.yxx, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global4.d.x, -629f, global4.d.x, global1.d.x))))), _wgslsmith_f_op_vec3_f32(-global1.d.xxw))).b, ~(-reverseBits(~vec4<i32>(global3[_wgslsmith_index_u32(global4.b.x, 23u)], global3[_wgslsmith_index_u32(4294967295u, 23u)], 0i, global3[_wgslsmith_index_u32(global4.b.x, 23u)]))), vec2<i32>(-_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(76724u, 23u)], 2147483647i) | _wgslsmith_add_i32(_wgslsmith_mod_i32(1i, -61613i), u_input.a.x), 43466i));
    let var_1 = func_5(func_4(func_7(_wgslsmith_mult_i32(var_0.d.x, -global3[_wgslsmith_index_u32(var_0.a.b.x, 23u)])).a.zy, global1.b.xz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1045f - -695f) + _wgslsmith_f_op_f32(-global4.e.x)), func_5(func_5(func_4(var_0.b.wx, vec2<u32>(var_0.a.b.x, 0u), global4.e.x, var_0.a), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.b.x, 1u, var_0.a.b.x, global4.b.x), vec4<u32>(global1.b.x, 1u, 1u, 63304u)), 24u)]), func_5(Struct_2(Struct_1(vec4<bool>(global4.c.x, false, false, true), vec3<u32>(global4.b.x, 0u, global1.b.x), vec3<bool>(false, false, var_0.b.x), global1.d, var_0.a.e), global1.a, vec4<i32>(u_input.c.x, -2147483647i, 19843i, -36537i), u_input.c.zy), func_5(Struct_2(var_0.a, vec4<bool>(var_0.a.a.x, false, global1.a.x, global1.c.x), vec4<i32>(u_input.b.x, 1i, 13620i, -1903i), var_0.d), global0[_wgslsmith_index_u32(22678u, 24u)]))).a), Struct_2(func_5(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global4.b.x, var_0.a.b.x), 24u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(44891u, var_0.a.b.x, 1u), vec3<u32>(21999u, global4.b.x, 0u)), var_0.a.b), 24u)]).a, vec4<bool>(!global1.a.x || var_0.a.c.x, !func_7(global3[_wgslsmith_index_u32(global1.b.x, 23u)]).a.x, all(global1.a), all(!global4.a)), var_0.c, vec2<i32>(~var_0.c.x, global3[_wgslsmith_index_u32(abs(abs(1u)), 23u)])));
    let var_2 = vec4<u32>(54242u, ~var_1.a.b.x, var_0.a.b.x, ~(~var_1.a.b.x)) >> (vec4<u32>(11488u | (global1.b.x & firstTrailingBit(var_0.a.b.x)), _wgslsmith_clamp_u32(~_wgslsmith_div_u32(global4.b.x, 1u), firstLeadingBit(global4.b.x) & _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.b.x, 0u, 1u, 0u), vec4<u32>(0u, 1u, 106487u, 10941u)), _wgslsmith_clamp_u32(var_1.a.b.x, ~0u, global4.b.x ^ global4.b.x)), 0u, var_0.a.b.x) % vec4<u32>(32u));
    let var_3 = var_0.a.b.x;
    global4 = Struct_1(vec4<bool>(global2.x, all(var_0.a.a), any(func_7(0i).a.xy), true), global1.b, select(vec3<bool>(true, func_7(-global3[_wgslsmith_index_u32(23315u, 23u)]).c.x, true), select(global4.c, global2.zxw, false), var_1.b.yww), _wgslsmith_div_vec4_f32(func_7(0i).d, _wgslsmith_f_op_vec4_f32(var_0.a.d + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(452f, global4.e.x, -1264f, var_0.a.d.x), vec4<f32>(global1.d.x, var_0.a.d.x, global1.e.x, -381f), vec4<bool>(global2.x, global1.c.x, global1.a.x, global2.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global1.e))))));
    global1 = func_7(u_input.a.x << (_wgslsmith_dot_vec4_u32(var_2 | vec4<u32>(var_2.x, 42324u, global1.b.x, var_0.a.b.x), (vec4<u32>(global1.b.x, var_2.x, var_2.x, 1u) & var_2) | select(var_2, var_2, vec4<bool>(global4.c.x, var_1.b.x, var_1.a.a.x, false))) % 32u));
    var var_4 = (0u & ~var_2.x) > ~68957u;
    let var_5 = var_1.a.b.x;
    var var_6 = !(!var_1.b.zww);
    let x = u_input.a;
    s_output = StorageBuffer(min(~abs(var_2.x), 1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.d.zx) - global1.e.xy));
}

