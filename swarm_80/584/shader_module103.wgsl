struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<i32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(Struct_2(Struct_1(-1447f, vec4<u32>(0u, 63314u, 38084u, 30519u), vec2<bool>(true, true)), false, vec2<i32>(25047i, -22486i), Struct_1(-1205f, vec4<u32>(0u, 9343u, 4294967295u, 65622u), vec2<bool>(false, true)), 0u), vec3<bool>(true, false, false), vec3<f32>(373f, -1262f, 351f)), Struct_3(Struct_2(Struct_1(895f, vec4<u32>(4294967295u, 1u, 94045u, 1u), vec2<bool>(false, false)), false, vec2<i32>(1i, -1043i), Struct_1(-331f, vec4<u32>(0u, 46770u, 20452u, 6465u), vec2<bool>(true, false)), 16782u), vec3<bool>(false, true, false), vec3<f32>(1443f, -141f, 564f)), Struct_3(Struct_2(Struct_1(-1554f, vec4<u32>(4294967295u, 1u, 6166u, 0u), vec2<bool>(false, true)), false, vec2<i32>(-26643i, -14367i), Struct_1(-603f, vec4<u32>(67961u, 0u, 5214u, 1u), vec2<bool>(false, true)), 4294967295u), vec3<bool>(false, true, false), vec3<f32>(-1887f, 2855f, -278f)), Struct_3(Struct_2(Struct_1(464f, vec4<u32>(4294967295u, 21359u, 1u, 1u), vec2<bool>(true, false)), true, vec2<i32>(-9191i, 4743i), Struct_1(-967f, vec4<u32>(74273u, 4294967295u, 1u, 4294967295u), vec2<bool>(false, false)), 35593u), vec3<bool>(false, true, false), vec3<f32>(-522f, 1383f, -873f)), Struct_3(Struct_2(Struct_1(1050f, vec4<u32>(0u, 0u, 26905u, 1u), vec2<bool>(true, true)), true, vec2<i32>(-44316i, i32(-2147483648)), Struct_1(-137f, vec4<u32>(0u, 5524u, 4294967295u, 14078u), vec2<bool>(false, false)), 12107u), vec3<bool>(true, false, true), vec3<f32>(1155f, 1328f, -1000f)), Struct_3(Struct_2(Struct_1(-2083f, vec4<u32>(61071u, 4294967295u, 4576u, 0u), vec2<bool>(false, true)), false, vec2<i32>(2147483647i, -29377i), Struct_1(-721f, vec4<u32>(0u, 1u, 1u, 18102u), vec2<bool>(true, false)), 36448u), vec3<bool>(true, false, true), vec3<f32>(-1000f, 1436f, 1621f)), Struct_3(Struct_2(Struct_1(-1657f, vec4<u32>(1u, 14087u, 0u, 39714u), vec2<bool>(true, false)), true, vec2<i32>(-55770i, 0i), Struct_1(501f, vec4<u32>(2340u, 0u, 12120u, 4294967295u), vec2<bool>(false, true)), 13968u), vec3<bool>(true, true, true), vec3<f32>(-1075f, 1065f, 934f)), Struct_3(Struct_2(Struct_1(-1598f, vec4<u32>(61432u, 72651u, 8768u, 194u), vec2<bool>(true, true)), false, vec2<i32>(-13185i, 2147483647i), Struct_1(1753f, vec4<u32>(1u, 4294967295u, 1u, 1u), vec2<bool>(false, true)), 4294967295u), vec3<bool>(false, false, false), vec3<f32>(485f, -964f, 376f)), Struct_3(Struct_2(Struct_1(-758f, vec4<u32>(8228u, 0u, 1u, 58624u), vec2<bool>(false, true)), false, vec2<i32>(-72330i, 13887i), Struct_1(408f, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), vec2<bool>(true, true)), 34994u), vec3<bool>(false, true, true), vec3<f32>(538f, 1644f, -305f)), Struct_3(Struct_2(Struct_1(-537f, vec4<u32>(31130u, 77826u, 3554u, 47734u), vec2<bool>(true, false)), false, vec2<i32>(19937i, -64328i), Struct_1(1513f, vec4<u32>(0u, 86495u, 4294967295u, 1u), vec2<bool>(false, true)), 4294967295u), vec3<bool>(true, false, true), vec3<f32>(2275f, -2110f, 468f)), Struct_3(Struct_2(Struct_1(-448f, vec4<u32>(0u, 8315u, 48881u, 6117u), vec2<bool>(true, false)), true, vec2<i32>(2147483647i, i32(-2147483648)), Struct_1(-220f, vec4<u32>(0u, 34896u, 15176u, 0u), vec2<bool>(true, false)), 0u), vec3<bool>(true, true, true), vec3<f32>(114f, 811f, -1000f)), Struct_3(Struct_2(Struct_1(701f, vec4<u32>(20812u, 92002u, 98695u, 0u), vec2<bool>(false, false)), false, vec2<i32>(1i, 33965i), Struct_1(-2661f, vec4<u32>(42671u, 1u, 78278u, 18464u), vec2<bool>(true, true)), 2987u), vec3<bool>(false, true, false), vec3<f32>(420f, 124f, 628f)), Struct_3(Struct_2(Struct_1(-189f, vec4<u32>(1u, 1u, 77522u, 0u), vec2<bool>(false, false)), false, vec2<i32>(0i, -1i), Struct_1(-662f, vec4<u32>(31776u, 6794u, 15534u, 29938u), vec2<bool>(false, true)), 13490u), vec3<bool>(true, false, true), vec3<f32>(-1050f, -753f, -1000f)), Struct_3(Struct_2(Struct_1(-2126f, vec4<u32>(12960u, 4294967295u, 1u, 62533u), vec2<bool>(false, true)), false, vec2<i32>(0i, 4362i), Struct_1(-896f, vec4<u32>(110277u, 47154u, 24074u, 21061u), vec2<bool>(true, true)), 0u), vec3<bool>(true, false, true), vec3<f32>(-447f, -2168f, -724f)), Struct_3(Struct_2(Struct_1(1303f, vec4<u32>(48099u, 0u, 0u, 60522u), vec2<bool>(true, true)), true, vec2<i32>(-1908i, 0i), Struct_1(-729f, vec4<u32>(0u, 1u, 0u, 23427u), vec2<bool>(false, true)), 1u), vec3<bool>(false, true, false), vec3<f32>(979f, -759f, -497f)), Struct_3(Struct_2(Struct_1(-735f, vec4<u32>(14622u, 24640u, 1u, 38123u), vec2<bool>(true, false)), true, vec2<i32>(7067i, 57518i), Struct_1(-455f, vec4<u32>(42412u, 4294967295u, 1u, 7566u), vec2<bool>(false, true)), 22733u), vec3<bool>(false, true, true), vec3<f32>(-715f, -1288f, -1397f)), Struct_3(Struct_2(Struct_1(-710f, vec4<u32>(103145u, 33024u, 50392u, 41255u), vec2<bool>(true, true)), false, vec2<i32>(-28923i, 1i), Struct_1(-1253f, vec4<u32>(18523u, 27612u, 0u, 1u), vec2<bool>(true, true)), 35758u), vec3<bool>(true, false, false), vec3<f32>(-312f, 1054f, -1087f)), Struct_3(Struct_2(Struct_1(365f, vec4<u32>(5963u, 9548u, 0u, 28666u), vec2<bool>(true, true)), false, vec2<i32>(-44119i, 1i), Struct_1(461f, vec4<u32>(4294967295u, 40570u, 1u, 0u), vec2<bool>(true, false)), 34523u), vec3<bool>(false, false, true), vec3<f32>(-288f, -531f, 1839f)), Struct_3(Struct_2(Struct_1(-695f, vec4<u32>(0u, 0u, 0u, 34331u), vec2<bool>(false, false)), false, vec2<i32>(-52282i, -6379i), Struct_1(-655f, vec4<u32>(1u, 0u, 26931u, 0u), vec2<bool>(true, true)), 4294967295u), vec3<bool>(false, true, true), vec3<f32>(-514f, 1563f, -1208f)), Struct_3(Struct_2(Struct_1(318f, vec4<u32>(4294967295u, 1u, 52076u, 34888u), vec2<bool>(true, false)), false, vec2<i32>(-47648i, 66851i), Struct_1(-375f, vec4<u32>(49318u, 4294967295u, 48027u, 31371u), vec2<bool>(false, true)), 90038u), vec3<bool>(false, true, true), vec3<f32>(-794f, 1698f, -751f)), Struct_3(Struct_2(Struct_1(1843f, vec4<u32>(34688u, 1u, 0u, 1u), vec2<bool>(false, false)), true, vec2<i32>(0i, -45356i), Struct_1(1017f, vec4<u32>(4294967295u, 1u, 4294967295u, 3809u), vec2<bool>(false, true)), 5753u), vec3<bool>(true, true, true), vec3<f32>(1000f, 509f, -584f)), Struct_3(Struct_2(Struct_1(377f, vec4<u32>(1u, 43132u, 4294967295u, 1u), vec2<bool>(false, false)), false, vec2<i32>(0i, 1i), Struct_1(-770f, vec4<u32>(0u, 54620u, 1u, 113755u), vec2<bool>(false, true)), 6613u), vec3<bool>(true, true, false), vec3<f32>(1096f, 227f, -235f)), Struct_3(Struct_2(Struct_1(-728f, vec4<u32>(41226u, 46899u, 0u, 4294967295u), vec2<bool>(true, false)), false, vec2<i32>(33293i, 1i), Struct_1(-1152f, vec4<u32>(69020u, 1933u, 39877u, 1u), vec2<bool>(true, true)), 0u), vec3<bool>(true, true, true), vec3<f32>(-1279f, 1328f, -838f)), Struct_3(Struct_2(Struct_1(754f, vec4<u32>(8819u, 27386u, 4294967295u, 10688u), vec2<bool>(false, true)), false, vec2<i32>(1i, 37909i), Struct_1(-1000f, vec4<u32>(22656u, 5884u, 4294967295u, 40464u), vec2<bool>(false, true)), 4294967295u), vec3<bool>(false, true, true), vec3<f32>(-522f, 1116f, 1104f)), Struct_3(Struct_2(Struct_1(744f, vec4<u32>(17542u, 1u, 26404u, 4949u), vec2<bool>(false, true)), false, vec2<i32>(1i, -1i), Struct_1(339f, vec4<u32>(4294967295u, 0u, 1u, 66565u), vec2<bool>(false, false)), 4294967295u), vec3<bool>(true, true, false), vec3<f32>(2591f, 1554f, -591f)));

