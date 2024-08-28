struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(Struct_1(true, vec3<bool>(false, false, true), 1u, vec3<i32>(1i, 0i, 0i)), vec4<f32>(-443f, -569f, 326f, -170f), Struct_1(true, vec3<bool>(false, false, false), 3586u, vec3<i32>(-24487i, i32(-2147483648), 2147483647i)), 229f, Struct_1(false, vec3<bool>(false, true, true), 4294967295u, vec3<i32>(-1815i, -77085i, 2147483647i))), Struct_2(Struct_1(true, vec3<bool>(false, true, true), 5295u, vec3<i32>(2147483647i, 2147483647i, 6548i)), vec4<f32>(-419f, -1029f, -1573f, -1321f), Struct_1(true, vec3<bool>(true, true, true), 0u, vec3<i32>(i32(-2147483648), 2147483647i, 1i)), 1431f, Struct_1(true, vec3<bool>(false, true, false), 4294967295u, vec3<i32>(22099i, -4407i, -16257i))), Struct_2(Struct_1(true, vec3<bool>(false, false, false), 1u, vec3<i32>(-41902i, 2147483647i, 0i)), vec4<f32>(250f, -617f, 1000f, -496f), Struct_1(false, vec3<bool>(false, false, true), 0u, vec3<i32>(-21815i, -1i, 20617i)), -633f, Struct_1(true, vec3<bool>(true, false, false), 1u, vec3<i32>(-37426i, i32(-2147483648), 15702i))), Struct_2(Struct_1(true, vec3<bool>(true, false, false), 21930u, vec3<i32>(-2364i, 1i, 48226i)), vec4<f32>(-834f, 382f, -769f, -2419f), Struct_1(true, vec3<bool>(false, true, false), 6335u, vec3<i32>(-8685i, i32(-2147483648), -8514i)), 1681f, Struct_1(true, vec3<bool>(false, true, false), 0u, vec3<i32>(1i, i32(-2147483648), 2147483647i))), Struct_2(Struct_1(true, vec3<bool>(true, false, false), 19087u, vec3<i32>(28447i, 46460i, 1i)), vec4<f32>(277f, -191f, 232f, 105f), Struct_1(true, vec3<bool>(true, false, false), 29553u, vec3<i32>(i32(-2147483648), -61750i, -4430i)), 286f, Struct_1(false, vec3<bool>(false, false, true), 0u, vec3<i32>(1i, -43505i, 0i))), Struct_2(Struct_1(true, vec3<bool>(false, false, true), 3089u, vec3<i32>(-1869i, 1i, 39271i)), vec4<f32>(-1000f, 111f, -174f, 147f), Struct_1(false, vec3<bool>(false, false, true), 1u, vec3<i32>(-5396i, 4644i, 0i)), -730f, Struct_1(false, vec3<bool>(false, true, false), 0u, vec3<i32>(43925i, i32(-2147483648), 16075i))), Struct_2(Struct_1(true, vec3<bool>(false, false, true), 31225u, vec3<i32>(i32(-2147483648), 1i, -49761i)), vec4<f32>(-1000f, -1000f, -582f, 1780f), Struct_1(false, vec3<bool>(true, true, true), 34207u, vec3<i32>(-8151i, 31419i, 1i)), 1000f, Struct_1(true, vec3<bool>(true, false, true), 54757u, vec3<i32>(-4620i, 6576i, i32(-2147483648)))), Struct_2(Struct_1(false, vec3<bool>(false, false, true), 6626u, vec3<i32>(10155i, 0i, -1i)), vec4<f32>(365f, 549f, -1139f, 568f), Struct_1(false, vec3<bool>(false, true, true), 4294967295u, vec3<i32>(-2980i, -87569i, 27954i)), 1053f, Struct_1(false, vec3<bool>(true, false, false), 4294967295u, vec3<i32>(1i, -29225i, 1i))), Struct_2(Struct_1(true, vec3<bool>(false, false, false), 20748u, vec3<i32>(-30946i, i32(-2147483648), 12814i)), vec4<f32>(-1120f, 676f, 393f, -289f), Struct_1(false, vec3<bool>(false, true, false), 19524u, vec3<i32>(-14056i, 2147483647i, 2147483647i)), -3624f, Struct_1(false, vec3<bool>(true, false, false), 4294967295u, vec3<i32>(-1i, -25483i, 2147483647i))), Struct_2(Struct_1(true, vec3<bool>(true, false, true), 21358u, vec3<i32>(i32(-2147483648), 0i, -33944i)), vec4<f32>(255f, 265f, -628f, -888f), Struct_1(false, vec3<bool>(true, true, true), 69331u, vec3<i32>(14295i, 1595i, -25965i)), -305f, Struct_1(false, vec3<bool>(true, true, false), 3958u, vec3<i32>(-1i, -1i, 16152i))), Struct_2(Struct_1(true, vec3<bool>(true, false, false), 4294967295u, vec3<i32>(-2029i, -44271i, -25137i)), vec4<f32>(-594f, 1613f, 1798f, -1447f), Struct_1(true, vec3<bool>(false, false, false), 1u, vec3<i32>(20455i, i32(-2147483648), 21601i)), -1499f, Struct_1(true, vec3<bool>(true, true, false), 0u, vec3<i32>(i32(-2147483648), -23492i, -13399i))), Struct_2(Struct_1(true, vec3<bool>(false, true, true), 63403u, vec3<i32>(1i, -1i, 31339i)), vec4<f32>(269f, 876f, -388f, -1131f), Struct_1(false, vec3<bool>(false, false, true), 1u, vec3<i32>(0i, -53810i, 2147483647i)), -440f, Struct_1(true, vec3<bool>(false, true, true), 1u, vec3<i32>(-1i, -15307i, 0i))), Struct_2(Struct_1(true, vec3<bool>(false, false, false), 4294967295u, vec3<i32>(-8278i, i32(-2147483648), 0i)), vec4<f32>(-133f, -238f, -807f, 3575f), Struct_1(true, vec3<bool>(true, false, false), 3652u, vec3<i32>(0i, 7158i, 1i)), -318f, Struct_1(false, vec3<bool>(false, false, false), 1u, vec3<i32>(2147483647i, 16378i, 2147483647i))), Struct_2(Struct_1(false, vec3<bool>(true, false, true), 25195u, vec3<i32>(i32(-2147483648), 49666i, -13000i)), vec4<f32>(760f, -992f, 728f, 1341f), Struct_1(true, vec3<bool>(false, false, false), 8778u, vec3<i32>(i32(-2147483648), -15638i, 2147483647i)), -1048f, Struct_1(false, vec3<bool>(false, false, true), 42971u, vec3<i32>(-6911i, 0i, 2147483647i))), Struct_2(Struct_1(false, vec3<bool>(true, false, true), 1u, vec3<i32>(10332i, -50i, 0i)), vec4<f32>(-148f, -449f, 757f, 473f), Struct_1(true, vec3<bool>(false, false, true), 1u, vec3<i32>(-1i, -3392i, 73267i)), 1144f, Struct_1(false, vec3<bool>(true, true, false), 12462u, vec3<i32>(-11383i, i32(-2147483648), 0i))), Struct_2(Struct_1(true, vec3<bool>(false, false, false), 1u, vec3<i32>(44246i, 31304i, 2147483647i)), vec4<f32>(966f, 393f, 156f, 1203f), Struct_1(false, vec3<bool>(true, false, false), 91713u, vec3<i32>(7112i, i32(-2147483648), i32(-2147483648))), -507f, Struct_1(true, vec3<bool>(false, false, true), 22694u, vec3<i32>(2147483647i, i32(-2147483648), -1i))), Struct_2(Struct_1(true, vec3<bool>(true, false, false), 20093u, vec3<i32>(-718i, 0i, -1i)), vec4<f32>(-1561f, 1644f, -726f, 1879f), Struct_1(false, vec3<bool>(false, false, false), 4294967295u, vec3<i32>(7632i, -40843i, -1i)), -1354f, Struct_1(false, vec3<bool>(true, false, true), 1u, vec3<i32>(1i, -1i, -55438i))), Struct_2(Struct_1(false, vec3<bool>(true, false, false), 0u, vec3<i32>(9061i, i32(-2147483648), i32(-2147483648))), vec4<f32>(982f, -206f, 436f, 234f), Struct_1(true, vec3<bool>(true, false, true), 10975u, vec3<i32>(-1i, -62385i, -1i)), -331f, Struct_1(false, vec3<bool>(true, true, false), 1u, vec3<i32>(i32(-2147483648), 1i, 0i))), Struct_2(Struct_1(false, vec3<bool>(false, false, false), 0u, vec3<i32>(-1i, i32(-2147483648), 2147483647i)), vec4<f32>(-161f, 1000f, 770f, 196f), Struct_1(false, vec3<bool>(true, true, true), 1u, vec3<i32>(0i, 3583i, 10924i)), -838f, Struct_1(false, vec3<bool>(true, true, false), 9089u, vec3<i32>(1i, -25567i, i32(-2147483648)))), Struct_2(Struct_1(true, vec3<bool>(true, false, true), 5702u, vec3<i32>(2147483647i, -67730i, 0i)), vec4<f32>(-2162f, 900f, 1017f, 819f), Struct_1(true, vec3<bool>(false, false, false), 4294967295u, vec3<i32>(-20472i, -20942i, -1i)), 571f, Struct_1(false, vec3<bool>(true, true, false), 1u, vec3<i32>(-1i, -30284i, 0i))), Struct_2(Struct_1(false, vec3<bool>(true, true, true), 0u, vec3<i32>(4277i, -27482i, 3412i)), vec4<f32>(649f, 393f, 817f, 1000f), Struct_1(true, vec3<bool>(true, true, false), 1u, vec3<i32>(-33361i, 74161i, 72815i)), -1580f, Struct_1(false, vec3<bool>(false, true, true), 30241u, vec3<i32>(2147483647i, 0i, 28364i))), Struct_2(Struct_1(false, vec3<bool>(false, false, true), 1u, vec3<i32>(-39163i, -14058i, 47724i)), vec4<f32>(-247f, 853f, -324f, -412f), Struct_1(false, vec3<bool>(false, false, true), 54670u, vec3<i32>(15177i, -54167i, i32(-2147483648))), -793f, Struct_1(true, vec3<bool>(true, true, true), 48227u, vec3<i32>(-50682i, 9155i, 1i))), Struct_2(Struct_1(false, vec3<bool>(true, false, false), 96260u, vec3<i32>(-1i, -1i, 43376i)), vec4<f32>(1000f, 1000f, -842f, 1145f), Struct_1(false, vec3<bool>(false, true, true), 0u, vec3<i32>(0i, 2147483647i, -39208i)), 248f, Struct_1(false, vec3<bool>(false, false, true), 16461u, vec3<i32>(21128i, -25902i, -1i))), Struct_2(Struct_1(false, vec3<bool>(false, true, true), 4294967295u, vec3<i32>(0i, -30192i, 36163i)), vec4<f32>(-790f, 1000f, -1000f, 1000f), Struct_1(true, vec3<bool>(false, false, true), 0u, vec3<i32>(1i, 27924i, 14955i)), 1297f, Struct_1(true, vec3<bool>(false, true, true), 0u, vec3<i32>(i32(-2147483648), -4064i, i32(-2147483648)))), Struct_2(Struct_1(true, vec3<bool>(true, false, true), 1u, vec3<i32>(-1i, i32(-2147483648), 2147483647i)), vec4<f32>(382f, -1241f, -1476f, 342f), Struct_1(true, vec3<bool>(false, false, true), 47465u, vec3<i32>(-43480i, 13697i, 26890i)), -435f, Struct_1(true, vec3<bool>(true, true, true), 43613u, vec3<i32>(i32(-2147483648), -7093i, 30265i))), Struct_2(Struct_1(false, vec3<bool>(true, false, false), 97849u, vec3<i32>(0i, i32(-2147483648), -56253i)), vec4<f32>(-1000f, -684f, 980f, -355f), Struct_1(false, vec3<bool>(true, false, false), 600u, vec3<i32>(13514i, -1i, -6527i)), -1017f, Struct_1(false, vec3<bool>(false, true, true), 1u, vec3<i32>(1i, 8237i, -63192i))), Struct_2(Struct_1(false, vec3<bool>(true, false, false), 12649u, vec3<i32>(4548i, 48230i, 1i)), vec4<f32>(-1167f, 814f, 1003f, 450f), Struct_1(true, vec3<bool>(true, false, false), 851u, vec3<i32>(-1i, 0i, -1i)), 753f, Struct_1(false, vec3<bool>(true, true, false), 73838u, vec3<i32>(1i, 17426i, -51416i))), Struct_2(Struct_1(true, vec3<bool>(false, false, true), 45407u, vec3<i32>(30246i, -22917i, 0i)), vec4<f32>(-1294f, 924f, -289f, -294f), Struct_1(false, vec3<bool>(true, true, true), 5531u, vec3<i32>(20258i, 116457i, -50954i)), -991f, Struct_1(true, vec3<bool>(true, true, false), 0u, vec3<i32>(i32(-2147483648), -54394i, 1i))), Struct_2(Struct_1(false, vec3<bool>(false, false, false), 12953u, vec3<i32>(2147483647i, -3620i, 0i)), vec4<f32>(646f, 120f, -485f, 1047f), Struct_1(true, vec3<bool>(true, true, false), 46552u, vec3<i32>(8253i, -15681i, 1i)), 558f, Struct_1(true, vec3<bool>(false, true, true), 0u, vec3<i32>(-45726i, 1i, 14931i))));

