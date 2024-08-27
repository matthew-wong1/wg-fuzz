struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: Struct_4,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(Struct_2(Struct_1(vec4<i32>(-9401i, -36387i, i32(-2147483648), -32637i), vec4<f32>(-470f, -582f, -1000f, -464f)), -616f, true), Struct_2(Struct_1(vec4<i32>(539i, 0i, -1i, 53886i), vec4<f32>(-1000f, 325f, -2036f, -1251f)), -539f, false), vec4<f32>(-1658f, 271f, -1585f, -241f), Struct_2(Struct_1(vec4<i32>(30565i, -1184i, -1i, 1i), vec4<f32>(2002f, 1729f, 360f, 1015f)), -1292f, false)), Struct_3(Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 22386i, 24652i, -2125i), vec4<f32>(-1244f, 619f, 928f, 210f)), 120f, false), Struct_2(Struct_1(vec4<i32>(2147483647i, 24534i, 0i, -1i), vec4<f32>(-1015f, -745f, -294f, 2536f)), 449f, false), vec4<f32>(-146f, -866f, -424f, -807f), Struct_2(Struct_1(vec4<i32>(-1i, -3795i, -8669i, 1i), vec4<f32>(674f, 249f, -348f, 330f)), -1000f, false)), Struct_3(Struct_2(Struct_1(vec4<i32>(2147483647i, 51612i, -1i, 2147483647i), vec4<f32>(-1542f, 1000f, 2449f, 992f)), 125f, false), Struct_2(Struct_1(vec4<i32>(-41872i, i32(-2147483648), -1i, 32569i), vec4<f32>(1000f, 1687f, -1000f, -1000f)), 858f, true), vec4<f32>(516f, 2283f, -276f, 1000f), Struct_2(Struct_1(vec4<i32>(0i, 1i, -18642i, i32(-2147483648)), vec4<f32>(-662f, 1000f, -2504f, -554f)), -593f, false)), Struct_3(Struct_2(Struct_1(vec4<i32>(0i, 2111i, 3837i, -9589i), vec4<f32>(-3032f, 1000f, -1000f, 1633f)), 1000f, false), Struct_2(Struct_1(vec4<i32>(29993i, 1i, 0i, 214i), vec4<f32>(-2353f, 1517f, 385f, 662f)), 2111f, true), vec4<f32>(1827f, 975f, 830f, 406f), Struct_2(Struct_1(vec4<i32>(1i, 0i, i32(-2147483648), -23803i), vec4<f32>(572f, 796f, -653f, 839f)), -621f, false)), Struct_3(Struct_2(Struct_1(vec4<i32>(0i, 44649i, -1i, 1i), vec4<f32>(813f, 1190f, -917f, 402f)), -1000f, false), Struct_2(Struct_1(vec4<i32>(-29935i, -1i, 41476i, i32(-2147483648)), vec4<f32>(-1855f, 2490f, -1666f, 310f)), 715f, true), vec4<f32>(322f, -193f, -419f, 764f), Struct_2(Struct_1(vec4<i32>(-17917i, -20105i, -8867i, 0i), vec4<f32>(-1000f, -3174f, -393f, 1000f)), 509f, true)), Struct_3(Struct_2(Struct_1(vec4<i32>(-87421i, 14415i, 24367i, 23430i), vec4<f32>(642f, 1000f, 227f, 964f)), -1975f, false), Struct_2(Struct_1(vec4<i32>(-2824i, 0i, 59059i, -1i), vec4<f32>(-1720f, -1345f, -883f, 810f)), 2223f, true), vec4<f32>(1224f, 365f, -1000f, -961f), Struct_2(Struct_1(vec4<i32>(32002i, 2147483647i, i32(-2147483648), 19343i), vec4<f32>(1681f, -2173f, -802f, 217f)), 1650f, false)), Struct_3(Struct_2(Struct_1(vec4<i32>(0i, 11242i, 0i, -20750i), vec4<f32>(-391f, 658f, 192f, 347f)), -1699f, true), Struct_2(Struct_1(vec4<i32>(-32117i, 2147483647i, i32(-2147483648), 1i), vec4<f32>(1193f, 3396f, -1502f, 2126f)), -895f, false), vec4<f32>(-1595f, 1039f, 293f, -1000f), Struct_2(Struct_1(vec4<i32>(-1i, 0i, -1i, -1i), vec4<f32>(1000f, -219f, 1132f, 1886f)), 930f, false)), Struct_3(Struct_2(Struct_1(vec4<i32>(-1i, i32(-2147483648), 2147483647i, 80546i), vec4<f32>(345f, 442f, 169f, 1000f)), -1186f, false), Struct_2(Struct_1(vec4<i32>(36379i, 0i, 0i, 42103i), vec4<f32>(-1681f, -300f, -1203f, 1087f)), -609f, true), vec4<f32>(-791f, 1865f, -227f, 1551f), Struct_2(Struct_1(vec4<i32>(2147483647i, -1i, -1i, 2147483647i), vec4<f32>(1201f, 1222f, 1556f, 544f)), -981f, false)), Struct_3(Struct_2(Struct_1(vec4<i32>(-7089i, -22237i, i32(-2147483648), -7700i), vec4<f32>(539f, 560f, -1088f, -1026f)), -338f, false), Struct_2(Struct_1(vec4<i32>(15615i, -1i, -28515i, -37480i), vec4<f32>(-249f, -1000f, -688f, -409f)), -1607f, true), vec4<f32>(1281f, -240f, 122f, 364f), Struct_2(Struct_1(vec4<i32>(0i, 2147483647i, 0i, 34044i), vec4<f32>(1249f, -1408f, 425f, -656f)), -463f, true)), Struct_3(Struct_2(Struct_1(vec4<i32>(14814i, 0i, i32(-2147483648), i32(-2147483648)), vec4<f32>(-1180f, -1263f, -298f, -148f)), 1995f, false), Struct_2(Struct_1(vec4<i32>(3382i, -1i, 24931i, -81760i), vec4<f32>(-185f, -1504f, 1133f, -734f)), 313f, false), vec4<f32>(-796f, -325f, 559f, -3080f), Struct_2(Struct_1(vec4<i32>(0i, 42636i, 1i, i32(-2147483648)), vec4<f32>(1989f, -955f, -1000f, 441f)), 973f, false)), Struct_3(Struct_2(Struct_1(vec4<i32>(-1i, 2147483647i, -1i, -34113i), vec4<f32>(-935f, -537f, 603f, 443f)), 549f, false), Struct_2(Struct_1(vec4<i32>(0i, -26272i, -28905i, i32(-2147483648)), vec4<f32>(998f, 1374f, -147f, 650f)), -1751f, false), vec4<f32>(769f, -748f, 642f, 1383f), Struct_2(Struct_1(vec4<i32>(1i, i32(-2147483648), -6369i, -39371i), vec4<f32>(-199f, 589f, 584f, 1376f)), 896f, false)), Struct_3(Struct_2(Struct_1(vec4<i32>(0i, -31641i, -27167i, 5576i), vec4<f32>(914f, 573f, 941f, 895f)), -431f, false), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 0i, 0i), vec4<f32>(2223f, -1000f, -549f, -1494f)), -847f, false), vec4<f32>(-827f, -831f, -236f, 526f), Struct_2(Struct_1(vec4<i32>(-5153i, 0i, 5861i, 2147483647i), vec4<f32>(427f, 843f, -1785f, -1821f)), 1497f, true)), Struct_3(Struct_2(Struct_1(vec4<i32>(-36908i, 1i, 9406i, -1i), vec4<f32>(-136f, 1964f, 136f, 846f)), -2272f, true), Struct_2(Struct_1(vec4<i32>(27176i, -42748i, 2147483647i, -32945i), vec4<f32>(-1143f, -1000f, 311f, 642f)), -212f, false), vec4<f32>(116f, -622f, -148f, -877f), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 44093i, -26354i, -1i), vec4<f32>(1000f, -214f, 296f, 2880f)), 810f, false)), Struct_3(Struct_2(Struct_1(vec4<i32>(0i, -31299i, 38283i, -24175i), vec4<f32>(1465f, 529f, -103f, -306f)), -668f, false), Struct_2(Struct_1(vec4<i32>(8657i, -1i, -4312i, -1i), vec4<f32>(1105f, -976f, -973f, 139f)), 1118f, true), vec4<f32>(-532f, -1194f, -607f, 1258f), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, -17638i, i32(-2147483648)), vec4<f32>(2056f, -675f, 838f, 1000f)), -1231f, false)), Struct_3(Struct_2(Struct_1(vec4<i32>(-27570i, -14740i, 66331i, -31732i), vec4<f32>(-2417f, -656f, -501f, 592f)), -1824f, true), Struct_2(Struct_1(vec4<i32>(-46461i, -1i, 2147483647i, 0i), vec4<f32>(-692f, 134f, 291f, 966f)), -1858f, true), vec4<f32>(-1000f, -192f, 554f, 932f), Struct_2(Struct_1(vec4<i32>(2147483647i, 0i, -1i, -6608i), vec4<f32>(2575f, -1176f, -1661f, -326f)), 1087f, true)), Struct_3(Struct_2(Struct_1(vec4<i32>(-67747i, 5193i, -3790i, -28774i), vec4<f32>(411f, 693f, -620f, -722f)), 786f, true), Struct_2(Struct_1(vec4<i32>(-1i, -2193i, i32(-2147483648), i32(-2147483648)), vec4<f32>(2367f, -375f, -1000f, -376f)), -538f, false), vec4<f32>(-1471f, -252f, -903f, -1693f), Struct_2(Struct_1(vec4<i32>(2147483647i, -7183i, i32(-2147483648), -24942i), vec4<f32>(175f, 343f, -267f, 216f)), -441f, false)));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: bool, arg_1: vec3<u32>) -> bool {
    return all(select(vec2<bool>(true, all(!vec2<bool>(global0.d.c, global0.b.c))), vec2<bool>(all(select(vec3<bool>(true, arg_0, true), vec3<bool>(true, arg_0, arg_0), true)), !global0.b.c), arg_0));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: i32, arg_3: vec4<bool>) -> StorageBuffer {
    var var_0 = ~(~vec2<i32>(1i, 1i) << (~(~u_input.b.xz) % vec2<u32>(32u)));
    let var_1 = Struct_4(Struct_2(global0.b.a, -560f, select(!global0.d.c | true, true, true)), Struct_1(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2, global0.a.a.a.x, var_0.x, global0.b.a.a.x) | global0.d.a.a, global0.a.a.a, vec4<i32>(arg_2, global0.d.a.a.x, var_0.x, var_0.x)), select(select(vec4<i32>(var_0.x, arg_2, -2147483647i, 0i), vec4<i32>(var_0.x, 1i, var_0.x, -2147483647i), arg_3), max(vec4<i32>(var_0.x, 44536i, global0.b.a.a.x, -24713i), global0.d.a.a), arg_0)), vec4<f32>(_wgslsmith_f_op_f32(-global0.c.x), global0.d.a.b.x, _wgslsmith_f_op_f32(-global0.d.b), -667f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global0.b.a.b.yxz))))));
    global0 = Struct_3(global0.a, global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global0.b.a.b.x), _wgslsmith_f_op_f32(var_1.a.a.b.x + 777f), global0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1421f)), vec4<f32>(-273f, _wgslsmith_f_op_f32(-var_1.b.b.x), _wgslsmith_f_op_f32(var_1.b.b.x * -266f), _wgslsmith_f_op_f32(max(var_1.b.b.x, -736f))), var_1.a.c))), global0.d);
    var var_2 = 4294967295u & _wgslsmith_clamp_u32(~1u, arg_1.x, ~u_input.a.x);
    let var_3 = _wgslsmith_f_op_f32(floor(-598f));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_1.a.a.b.yw), var_1.b.a.x, -1773f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_mult_u32(66196u, 1826u)), u_input.a.x) << (_wgslsmith_dot_vec3_u32(~u_input.b, _wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(35013u, u_input.a.x, 2455u) & u_input.b), u_input.b)) % 32u);
    let var_1 = global0.a.a;
    global1 = array<Struct_3, 16>();
    var var_2 = global0.d.a.a.xy;
    global1 = array<Struct_3, 16>();
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -959f);
    var var_4 = global0.b;
    let x = u_input.a;
    s_output = func_2(select(vec4<bool>(var_4.c | func_1(true, vec3<u32>(119234u, u_input.a.x, 20819u)), var_4.c, !global0.d.c & global0.a.c, var_4.c & global0.d.c), !vec4<bool>(-2147483647i <= global0.d.a.a.x, true, global0.a.c, all(vec3<bool>(true, false, false))), true), ~min(abs(vec3<u32>(1u, 83701u, 73764u)), firstLeadingBit(u_input.b)), ~var_1.a.x, select(vec4<bool>(all(select(vec3<bool>(global0.d.c, global0.a.c, global0.d.c), vec3<bool>(false, var_4.c, global0.b.c), global0.d.c)), var_4.c | (false || var_4.c), true, var_4.c), !vec4<bool>(false, any(vec4<bool>(var_4.c, true, var_4.c, global0.d.c)), true, true), func_1(all(select(vec2<bool>(false, false), vec2<bool>(global0.a.c, var_4.c), vec2<bool>(false, false))), _wgslsmith_clamp_vec3_u32(~u_input.b, abs(u_input.b), ~vec3<u32>(u_input.a.x, 4294967295u, var_0)))));
}