var<private> global1: array<f32, 9> = array<f32, 9>(-2188f, 1475f, 654f, 1002f, 1092f, 537f, -2538f, 914f, 108f);

var<private> global2: vec4<f32>;

var<private> global3: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(217f, vec4<u32>(0u, 1u, 1u, 21107u), vec2<bool>(false, false)), Struct_1(238f, vec4<u32>(0u, 62299u, 18512u, 4294967295u), vec2<bool>(false, true)), Struct_1(-2102f, vec4<u32>(8351u, 10347u, 13536u, 1u), vec2<bool>(false, false)), Struct_1(427f, vec4<u32>(0u, 0u, 4294967295u, 0u), vec2<bool>(false, false)), Struct_1(257f, vec4<u32>(1u, 21402u, 49601u, 4294967295u), vec2<bool>(true, true)), Struct_1(107f, vec4<u32>(22001u, 0u, 83092u, 24902u), vec2<bool>(false, false)), Struct_1(1407f, vec4<u32>(0u, 11005u, 4294967295u, 55802u), vec2<bool>(false, true)), Struct_1(-143f, vec4<u32>(0u, 4294967295u, 20459u, 4294967295u), vec2<bool>(false, false)), Struct_1(-1000f, vec4<u32>(4294967295u, 24189u, 0u, 0u), vec2<bool>(true, false)), Struct_1(957f, vec4<u32>(1u, 63276u, 66139u, 61238u), vec2<bool>(false, true)), Struct_1(-924f, vec4<u32>(33006u, 0u, 11691u, 56072u), vec2<bool>(false, false)), Struct_1(1000f, vec4<u32>(5195u, 17974u, 28443u, 60275u), vec2<bool>(true, true)), Struct_1(1000f, vec4<u32>(16028u, 0u, 6628u, 1u), vec2<bool>(false, false)), Struct_1(1927f, vec4<u32>(0u, 46740u, 24080u, 4294967295u), vec2<bool>(true, true)), Struct_1(1038f, vec4<u32>(0u, 109718u, 4294967295u, 1u), vec2<bool>(true, false)), Struct_1(-289f, vec4<u32>(10306u, 94687u, 1u, 4294967295u), vec2<bool>(false, false)), Struct_1(180f, vec4<u32>(0u, 4294967295u, 28787u, 4294967295u), vec2<bool>(true, true)), Struct_1(-472f, vec4<u32>(0u, 9331u, 38484u, 0u), vec2<bool>(true, false)), Struct_1(-1924f, vec4<u32>(43882u, 93670u, 1u, 4294967295u), vec2<bool>(false, true)), Struct_1(-873f, vec4<u32>(23450u, 4294967295u, 0u, 0u), vec2<bool>(false, false)));

