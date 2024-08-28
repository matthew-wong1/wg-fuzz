struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: bool,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(Struct_1(vec2<f32>(1000f, -459f), -1233f, true, vec3<f32>(-792f, 855f, 1437f)), vec3<f32>(-559f, 933f, 1011f)), Struct_4(Struct_1(vec2<f32>(-422f, -564f), -173f, true, vec3<f32>(280f, -486f, -1538f)), vec3<f32>(-2444f, 254f, 1169f)), Struct_4(Struct_1(vec2<f32>(1290f, -733f), -1628f, true, vec3<f32>(-849f, 1505f, 298f)), vec3<f32>(260f, -2029f, 968f)), Struct_4(Struct_1(vec2<f32>(191f, -185f), -605f, false, vec3<f32>(-533f, 1201f, -1719f)), vec3<f32>(-1000f, -224f, 436f)), Struct_4(Struct_1(vec2<f32>(290f, 395f), -1021f, true, vec3<f32>(124f, -637f, -1061f)), vec3<f32>(441f, 1360f, 686f)), Struct_4(Struct_1(vec2<f32>(-1547f, -633f), -573f, false, vec3<f32>(435f, 187f, 533f)), vec3<f32>(345f, -327f, 1000f)), Struct_4(Struct_1(vec2<f32>(128f, 817f), -262f, true, vec3<f32>(-629f, -1914f, -395f)), vec3<f32>(1440f, -393f, 395f)), Struct_4(Struct_1(vec2<f32>(-918f, -936f), 660f, false, vec3<f32>(1803f, -1947f, -1151f)), vec3<f32>(870f, -567f, -1068f)), Struct_4(Struct_1(vec2<f32>(388f, 943f), 2213f, false, vec3<f32>(766f, 1769f, -1440f)), vec3<f32>(-635f, -1000f, -1492f)), Struct_4(Struct_1(vec2<f32>(-436f, -675f), 367f, true, vec3<f32>(-808f, -1489f, -2612f)), vec3<f32>(-403f, 236f, 178f)), Struct_4(Struct_1(vec2<f32>(-462f, -1000f), -2338f, false, vec3<f32>(-1000f, -978f, -616f)), vec3<f32>(-1377f, -111f, 234f)), Struct_4(Struct_1(vec2<f32>(-525f, 539f), -747f, false, vec3<f32>(241f, -135f, -1739f)), vec3<f32>(-1265f, -1180f, 839f)), Struct_4(Struct_1(vec2<f32>(-271f, -1062f), -1710f, true, vec3<f32>(-242f, 143f, 975f)), vec3<f32>(765f, 1000f, 409f)), Struct_4(Struct_1(vec2<f32>(-1082f, -988f), -1542f, true, vec3<f32>(1000f, -253f, 451f)), vec3<f32>(508f, -675f, -775f)), Struct_4(Struct_1(vec2<f32>(757f, 140f), -594f, false, vec3<f32>(1103f, 495f, 687f)), vec3<f32>(-717f, -1603f, 687f)), Struct_4(Struct_1(vec2<f32>(229f, -1000f), 505f, true, vec3<f32>(-890f, 216f, 926f)), vec3<f32>(861f, -260f, -278f)), Struct_4(Struct_1(vec2<f32>(-476f, 1096f), 461f, false, vec3<f32>(1000f, -249f, 1598f)), vec3<f32>(1957f, -139f, -388f)), Struct_4(Struct_1(vec2<f32>(790f, 1001f), 2196f, true, vec3<f32>(290f, -121f, -211f)), vec3<f32>(681f, -299f, -1643f)), Struct_4(Struct_1(vec2<f32>(231f, -196f), -561f, false, vec3<f32>(860f, -1153f, -1000f)), vec3<f32>(-826f, -185f, -741f)), Struct_4(Struct_1(vec2<f32>(-2973f, -1355f), 2384f, true, vec3<f32>(-215f, 132f, 924f)), vec3<f32>(378f, -1000f, -577f)), Struct_4(Struct_1(vec2<f32>(1434f, -1843f), -521f, true, vec3<f32>(999f, 253f, -1319f)), vec3<f32>(1000f, 538f, -755f)), Struct_4(Struct_1(vec2<f32>(842f, 981f), -797f, true, vec3<f32>(958f, 907f, -749f)), vec3<f32>(-1442f, -1000f, 587f)), Struct_4(Struct_1(vec2<f32>(-215f, 578f), -717f, false, vec3<f32>(1427f, 2175f, 2491f)), vec3<f32>(553f, -426f, 454f)), Struct_4(Struct_1(vec2<f32>(1500f, 773f), -1000f, false, vec3<f32>(248f, 1979f, 257f)), vec3<f32>(-865f, 925f, 2586f)), Struct_4(Struct_1(vec2<f32>(-798f, 1372f), 1123f, true, vec3<f32>(-167f, 1343f, 913f)), vec3<f32>(-643f, -597f, -1000f)), Struct_4(Struct_1(vec2<f32>(-1584f, -1333f), -123f, true, vec3<f32>(-1000f, -1457f, -844f)), vec3<f32>(416f, -1000f, -1468f)), Struct_4(Struct_1(vec2<f32>(-338f, 411f), -1047f, true, vec3<f32>(-371f, -1317f, 991f)), vec3<f32>(1344f, 673f, -543f)), Struct_4(Struct_1(vec2<f32>(270f, -2017f), -991f, true, vec3<f32>(-1000f, -1589f, -1322f)), vec3<f32>(1797f, -1343f, 1789f)), Struct_4(Struct_1(vec2<f32>(824f, -1157f), -1753f, true, vec3<f32>(-131f, 273f, 657f)), vec3<f32>(1000f, 422f, 1000f)), Struct_4(Struct_1(vec2<f32>(-891f, 1274f), 1208f, true, vec3<f32>(552f, 266f, 610f)), vec3<f32>(-993f, -1021f, 1337f)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global1 = array<Struct_4, 30>();
    global1 = array<Struct_4, 30>();
    let var_0 = Struct_5(any(select(select(!vec3<bool>(arg_0.c, arg_0.c, true), vec3<bool>(true, arg_0.c, arg_0.c), !arg_0.c), vec3<bool>(any(vec3<bool>(false, false, arg_0.c)), false, -766f != arg_0.b), all(vec4<bool>(true, arg_0.c, arg_0.c, arg_0.c)))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -294f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.b, arg_0.a.x)))), 508f)), 0i, abs(reverseBits(~(-vec4<i32>(44524i, 2147483647i, 1i, -26250i)))), false);
    let var_2 = var_0;
    return _wgslsmith_f_op_f32(min(-544f, 434f));
}

