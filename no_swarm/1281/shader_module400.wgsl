struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_4,
    c: i32,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 9>;

var<private> global1: bool;

var<private> global2: vec3<bool> = vec3<bool>(false, true, true);

var<private> global3: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(Struct_2(-148f, Struct_1(vec4<i32>(-36463i, 46171i, 0i, 5297i), 38321u, 4294967295u, -191f), Struct_1(vec4<i32>(0i, -42469i, -68125i, -23322i), 3039u, 1u, -2412f)), true), Struct_3(Struct_2(-1869f, Struct_1(vec4<i32>(-40538i, 2147483647i, -9432i, -4555i), 1u, 1u, 956f), Struct_1(vec4<i32>(-8845i, 2133i, 2147483647i, i32(-2147483648)), 45264u, 10485u, 739f)), true), Struct_3(Struct_2(1026f, Struct_1(vec4<i32>(0i, -20449i, -6525i, 2147483647i), 65804u, 4294967295u, 1038f), Struct_1(vec4<i32>(35371i, -1i, 13236i, 18151i), 15565u, 0u, -1000f)), true), Struct_3(Struct_2(-111f, Struct_1(vec4<i32>(-57671i, 2147483647i, -55330i, -1i), 54626u, 12201u, 1095f), Struct_1(vec4<i32>(0i, 2147483647i, -1i, 0i), 24692u, 30725u, -323f)), false), Struct_3(Struct_2(777f, Struct_1(vec4<i32>(-8094i, 2147483647i, -22825i, 1i), 18299u, 22776u, 631f), Struct_1(vec4<i32>(i32(-2147483648), 15145i, 14714i, 1i), 0u, 11078u, 615f)), false), Struct_3(Struct_2(-1500f, Struct_1(vec4<i32>(-12135i, 26120i, 2147483647i, i32(-2147483648)), 19346u, 3879u, 1155f), Struct_1(vec4<i32>(23537i, -48243i, -20674i, 0i), 50169u, 7437u, -116f)), true), Struct_3(Struct_2(123f, Struct_1(vec4<i32>(29822i, -57250i, 1i, 11350i), 38859u, 42037u, 150f), Struct_1(vec4<i32>(-1i, -1i, 1i, -1i), 0u, 32419u, -532f)), false), Struct_3(Struct_2(316f, Struct_1(vec4<i32>(i32(-2147483648), -15051i, 80267i, 55029i), 1u, 0u, -139f), Struct_1(vec4<i32>(-1i, 1i, -1i, 2147483647i), 4294967295u, 42643u, 504f)), true), Struct_3(Struct_2(-768f, Struct_1(vec4<i32>(381i, 1i, -24584i, 1i), 4294967295u, 4294967295u, -617f), Struct_1(vec4<i32>(-44314i, 2147483647i, 0i, -32240i), 46374u, 0u, 1221f)), true), Struct_3(Struct_2(153f, Struct_1(vec4<i32>(38229i, 2147483647i, -5530i, -52558i), 4294967295u, 0u, -1121f), Struct_1(vec4<i32>(0i, 2147483647i, -1i, 0i), 16473u, 84842u, -1854f)), true), Struct_3(Struct_2(-154f, Struct_1(vec4<i32>(i32(-2147483648), -11410i, 22547i, 0i), 43133u, 0u, 1000f), Struct_1(vec4<i32>(-3630i, i32(-2147483648), 2147483647i, -15282i), 1u, 25799u, -607f)), false), Struct_3(Struct_2(571f, Struct_1(vec4<i32>(-10364i, -43603i, 10517i, 39105i), 4294967295u, 1u, 889f), Struct_1(vec4<i32>(-1i, 1233i, 0i, 2147483647i), 4294967295u, 4294967295u, 1348f)), true), Struct_3(Struct_2(381f, Struct_1(vec4<i32>(1i, 28323i, 42043i, 2147483647i), 4294967295u, 1u, 1163f), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, -1i, 36191i), 0u, 3080u, -628f)), true), Struct_3(Struct_2(-829f, Struct_1(vec4<i32>(-12258i, 2147483647i, -8704i, 1i), 54236u, 4294967295u, 486f), Struct_1(vec4<i32>(-7897i, 2147483647i, 29838i, i32(-2147483648)), 1u, 0u, -981f)), true), Struct_3(Struct_2(203f, Struct_1(vec4<i32>(i32(-2147483648), -23187i, -68649i, i32(-2147483648)), 1u, 65977u, -547f), Struct_1(vec4<i32>(10911i, -1i, 29724i, 1i), 1u, 106396u, -428f)), true), Struct_3(Struct_2(816f, Struct_1(vec4<i32>(0i, 2147483647i, 48732i, -4668i), 151046u, 21784u, -1055f), Struct_1(vec4<i32>(2147483647i, 18402i, -56884i, -16207i), 4294967295u, 42622u, 303f)), false), Struct_3(Struct_2(-1879f, Struct_1(vec4<i32>(2147483647i, -4819i, 0i, 2147483647i), 1u, 72080u, 1050f), Struct_1(vec4<i32>(1i, 14685i, -42442i, 18503i), 0u, 3405u, -705f)), false), Struct_3(Struct_2(2349f, Struct_1(vec4<i32>(-15978i, 1i, 9675i, 2147483647i), 65841u, 4294967295u, 703f), Struct_1(vec4<i32>(13856i, 10597i, 2147483647i, 1i), 15593u, 0u, 127f)), true), Struct_3(Struct_2(-1386f, Struct_1(vec4<i32>(i32(-2147483648), 1i, 4660i, i32(-2147483648)), 56992u, 22975u, -334f), Struct_1(vec4<i32>(2147483647i, -21359i, -7408i, 4623i), 36969u, 6308u, 1279f)), true), Struct_3(Struct_2(1206f, Struct_1(vec4<i32>(2147483647i, 49831i, -31170i, -40952i), 0u, 1u, -178f), Struct_1(vec4<i32>(i32(-2147483648), 43374i, -1i, 0i), 38086u, 4294967295u, 302f)), true));