var<private> global1: array<Struct_1, 16>;

var<private> global2: Struct_2 = Struct_2(Struct_1(true, vec3<bool>(true, false, false), 4294967295u, vec3<i32>(2147483647i, -31758i, -1i)), vec4<f32>(-459f, 1251f, 389f, 423f), Struct_1(true, vec3<bool>(true, false, true), 53113u, vec3<i32>(52748i, -1i, -1i)), -603f, Struct_1(false, vec3<bool>(false, false, false), 2153u, vec3<i32>(-33266i, -10013i, i32(-2147483648))));

var<private> global3: vec4<i32>;

var<private> global4: vec4<u32> = vec4<u32>(20596u, 16332u, 29948u, 0u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: i32) -> bool {
    global3 = arg_1;
    let var_0 = arg_2.c;
    global3 = (vec4<i32>(-2147483647i, -arg_2.a.d.x, ~global2.c.d.x, 8983i) & vec4<i32>(var_0.d.x, min(arg_1.x, var_0.d.x) ^ max(25215i, var_0.d.x), _wgslsmith_mult_i32(reverseBits(global2.e.d.x), reverseBits(-2147483647i)), 1i)) | -arg_1;
    global1 = array<Struct_1, 16>();
    var var_1 = vec4<u32>(max(53966u, _wgslsmith_div_u32(~(~56017u), ~arg_0)), _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(u_input.a, global4.zw), ~32865u), global2.c.c, _wgslsmith_mult_u32(~(~44568u), _wgslsmith_clamp_u32(1u, ~0u, max(11968u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 105764u, var_0.c, arg_2.e.c), vec4<u32>(0u, 4294967295u, 31698u, 49743u))))));
    return firstLeadingBit(~(-reverseBits(var_0.d.x))) < _wgslsmith_add_i32(~1i, firstTrailingBit(abs(3977i)));
}