var<private> global4: array<vec2<f32>, 22> = array<vec2<f32>, 22>(vec2<f32>(632f, -938f), vec2<f32>(1497f, -1000f), vec2<f32>(865f, 1266f), vec2<f32>(-1039f, -291f), vec2<f32>(-1002f, -1069f), vec2<f32>(-415f, -826f), vec2<f32>(-1220f, 597f), vec2<f32>(222f, -1031f), vec2<f32>(-471f, -1000f), vec2<f32>(1027f, 1138f), vec2<f32>(1431f, -895f), vec2<f32>(1677f, -428f), vec2<f32>(-263f, 242f), vec2<f32>(-120f, 1000f), vec2<f32>(-120f, 1032f), vec2<f32>(-1000f, 187f), vec2<f32>(-1438f, 1551f), vec2<f32>(-706f, -1000f), vec2<f32>(-1000f, -1166f), vec2<f32>(1034f, 369f), vec2<f32>(-1000f, -416f), vec2<f32>(141f, -1000f));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> i32 {
    let var_0 = _wgslsmith_clamp_vec3_u32(arg_0.d.b.zwx, _wgslsmith_add_vec3_u32(firstLeadingBit(abs(firstLeadingBit(vec3<u32>(u_input.a, u_input.a, arg_0.d.b.x)))), vec3<u32>(arg_0.a.b.x << (countOneBits(4294967295u) % 32u), u_input.a, 16411u)), vec3<u32>(0u, u_input.a, countOneBits(u_input.a ^ u_input.a)));
    let var_1 = global0[_wgslsmith_index_u32(arg_0.a.b.x, 25u)];
    var var_2 = arg_0.c.x;
    return _wgslsmith_add_i32(~_wgslsmith_mult_i32(max(~2147483647i, arg_0.c.x | 6713i), arg_0.c.x), firstTrailingBit(69027i));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(3542u, 25u)];
    let var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a.c.x, -28882i), vec2<i32>(-20441i, var_0.a.c.x))), vec2<i32>(-1i) * -var_0.a.c), func_3(var_0.a, !any(vec4<bool>(var_0.a.b, false, var_0.b.x, var_0.a.d.c.x))), var_0.a.c.x, var_0.a.c.x), ~max(min(vec4<i32>(7236i, var_0.a.c.x, var_0.a.c.x, 0i), vec4<i32>(var_0.a.c.x, -2147483647i, 2147483647i, var_0.a.c.x) | vec4<i32>(var_0.a.c.x, var_0.a.c.x, -13372i, 2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 81792i, var_0.a.c.x, var_0.a.c.x) | vec4<i32>(var_0.a.c.x, var_0.a.c.x, -1i, -67743i), vec4<i32>(var_0.a.c.x, var_0.a.c.x, 5811i, -14217i))), ~max(vec4<i32>(~var_0.a.c.x, var_0.a.c.x, -var_0.a.c.x, 1i), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, var_0.a.c.x, 0i, var_0.a.c.x)));
    let var_2 = var_0.a;
    let var_3 = global0[_wgslsmith_index_u32(var_0.a.d.b.x, 25u)];
    return _wgslsmith_f_op_f32(-var_2.a.a);
}