fn func_2() -> Struct_3 {
    global1 = array<Struct_4, 30>();
    global0 = true;
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-233f, 1091f) - vec2<f32>(-925f, -807f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1257f, 260f) - vec2<f32>(-140f, -216f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-234f, -611f)))), _wgslsmith_f_op_f32(f32(-1f) * -255f), true, vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(vec2<f32>(-1687f, 1000f), -1673f, false, vec3<f32>(196f, -380f, -386f)))), _wgslsmith_f_op_f32(select(-738f, _wgslsmith_f_op_f32(f32(-1f) * -1861f), any(vec4<bool>(false, false, true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_div_f32(-487f, -189f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 961f, _wgslsmith_f_op_f32(f32(-1f) * -755f)) * vec3<f32>(1345f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(2307f, -2119f)), 1211f, true)), _wgslsmith_f_op_f32(-798f - -337f))));
    global0 = var_0.a.c == true;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_0.b.x, _wgslsmith_f_op_f32(step(var_0.b.x, var_0.a.d.x)), true)), _wgslsmith_f_op_f32(floor(var_0.a.b)))))), _wgslsmith_f_op_f32(f32(-1f) * -942f), 497f);
    return Struct_3(~(~vec4<u32>(29341u, u_input.a, 82953u, 1u)) & ~(vec4<u32>(4294967295u, 39779u, 1u, 15694u) & ~vec4<u32>(9583u, u_input.a, u_input.a, u_input.a)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_2(arg_1.a, ~1i, -arg_1.c, all(!vec4<bool>(true, false || arg_1.d, false, !arg_3.c)));
    let var_1 = Struct_5(arg_3.c);
    return -642f;
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: Struct_3) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), 40262i, vec4<i32>(~_wgslsmith_dot_vec4_i32(~vec4<i32>(-31010i, -1i, 1i, 0i), vec4<i32>(2147483647i, 1i, 0i, -3733i)), _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, 2147483647i, -2147483647i, 541i), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_sub_i32(-(i32(-1i) * -2147483647i), 0i), _wgslsmith_clamp_i32(max(~21052i, -30475i), _wgslsmith_add_i32(i32(-1i) * -14472i, ~11581i), 51133i)), arg_0);
    var var_1 = -_wgslsmith_sub_vec2_i32(var_0.c.xy, _wgslsmith_mod_vec2_i32(-_wgslsmith_mult_vec2_i32(var_0.c.yz, vec2<i32>(-25711i, var_0.b)), var_0.c.yw));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), 820f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -119f))))))), var_0.a);
    var var_3 = !all(select(select(!vec3<bool>(true, true, arg_0), vec3<bool>(false, arg_0, var_0.d), var_1.x != var_1.x), !select(vec3<bool>(arg_0, var_0.d, false), vec3<bool>(arg_0, false, true), vec3<bool>(var_0.d, arg_0, false)), vec3<bool>(arg_0, true, true)));
    let var_4 = abs(vec3<i32>(var_0.b >> (0u % 32u), -1i, -39321i));
    return var_0.d;
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = vec3<bool>(func_5(!arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_1(vec2<f32>(448f, -1780f), -2562f, true, vec3<f32>(2316f, -396f, 702f)), Struct_2(-491f, 9515i, vec4<i32>(44684i, -2147483647i, -20752i, -1i), arg_0), func_2(), Struct_1(vec2<f32>(-1217f, -289f), 1000f, false, vec3<f32>(-702f, -1000f, 2218f)))), _wgslsmith_f_op_f32(sign(-537f))), Struct_3(select(vec4<u32>(u_input.a, 31468u, 0u, u_input.a) >> (vec4<u32>(u_input.a, u_input.a, 4294967295u, 131940u) % vec4<u32>(32u)), vec4<u32>(4294967295u, 1u, u_input.a, u_input.a), true))), false, !arg_0);
    var var_1 = (vec2<i32>(-1i) * -vec2<i32>(1i, 1i)) | ~_wgslsmith_sub_vec2_i32(~(~vec2<i32>(-1i, 25932i)), _wgslsmith_mod_vec2_i32(-vec2<i32>(2147483647i, -1561i), vec2<i32>(-1i, 0i) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))));
    let var_2 = select(min(_wgslsmith_mult_vec2_i32(~vec2<i32>(2147483647i, var_1.x), ~vec2<i32>(var_1.x, var_1.x)), ~_wgslsmith_add_vec2_i32(vec2<i32>(-441i, var_1.x), vec2<i32>(0i, var_1.x))), vec2<i32>(var_1.x, var_1.x) >> (vec2<u32>(1u, max(4294967295u, 1u)) % vec2<u32>(32u)), !var_0.yz) << (firstLeadingBit(firstLeadingBit(vec2<u32>(abs(u_input.a), 24970u))) % vec2<u32>(32u));
    var var_3 = !(!vec2<bool>(!select(false, var_0.x, arg_0), true));
    let var_4 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-264f, -451f)))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(func_3(Struct_1(vec2<f32>(-1152f, -529f), 965f, var_3.x, vec3<f32>(-1076f, 488f, 471f))))), true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(737f, -531f, -890f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-616f, 845f, 1284f)), !vec3<bool>(true, var_3.x, false))), vec3<f32>(_wgslsmith_f_op_f32(round(1195f)), _wgslsmith_f_op_f32(f32(-1f) * -867f), _wgslsmith_f_op_f32(-148f + -254f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(343f, _wgslsmith_f_op_f32(f32(-1f) * -1898f), _wgslsmith_f_op_f32(-2398f - 241f)))));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -821f)) + -665f), select(~(~(~2147483647i)), 2147483647i, func_5(true, var_4.b.x, func_2())), ~(countOneBits(-vec4<i32>(var_2.x, -31476i, var_1.x, var_2.x)) | vec4<i32>(var_1.x, 1i, _wgslsmith_add_i32(var_2.x, var_1.x), var_2.x)), any(var_0.xy));
}