fn func_4(arg_0: vec2<u32>) -> vec4<f32> {
    var var_0 = vec3<i32>(-firstLeadingBit(1i), -firstTrailingBit(abs(-2147483647i)), ~global2.c.d.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(global2.b.yz * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(598f + 502f) - _wgslsmith_f_op_f32(f32(-1f) * -1330f)), _wgslsmith_div_f32(_wgslsmith_div_f32(global2.d, 952f), global2.d)), -769f));
    let var_2 = vec3<f32>(-370f, _wgslsmith_f_op_f32(2281f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d) - _wgslsmith_f_op_f32(-global2.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-451f - _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(global2.d + 1423f)))));
    global3 = select(abs(-(~vec4<i32>(25700i, var_0.x, global3.x, -13698i))), ~_wgslsmith_add_vec4_i32(abs(vec4<i32>(global2.e.d.x, global3.x, global3.x, global3.x)) & abs(vec4<i32>(global3.x, -1316i, var_0.x, 10617i)), reverseBits(~vec4<i32>(global3.x, -244i, 0i, -1i))), all(!(!select(global2.e.b.xx, vec2<bool>(global2.c.b.x, global2.c.a), global2.e.b.zy))));
    global1 = array<Struct_1, 16>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.b), vec4<f32>(-1000f, var_2.x, _wgslsmith_f_op_f32(sign(-1975f)), 187f))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1284f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_2.x, -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1944f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(f32(-1f) * -201f)), _wgslsmith_f_op_f32(-422f - _wgslsmith_div_f32(-1000f, var_2.x)), all(global2.a.b))), 933f));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(min(firstLeadingBit(u_input.a), select(abs(vec2<u32>(u_input.c, global2.a.c)), u_input.a, func_3(42713u, vec4<i32>(global3.x, global3.x, -38702i, -1i), global0[_wgslsmith_index_u32(0u, 29u)], global3.x))))), global2.b);
    var var_1 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) * _wgslsmith_f_op_f32(var_0.x * 814f)))) * _wgslsmith_f_op_f32(-897f * 999f)), global2.d, _wgslsmith_f_op_f32(var_0.x + -753f));
    let var_2 = _wgslsmith_clamp_u32(u_input.c, min(4606u, ~(~global4.x)), reverseBits(global4.x)) | abs(~global2.c.c);
    global0 = array<Struct_2, 29>();
    var var_3 = global2.e;
    return _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global4.x, ~min(~var_3.c, var_3.c), 22497u), ~vec4<u32>(var_2, ~(~4294967295u), 4294967295u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a.x, 1u), _wgslsmith_mod_u32(4294967295u, var_3.c), _wgslsmith_sub_u32(global2.e.c, 4294967295u))));
}