fn func_1() -> Struct_2 {
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(90461u, 9u)], -481f, 118f, -743f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-343f, _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(14329u, 9u)])), _wgslsmith_f_op_f32(func_2(vec2<u32>(u_input.a, u_input.a), u_input.a)), global2.x), vec4<f32>(_wgslsmith_f_op_f32(max(global2.x, global2.x)), global1[_wgslsmith_index_u32(u_input.a, 9u)], global2.x, _wgslsmith_f_op_f32(f32(-1f) * -1200f)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), false), vec4<bool>(false, false, false, true))))));
    let var_0 = max(vec4<i32>(0i, 1i, ~(~_wgslsmith_mult_i32(4677i, -6793i)), -(i32(-1i) * -2147483647i)), vec4<i32>(1i, 1i, 1i, 1i) >> (((_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a), vec4<u32>(47938u, u_input.a, u_input.a, 79819u), vec4<u32>(u_input.a, 50563u, u_input.a, 7954u)) >> (vec4<u32>(1u, 89971u, u_input.a, 4294967295u) % vec4<u32>(32u))) | vec4<u32>(firstTrailingBit(u_input.a), _wgslsmith_mult_u32(4294967295u, u_input.a), u_input.a, u_input.a)) % vec4<u32>(32u)));
    var var_1 = abs(vec3<u32>(1u, (~u_input.a & min(0u, 74078u)) >> (u_input.a % 32u), max(54264u, ~19653u)));
    var var_2 = vec2<bool>(!any(vec3<bool>(true, false, true)), false);
    global3 = array<Struct_1, 20>();
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 9u)] - global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(6253u, var_1.x)), 9u)]), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, var_1.x, var_1.x, 0u), vec4<u32>(4294967295u, var_1.x, 40486u, 99787u) & vec4<u32>(1u, u_input.a, u_input.a, u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(43083u, 11796u, var_1.x, var_1.x), vec4<u32>(4294967295u, var_1.x, 4294967295u, u_input.a), vec4<u32>(var_1.x, 1u, u_input.a, 62461u)) & vec4<u32>(var_1.x, var_1.x, 26023u, 0u)), vec2<bool>(true, var_2.x)), var_2.x, (var_0.yz | (_wgslsmith_mult_vec2_i32(vec2<i32>(1i, -1i), var_0.yy) | _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.x, var_0.x), var_0.wy))) | (vec2<i32>(_wgslsmith_mod_i32(var_0.x, var_0.x), ~(-30000i)) ^ (var_0.xx & vec2<i32>(var_0.x, var_0.x))), global3[_wgslsmith_index_u32(var_1.x, 20u)], min(max(min(min(1855u, var_1.x), firstTrailingBit(u_input.a)), _wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(var_1.x, u_input.a, 56975u))), 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 20>();
    let var_0 = Struct_3(func_1(), vec3<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false))) || true, !(!all(vec3<bool>(false, false, false)))), vec3<f32>(795f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-723f - _wgslsmith_f_op_f32(f32(-1f) * -1809f))), global2.x));
    let var_1 = var_0.a.c.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.a.a.a, global2.x)));
    global2 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(min(var_0.a.a.b.ww, vec2<u32>(21343u, 1u)), _wgslsmith_sub_u32(u_input.a, 28147u)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-665f, _wgslsmith_f_op_f32(f32(-1f) * -1450f)), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 9u)], _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(var_0.a.d.b.x, 9u)]))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(138f))), _wgslsmith_f_op_f32(-global2.x), var_2.x);
    global4 = array<vec2<f32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(612f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 9u)]), _wgslsmith_div_f32(var_0.c.x, global1[_wgslsmith_index_u32(1u, 9u)]))), var_0.a.d.a, var_0.a.d.a));
}