fn func_6(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = Struct_5(true);
    let var_1 = arg_2;
    let var_2 = vec3<i32>(_wgslsmith_dot_vec4_i32(arg_2.c, ~(-(~vec4<i32>(var_1.c.x, var_1.b, -2147483647i, arg_2.b)))), 0i, _wgslsmith_add_i32(_wgslsmith_sub_i32(var_1.c.x, _wgslsmith_add_i32(arg_2.c.x, -2147483647i) | 1i), var_1.c.x));
    var var_3 = var_1;
    var_0 = Struct_5((23352u << (~arg_1.x % 32u)) >= ~u_input.a);
    return vec3<bool>(true, func_5(arg_3.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1811f, -1268f)), 1807f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(arg_2.a, 1815f, false)), _wgslsmith_f_op_f32(round(-1116f))))), func_2()), any(select(!select(vec4<bool>(var_1.d, false, true, arg_0), vec4<bool>(arg_0, arg_2.d, true, false), vec4<bool>(true, false, var_0.a, true)), !select(vec4<bool>(false, false, false, arg_3.c), vec4<bool>(var_1.d, arg_0, false, var_0.a), true), false)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 30>();
    global1 = array<Struct_4, 30>();
    let var_0 = !func_6(true, ~_wgslsmith_sub_vec2_u32(max(vec2<u32>(u_input.a, 3078u), vec2<u32>(12753u, u_input.a)), vec2<u32>(u_input.a, u_input.a)), func_1(true), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1121f, 1615f), vec2<f32>(-1000f, 1506f), vec2<bool>(true, false))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(587f, -1033f) * vec2<f32>(-1483f, 313f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1162f, 548f)), (u_input.a == u_input.a) && (u_input.a != 14957u), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -811f, 877f))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-796f))));
    let var_2 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-827f, _wgslsmith_f_op_f32(116f * 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -638f) * _wgslsmith_f_op_f32(-115f + 2046f))), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1152f, 1186f, 1000f))))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-221f, _wgslsmith_f_op_f32(min(-1754f, -328f)), _wgslsmith_f_op_f32(-973f * -617f)), vec3<f32>(-904f, _wgslsmith_f_op_f32(f32(-1f) * -473f), -1275f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -727f), _wgslsmith_f_op_f32(f32(-1f) * -1461f), 461f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1459f, -146f, 125f))), all(!var_0.zy)))));
    global1 = array<Struct_4, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~vec2<i32>(-44i, _wgslsmith_mod_i32(1i, -2147483647i))), _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) + var_2.b.x)))), ~(~(vec2<u32>(u_input.a, 15107u) >> (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u))) ^ func_2().a.yx));
}