var<private> global4: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(1000f, Struct_1(vec4<i32>(41652i, 2147483647i, 2147483647i, 1i), 24317u, 52652u, 418f), Struct_1(vec4<i32>(1i, 25423i, -43082i, -1i), 1u, 1u, 168f)), Struct_2(-1000f, Struct_1(vec4<i32>(21787i, -30802i, -16708i, 1i), 4294967295u, 4294967295u, -509f), Struct_1(vec4<i32>(-1i, -5582i, 1i, 33114i), 56327u, 0u, -484f)), Struct_2(1489f, Struct_1(vec4<i32>(2147483647i, 2147483647i, -24921i, -1i), 28029u, 0u, 954f), Struct_1(vec4<i32>(20453i, i32(-2147483648), -18699i, 32151i), 0u, 5650u, 1091f)), Struct_2(-2378f, Struct_1(vec4<i32>(42174i, -25974i, 21816i, 1i), 4294967295u, 1551u, 1106f), Struct_1(vec4<i32>(1i, 2147483647i, 0i, -28164i), 0u, 8767u, 865f)), Struct_2(-1317f, Struct_1(vec4<i32>(10388i, 5609i, 2964i, -2494i), 1u, 4294967295u, -664f), Struct_1(vec4<i32>(1i, 10587i, 4119i, -1i), 1u, 0u, -1000f)), Struct_2(-101f, Struct_1(vec4<i32>(-12040i, 1i, 1i, 0i), 1u, 41242u, 1746f), Struct_1(vec4<i32>(2147483647i, 5908i, 2147483647i, 0i), 0u, 1u, -752f)), Struct_2(1280f, Struct_1(vec4<i32>(24727i, i32(-2147483648), -19196i, -41486i), 0u, 39859u, 751f), Struct_1(vec4<i32>(0i, 48949i, 1i, 1i), 21924u, 39622u, -1379f)), Struct_2(1087f, Struct_1(vec4<i32>(i32(-2147483648), 17244i, -13497i, 0i), 30518u, 84779u, -908f), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -1i, 0i), 1u, 55213u, 918f)), Struct_2(-450f, Struct_1(vec4<i32>(35747i, -19701i, -29618i, 12213i), 5297u, 20272u, -694f), Struct_1(vec4<i32>(31956i, -8295i, -1i, -3342i), 1u, 17228u, 556f)), Struct_2(-1000f, Struct_1(vec4<i32>(2147483647i, -1i, 2147483647i, 2147483647i), 19312u, 1u, -575f), Struct_1(vec4<i32>(-1i, i32(-2147483648), -14876i, 0i), 0u, 14521u, -1840f)), Struct_2(-1774f, Struct_1(vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 27456i), 0u, 39502u, 810f), Struct_1(vec4<i32>(-26047i, 0i, -20494i, i32(-2147483648)), 1u, 4294967295u, -1561f)), Struct_2(-550f, Struct_1(vec4<i32>(-32088i, i32(-2147483648), 4783i, 7844i), 0u, 6117u, 194f), Struct_1(vec4<i32>(-1i, 2147483647i, 1i, i32(-2147483648)), 0u, 0u, 623f)), Struct_2(421f, Struct_1(vec4<i32>(7071i, -63641i, -26637i, 58436i), 42194u, 14775u, -466f), Struct_1(vec4<i32>(0i, -1i, -8320i, i32(-2147483648)), 1u, 1u, 388f)), Struct_2(-1921f, Struct_1(vec4<i32>(1i, 39439i, -2033i, 1i), 4294967295u, 4294967295u, -592f), Struct_1(vec4<i32>(i32(-2147483648), 1i, -45343i, -1i), 13586u, 223u, -592f)), Struct_2(823f, Struct_1(vec4<i32>(1i, 10307i, -37481i, -28573i), 6168u, 4294967295u, -471f), Struct_1(vec4<i32>(-1i, -1i, -1i, 0i), 4294967295u, 4294967295u, -763f)), Struct_2(-1852f, Struct_1(vec4<i32>(2147483647i, -33356i, -1i, 2147483647i), 51816u, 1u, -842f), Struct_1(vec4<i32>(8342i, i32(-2147483648), 10675i, 4271i), 33055u, 4294967295u, 302f)), Struct_2(-192f, Struct_1(vec4<i32>(-1i, 0i, 1i, 2147483647i), 130699u, 4294967295u, 124f), Struct_1(vec4<i32>(-48729i, i32(-2147483648), 1i, 2147483647i), 4294967295u, 1u, -1000f)), Struct_2(166f, Struct_1(vec4<i32>(-38854i, 13239i, 16153i, -11604i), 1878u, 0u, -335f), Struct_1(vec4<i32>(-1i, i32(-2147483648), 465i, -35767i), 69870u, 25371u, 234f)), Struct_2(1131f, Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 0i, -34750i), 0u, 4294967295u, -220f), Struct_1(vec4<i32>(20946i, -16931i, i32(-2147483648), -50071i), 0u, 1920u, 347f)), Struct_2(-1170f, Struct_1(vec4<i32>(-19133i, 12207i, 2147483647i, 1i), 28266u, 0u, -2033f), Struct_1(vec4<i32>(-1i, 22428i, -1i, 1i), 62159u, 4294967295u, 1461f)), Struct_2(939f, Struct_1(vec4<i32>(0i, -1i, i32(-2147483648), 56731i), 0u, 0u, -980f), Struct_1(vec4<i32>(1i, 13405i, 27287i, -9279i), 8333u, 3517u, -1309f)));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>) -> vec3<bool> {
    global3 = array<Struct_3, 20>();
    let var_0 = _wgslsmith_clamp_vec2_u32(abs(_wgslsmith_sub_vec2_u32(u_input.a.xy, vec2<u32>(u_input.a.x, 1u))) | ~(~_wgslsmith_add_vec2_u32(u_input.a.yy, vec2<u32>(u_input.a.x, u_input.a.x))), firstTrailingBit(u_input.a.yx), _wgslsmith_mult_vec2_u32(vec2<u32>(~(~u_input.a.x), ~138146u), vec2<u32>(~0u, u_input.a.x)));
    var var_1 = _wgslsmith_dot_vec4_u32(abs(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, var_0.x, 11433u, var_0.x), reverseBits(vec4<u32>(var_0.x, 0u, var_0.x, u_input.a.x))), select(vec4<u32>(1u, 1u, 0u, 4294967295u) | vec4<u32>(var_0.x, var_0.x, 0u, var_0.x), ~vec4<u32>(var_0.x, 1u, var_0.x, 0u), select(vec4<bool>(global2.x, false, global2.x, global2.x), global0[_wgslsmith_index_u32(53236u, 9u)], true)))), min(vec4<u32>(u_input.a.x >> (var_0.x % 32u), ~u_input.a.x, u_input.a.x, ~(~1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(18811u, u_input.a.x, 54605u, u_input.a.x) & vec4<u32>(u_input.a.x, var_0.x, 5997u, 1u), ~vec4<u32>(4974u, u_input.a.x, 55543u, var_0.x)) >> ((~vec4<u32>(4294967295u, var_0.x, var_0.x, 0u) << (vec4<u32>(20934u, 73699u, 61249u, var_0.x) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(454f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(448f, -762f))), -120f)));
    global3 = array<Struct_3, 20>();
    return !(!vec3<bool>(global2.x, true, !(31220u >= u_input.a.x)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: f32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(-arg_2);
    let var_1 = u_input.b.x != u_input.b.x;
    global4 = array<Struct_2, 21>();
    let var_2 = global4[_wgslsmith_index_u32(65116u, 21u)];
    global0 = array<vec4<bool>, 9>();
    return select(select(!func_3(vec4<i32>(13840i, u_input.b.x, var_2.b.a.x, -1i)), !(!select(vec3<bool>(global2.x, var_1, true), vec3<bool>(var_1, false, var_1), vec3<bool>(false, false, global2.x))), func_3(vec4<i32>(max(var_2.b.a.x, 2147483647i), -255i, _wgslsmith_dot_vec2_i32(vec2<i32>(-70167i, u_input.b.x), vec2<i32>(u_input.b.x, 5063i)), 0i))), !func_3(countOneBits(abs(vec4<i32>(79053i, u_input.b.x, -29277i, 19595i)))), firstTrailingBit(~_wgslsmith_mult_i32(u_input.b.x, 6546i)) < -18886i);
}

fn func_1() -> f32 {
    global2 = !select(func_2(u_input.a.yy, abs(~vec4<u32>(27363u, 61183u, 21040u, 23087u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-680f + 451f))), vec3<bool>(true, true, true), true);
    var var_0 = Struct_1(-countOneBits(select(vec4<i32>(34475i, u_input.b.x, -17889i, u_input.b.x), vec4<i32>(-2147483647i, u_input.b.x, -22634i, u_input.b.x), global2.x) << (~vec4<u32>(44416u, 4294967295u, u_input.a.x, 0u) % vec4<u32>(32u))), u_input.a.x, 1u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(785f - -535f) - _wgslsmith_f_op_f32(1252f * 1628f))))));
    var var_1 = ~0u;
    var var_2 = func_3(var_0.a).zx;
    var var_3 = global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(~var_0.c, _wgslsmith_mult_u32(52101u, var_0.c))), 20u)];
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.a.c.d + _wgslsmith_f_op_f32(-var_0.d)), _wgslsmith_f_op_f32(f32(-1f) * -1362f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -1029f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.c.d + var_3.a.a) * var_3.a.c.d))))));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>) -> bool {
    global0 = array<vec4<bool>, 9>();
    let var_0 = u_input.a.x;
    let var_1 = Struct_1(vec4<i32>(abs(-u_input.b.x), _wgslsmith_mult_i32(u_input.b.x, 2147483647i) << (~1u % 32u), -21997i, 15364i) & _wgslsmith_mod_vec4_i32(vec4<i32>(26906i, u_input.b.x, _wgslsmith_add_i32(-1i, 36039i), abs(-1i)), vec4<i32>(1i, _wgslsmith_clamp_i32(u_input.b.x, 54550i, 22117i), -2147483647i, 2147483647i)), ~26684u, u_input.a.x, -1098f);
    let var_2 = u_input.a.yx;
    global0 = array<vec4<bool>, 9>();
    return any(select(func_2(var_2, vec4<u32>(0u, 25069u, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, var_2.x), 35527u), _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(980f * arg_0))).xx, select(func_3(-var_1.a).xx, !func_3(vec4<i32>(55507i, u_input.b.x, -9340i, u_input.b.x)).yz, true), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec3<bool>(global2.x, func_4(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1160f, 1681f, -548f, 548f))), false));
    let var_1 = u_input.a;
    var var_2 = Struct_1(min(~max(vec4<i32>(u_input.b.x, u_input.b.x, -34307i, u_input.b.x), ~vec4<i32>(1i, u_input.b.x, -1i, -2147483647i)), vec4<i32>(-1i, countOneBits(firstTrailingBit(u_input.b.x)), 54436i, -(~u_input.b.x))), _wgslsmith_div_u32(68608u, 78028u), u_input.a.x & 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2680f))));
    let var_3 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(-651f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.d, var_2.d)) - var_2.d)), var_2.d, 1020f, var_2.d), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d - -997f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(907f)), 351f)), select(vec3<u32>(~26432u, var_2.c, 1u), firstLeadingBit(u_input.a), true), Struct_3(global4[_wgslsmith_index_u32(max(var_1.x, ~var_1.x), 21u)], !global2.x)), i32(-1i) * -1i, all(vec3<bool>(true, true, global2.x)), ~max(~_wgslsmith_add_vec4_i32(var_2.a, vec4<i32>(var_2.a.x, -2147483647i, -1i, u_input.b.x)), reverseBits(var_2.a)));
    global0 = array<vec4<bool>, 9>();
    var_2 = Struct_1(min(vec4<i32>(-u_input.b.x, 2147483647i, _wgslsmith_sub_i32(var_2.a.x, -2147483647i), -1i), var_3.b.c.a.b.a), 18741u, u_input.a.x, var_3.b.c.a.b.d);
    var var_4 = Struct_4(_wgslsmith_f_op_f32(trunc(var_3.b.c.a.c.d)), vec3<u32>(var_2.b, u_input.a.x, 1u), Struct_3(Struct_2(_wgslsmith_f_op_f32(-var_2.d), Struct_1(vec4<i32>(-4043i, var_3.c, 54728i, 1i) | vec4<i32>(2147483647i, var_3.c, 8346i, 1i), ~var_1.x, ~u_input.a.x, _wgslsmith_f_op_f32(-var_2.d)), var_3.b.c.a.c), global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(u_input.b.x, 4861i), vec2<f32>(135f, 375f), var_3.b.c.a.c.a.wxx, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1440f, _wgslsmith_f_op_f32(round(-861f)))), 1f, func_2(~_wgslsmith_clamp_vec2_u32(vec2<u32>(20412u, 40088u), vec2<u32>(1u, 30995u), var_4.b.xy), _wgslsmith_mult_vec4_u32(vec4<u32>(var_3.b.c.a.c.b, 1u, 1u, var_2.c) & vec4<u32>(var_3.b.b.x, u_input.a.x, 6438u, 53170u), vec4<u32>(0u, 1u, 0u, 4294967295u) >> (vec4<u32>(var_1.x, 0u, 4294967295u, u_input.a.x) % vec4<u32>(32u))), -2461f).x)));
}