fn func_1(arg_0: vec2<u32>) -> vec4<f32> {
    global4 = ~_wgslsmith_sub_vec4_u32(max(select(vec4<u32>(17863u, arg_0.x, 0u, 15399u), vec4<u32>(arg_0.x, arg_0.x, 36364u, arg_0.x), vec4<bool>(global2.a.b.x, true, true, global2.a.b.x)) << ((vec4<u32>(u_input.a.x, 0u, global4.x, 22383u) | vec4<u32>(1u, 0u, u_input.b, global2.c.c)) % vec4<u32>(32u)), select(vec4<u32>(1u, u_input.c, global2.a.c, arg_0.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 28070u, arg_0.x, 11015u), vec4<u32>(0u, 1u, 2900u, 4294967295u), vec4<u32>(4294967295u, 0u, 57178u, global2.e.c)), !vec4<bool>(global2.c.b.x, false, global2.c.a, true))), _wgslsmith_mult_vec4_u32(abs(~vec4<u32>(global2.e.c, 4294967295u, global4.x, global2.a.c)), vec4<u32>(~u_input.a.x, 17143u, _wgslsmith_dot_vec2_u32(vec2<u32>(27123u, arg_0.x), vec2<u32>(4647u, 0u)), func_2())));
    let var_0 = firstTrailingBit(0u >> (func_2() % 32u));
    global1 = array<Struct_1, 16>();
    let var_1 = global0[_wgslsmith_index_u32(~(~(~1u)), 29u)];
    global0 = array<Struct_2, 29>();
    return global2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1316f, _wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(min(323f, global2.b.x)), global2.d))), _wgslsmith_f_op_vec4_f32(func_1(vec2<u32>(~select(u_input.b, 4294967295u, false), 0u))));
    var var_1 = vec2<i32>(global2.c.d.x, ~(-2147483647i));
    var var_2 = global1[_wgslsmith_index_u32(global4.x, 16u)];
    var_1 = abs(vec2<i32>(14542i, -4213i));
    global2 = Struct_2(global1[_wgslsmith_index_u32(reverseBits(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 2780u, var_2.c, 0u), countOneBits(vec4<u32>(var_2.c, 28053u, 1226u, global4.x))))), 16u)], _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global2.d, 511f, var_0.x) + global2.b) - vec4<f32>(var_0.x, -1000f, 1000f, var_0.x))))), global2.a, -596f, Struct_1(global2.a.a, !vec3<bool>(all(var_2.b), global2.c.b.x, true), ~global2.c.c, countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(47407i, 1i, 2147483647i), global3.yyz & vec3<i32>(var_2.d.x, -7849i, -1i), _wgslsmith_add_vec3_i32(var_2.d, vec3<i32>(-57838i, global2.e.d.x, -48974i))))));
    var var_3 = global4.xzx;
    let var_4 = Struct_2(global1[_wgslsmith_index_u32(~max(max(7731u, u_input.a.x), global2.e.c) >> (~(_wgslsmith_add_u32(57887u, global2.e.c) << (global2.a.c % 32u)) % 32u), 16u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)), global2.d, global2.b.x)), Struct_1(all(vec3<bool>(true, var_2.c == global2.a.c, any(vec2<bool>(global2.a.a, global2.a.a)))), !var_2.b, 1083u, countOneBits(vec3<i32>(~2147483647i, -10879i, 1i))), _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_3.x, ~28767u), vec2<u32>(_wgslsmith_clamp_u32(1u, global4.x, 123735u), 1u), _wgslsmith_mult_vec2_u32(global4.xz, vec2<u32>(4294967295u, 0u))))).x, Struct_1(global2.c.b.x, global2.c.b, abs(u_input.b), vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(13597i, global2.a.d.x, -2147483647i), -global3.zxz), -(~global3.x), 1i)));
    var var_5 = Struct_1(var_2.a, vec3<bool>(false, any(var_4.e.b), !func_3(_wgslsmith_mult_u32(55635u, 0u), abs(vec4<i32>(-20134i, -2147483647i, 2147483647i, 1i)), Struct_2(global1[_wgslsmith_index_u32(var_4.c.c, 16u)], vec4<f32>(-1321f, global2.b.x, var_0.x, var_4.b.x), var_4.c, 425f, Struct_1(var_4.e.a, var_2.b, 55148u, global3.wwy)), abs(-17394i))), 3520u, var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(global2.c.c, 1u, 4294967295u, ~_wgslsmith_mult_u32(17768u, u_input.a.x) ^ global4.x), _wgslsmith_div_vec4_i32(select(~vec4<i32>(2147483647i, var_4.c.d.x, var_4.a.d.x, -1i), vec4<i32>(var_5.d.x, var_5.d.x, var_2.d.x, var_4.e.d.x), select(vec4<bool>(var_4.c.a, false, true, var_5.b.x), vec4<bool>(global2.a.a, false, var_5.b.x, global2.e.a), true)) | -_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -35892i, 2147483647i, -42720i), vec4<i32>(var_5.d.x, global2.a.d.x, 333i, 42405i)), vec4<i32>(var_4.e.d.x, -1i, ~(-global2.c.d.x), _wgslsmith_add_i32(abs(global2.e.d.x), var_5.d.x | 8903i))), global4.yxz);
}

