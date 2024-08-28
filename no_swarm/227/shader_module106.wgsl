struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(Struct_1(vec4<u32>(1u, 0u, 4258u, 24899u), vec3<f32>(311f, -1580f, 297f), -22475i, vec2<bool>(true, false), vec4<bool>(true, true, true, false)), Struct_1(vec4<u32>(46121u, 75391u, 0u, 38481u), vec3<f32>(-759f, -805f, -113f), 0i, vec2<bool>(true, false), vec4<bool>(true, true, false, false)), -525f, vec4<u32>(4294967295u, 1u, 0u, 1u)), Struct_2(Struct_1(vec4<u32>(7864u, 4294967295u, 30380u, 72520u), vec3<f32>(639f, 941f, -470f), 1i, vec2<bool>(true, false), vec4<bool>(false, false, false, true)), Struct_1(vec4<u32>(47836u, 12299u, 26682u, 0u), vec3<f32>(-1000f, -616f, 244f), 40381i, vec2<bool>(true, true), vec4<bool>(true, true, false, false)), 289f, vec4<u32>(10203u, 1u, 6002u, 9530u)), Struct_2(Struct_1(vec4<u32>(26775u, 46775u, 0u, 100632u), vec3<f32>(-506f, -955f, -698f), 50735i, vec2<bool>(false, true), vec4<bool>(true, true, false, false)), Struct_1(vec4<u32>(1u, 55954u, 23325u, 0u), vec3<f32>(588f, -853f, 430f), i32(-2147483648), vec2<bool>(true, true), vec4<bool>(false, true, false, true)), -1746f, vec4<u32>(51534u, 7481u, 28189u, 3723u)), Struct_2(Struct_1(vec4<u32>(1u, 1u, 42007u, 26821u), vec3<f32>(-206f, -1682f, 1857f), -68891i, vec2<bool>(true, false), vec4<bool>(false, false, true, true)), Struct_1(vec4<u32>(28170u, 29796u, 35593u, 1u), vec3<f32>(-917f, 1351f, 1283f), 6623i, vec2<bool>(true, true), vec4<bool>(false, false, false, false)), 1000f, vec4<u32>(7563u, 4294967295u, 98758u, 0u)), Struct_2(Struct_1(vec4<u32>(17402u, 45798u, 4294967295u, 1u), vec3<f32>(836f, 852f, 366f), -1i, vec2<bool>(false, true), vec4<bool>(false, false, true, true)), Struct_1(vec4<u32>(59872u, 4294967295u, 4294967295u, 63993u), vec3<f32>(692f, -1000f, -186f), -1i, vec2<bool>(true, false), vec4<bool>(true, false, true, false)), -444f, vec4<u32>(0u, 65957u, 5616u, 14236u)), Struct_2(Struct_1(vec4<u32>(0u, 54186u, 55763u, 0u), vec3<f32>(-664f, -1000f, -629f), -2603i, vec2<bool>(true, false), vec4<bool>(true, false, true, false)), Struct_1(vec4<u32>(44291u, 39137u, 1u, 4294967295u), vec3<f32>(921f, -1000f, 1458f), 1i, vec2<bool>(false, true), vec4<bool>(true, false, false, false)), 1473f, vec4<u32>(18879u, 0u, 113371u, 80943u)), Struct_2(Struct_1(vec4<u32>(11397u, 48780u, 1u, 4294967295u), vec3<f32>(-119f, 528f, 262f), 4383i, vec2<bool>(false, true), vec4<bool>(false, false, true, false)), Struct_1(vec4<u32>(34888u, 0u, 79911u, 16129u), vec3<f32>(-2678f, -1780f, -503f), 2147483647i, vec2<bool>(true, true), vec4<bool>(false, false, false, true)), -582f, vec4<u32>(23464u, 30908u, 4294967295u, 1u)), Struct_2(Struct_1(vec4<u32>(16864u, 4294967295u, 7090u, 32369u), vec3<f32>(-677f, 694f, -131f), -31454i, vec2<bool>(false, false), vec4<bool>(true, true, false, true)), Struct_1(vec4<u32>(31732u, 20931u, 0u, 0u), vec3<f32>(-1003f, 776f, -1082f), 28993i, vec2<bool>(true, false), vec4<bool>(true, true, true, false)), -645f, vec4<u32>(0u, 4294967295u, 4294967295u, 1u)), Struct_2(Struct_1(vec4<u32>(0u, 76454u, 64073u, 9787u), vec3<f32>(-1335f, 530f, 241f), 2147483647i, vec2<bool>(false, false), vec4<bool>(false, false, true, false)), Struct_1(vec4<u32>(31729u, 33572u, 23019u, 4028u), vec3<f32>(-1196f, -1000f, 1070f), i32(-2147483648), vec2<bool>(true, false), vec4<bool>(false, false, false, true)), -1548f, vec4<u32>(5674u, 0u, 42542u, 1u)), Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec3<f32>(2403f, 943f, 630f), -1i, vec2<bool>(true, true), vec4<bool>(false, true, true, false)), Struct_1(vec4<u32>(105345u, 10626u, 1u, 7148u), vec3<f32>(-150f, 1529f, 770f), 37013i, vec2<bool>(false, false), vec4<bool>(true, false, false, true)), 1320f, vec4<u32>(84438u, 0u, 5804u, 11544u)), Struct_2(Struct_1(vec4<u32>(85537u, 7926u, 1u, 4294967295u), vec3<f32>(-1759f, 947f, -366f), -21563i, vec2<bool>(false, false), vec4<bool>(true, true, false, false)), Struct_1(vec4<u32>(0u, 16805u, 61393u, 79310u), vec3<f32>(169f, -720f, -255f), -1i, vec2<bool>(true, false), vec4<bool>(false, false, true, true)), -1000f, vec4<u32>(1u, 1u, 0u, 55949u)), Struct_2(Struct_1(vec4<u32>(0u, 56119u, 4294967295u, 4294967295u), vec3<f32>(-1000f, -839f, -669f), 42101i, vec2<bool>(false, true), vec4<bool>(true, true, false, false)), Struct_1(vec4<u32>(70378u, 23291u, 28619u, 59769u), vec3<f32>(-714f, -547f, -602f), 28689i, vec2<bool>(true, true), vec4<bool>(true, false, true, false)), 528f, vec4<u32>(37127u, 1u, 14944u, 86226u)), Struct_2(Struct_1(vec4<u32>(0u, 15126u, 4294967295u, 0u), vec3<f32>(1000f, -2083f, 521f), 65195i, vec2<bool>(false, false), vec4<bool>(false, false, true, true)), Struct_1(vec4<u32>(33528u, 0u, 51700u, 1u), vec3<f32>(364f, 919f, -1404f), -1i, vec2<bool>(true, true), vec4<bool>(true, true, true, false)), -1670f, vec4<u32>(27695u, 0u, 24954u, 0u)), Struct_2(Struct_1(vec4<u32>(1u, 0u, 33118u, 18477u), vec3<f32>(-1000f, -2481f, 1000f), 0i, vec2<bool>(false, false), vec4<bool>(false, false, true, true)), Struct_1(vec4<u32>(1u, 73740u, 6274u, 4294967295u), vec3<f32>(-1218f, -245f, 480f), -19534i, vec2<bool>(false, true), vec4<bool>(true, false, false, true)), -1157f, vec4<u32>(4294967295u, 59255u, 47877u, 49153u)), Struct_2(Struct_1(vec4<u32>(4294967295u, 38566u, 13272u, 4294967295u), vec3<f32>(-550f, -811f, 155f), 48890i, vec2<bool>(false, true), vec4<bool>(false, false, true, true)), Struct_1(vec4<u32>(1u, 1u, 27819u, 0u), vec3<f32>(-964f, -1000f, 535f), i32(-2147483648), vec2<bool>(false, false), vec4<bool>(false, true, true, false)), 376f, vec4<u32>(54190u, 4294967295u, 10971u, 4294967295u)), Struct_2(Struct_1(vec4<u32>(53227u, 3356u, 4294967295u, 1u), vec3<f32>(1549f, -1008f, -1796f), 0i, vec2<bool>(true, false), vec4<bool>(true, false, false, true)), Struct_1(vec4<u32>(38290u, 76107u, 4294967295u, 78125u), vec3<f32>(-854f, -1710f, -1399f), 22448i, vec2<bool>(true, false), vec4<bool>(true, true, false, false)), -605f, vec4<u32>(205u, 26075u, 42614u, 31913u)), Struct_2(Struct_1(vec4<u32>(24348u, 50029u, 40038u, 2789u), vec3<f32>(480f, 711f, 466f), 0i, vec2<bool>(false, false), vec4<bool>(true, false, false, false)), Struct_1(vec4<u32>(0u, 1u, 1u, 80663u), vec3<f32>(1000f, 567f, -221f), 69023i, vec2<bool>(true, true), vec4<bool>(false, false, false, true)), -1073f, vec4<u32>(94151u, 36936u, 80507u, 4294967295u)), Struct_2(Struct_1(vec4<u32>(19667u, 109781u, 49518u, 31480u), vec3<f32>(540f, 1243f, -230f), 1i, vec2<bool>(true, false), vec4<bool>(true, true, true, false)), Struct_1(vec4<u32>(4294967295u, 34284u, 4294967295u, 4294967295u), vec3<f32>(2821f, 1502f, -117f), 2147483647i, vec2<bool>(false, false), vec4<bool>(false, false, false, true)), -1611f, vec4<u32>(1u, 4294967295u, 18608u, 4294967295u)), Struct_2(Struct_1(vec4<u32>(1u, 11121u, 5957u, 0u), vec3<f32>(-1046f, -764f, 1705f), -1i, vec2<bool>(true, true), vec4<bool>(false, false, true, true)), Struct_1(vec4<u32>(0u, 37525u, 44656u, 4294967295u), vec3<f32>(1306f, 552f, 238f), -12245i, vec2<bool>(true, true), vec4<bool>(false, true, true, false)), 1216f, vec4<u32>(4294967295u, 29974u, 4294967295u, 4294967295u)), Struct_2(Struct_1(vec4<u32>(27458u, 1u, 4294967295u, 0u), vec3<f32>(-703f, -1000f, 684f), i32(-2147483648), vec2<bool>(true, false), vec4<bool>(true, false, true, true)), Struct_1(vec4<u32>(24511u, 23453u, 44684u, 0u), vec3<f32>(-2647f, 133f, -308f), 2147483647i, vec2<bool>(false, true), vec4<bool>(true, false, true, false)), -438f, vec4<u32>(1u, 17051u, 4294967295u, 1u)), Struct_2(Struct_1(vec4<u32>(19501u, 4294967295u, 27924u, 0u), vec3<f32>(734f, 379f, 102f), i32(-2147483648), vec2<bool>(false, true), vec4<bool>(false, false, true, true)), Struct_1(vec4<u32>(10223u, 0u, 37754u, 4294967295u), vec3<f32>(410f, -931f, 209f), 0i, vec2<bool>(true, false), vec4<bool>(false, false, true, false)), 1608f, vec4<u32>(5599u, 29566u, 80525u, 0u)), Struct_2(Struct_1(vec4<u32>(1u, 25837u, 0u, 23979u), vec3<f32>(-238f, -1717f, -852f), 45197i, vec2<bool>(true, true), vec4<bool>(false, true, true, true)), Struct_1(vec4<u32>(35300u, 1u, 0u, 0u), vec3<f32>(299f, 523f, -1227f), i32(-2147483648), vec2<bool>(false, false), vec4<bool>(false, true, false, false)), -765f, vec4<u32>(105648u, 37159u, 4294967295u, 1u)), Struct_2(Struct_1(vec4<u32>(1u, 1u, 41373u, 12482u), vec3<f32>(-1000f, 1000f, 303f), 15619i, vec2<bool>(false, true), vec4<bool>(false, true, false, true)), Struct_1(vec4<u32>(4294967295u, 0u, 1u, 4259u), vec3<f32>(985f, 253f, -1958f), -9547i, vec2<bool>(true, true), vec4<bool>(true, true, false, false)), -601f, vec4<u32>(55217u, 9299u, 1u, 0u)), Struct_2(Struct_1(vec4<u32>(1u, 50428u, 1u, 21177u), vec3<f32>(1619f, -625f, 1163f), 0i, vec2<bool>(false, true), vec4<bool>(true, false, true, true)), Struct_1(vec4<u32>(4294967295u, 0u, 12793u, 0u), vec3<f32>(533f, -111f, 1256f), 38967i, vec2<bool>(true, false), vec4<bool>(true, false, false, false)), 1073f, vec4<u32>(6173u, 37423u, 1u, 88558u)), Struct_2(Struct_1(vec4<u32>(4294967295u, 9485u, 36231u, 16301u), vec3<f32>(540f, -1525f, 389f), -1i, vec2<bool>(true, true), vec4<bool>(true, false, false, true)), Struct_1(vec4<u32>(59928u, 1u, 0u, 4294967295u), vec3<f32>(996f, -479f, -663f), -11394i, vec2<bool>(false, true), vec4<bool>(true, false, false, true)), -154f, vec4<u32>(4294967295u, 42553u, 53861u, 46139u)), Struct_2(Struct_1(vec4<u32>(22998u, 4294967295u, 27079u, 12269u), vec3<f32>(-663f, 497f, 158f), -57115i, vec2<bool>(true, true), vec4<bool>(true, true, true, false)), Struct_1(vec4<u32>(28588u, 0u, 0u, 1u), vec3<f32>(-115f, -1000f, 1000f), 1877i, vec2<bool>(true, true), vec4<bool>(false, true, false, false)), -1497f, vec4<u32>(0u, 41303u, 4294967295u, 0u)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    let var_0 = Struct_1(abs(abs(abs(select(vec4<u32>(25758u, u_input.e, u_input.b, 4294967295u), vec4<u32>(1u, 4294967295u, u_input.a, u_input.e), vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(549f, 800f, -1000f), vec3<f32>(-1000f, -1139f, 1206f))))), 13854i, vec2<bool>(true, true), select(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true)), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), 2147483647i == u_input.d.x), any(select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), vec3<bool>(false, false, false)))));
    var var_1 = Struct_1(~var_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(553f, -120f, -188f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x)) * _wgslsmith_f_op_vec3_f32(-var_0.b)), false)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b))), ~(-min(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 0i, var_0.c, -29407i), vec4<i32>(var_0.c, -26606i, 49968i, -1i)), 37514i << (1u % 32u))), select(var_0.d, !(!vec2<bool>(false, var_0.e.x)), vec2<bool>(true || var_0.d.x, true)), vec4<bool>(true, false, true, max(var_0.a.x, firstTrailingBit(0u)) <= ~reverseBits(u_input.a)));
    let var_2 = _wgslsmith_dot_vec4_i32(-(u_input.d ^ u_input.d), u_input.d);
    var_1 = var_0;
    var var_3 = _wgslsmith_mod_vec4_i32(u_input.d, -reverseBits(u_input.d));
    return reverseBits(_wgslsmith_clamp_i32(var_1.c, var_0.c, -25885i));
}

fn func_2(arg_0: vec2<i32>) -> bool {
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    let var_0 = _wgslsmith_mult_u32(u_input.a ^ ~_wgslsmith_div_u32(select(u_input.a, 35925u, false), u_input.e), _wgslsmith_div_u32(~_wgslsmith_clamp_u32(u_input.b, ~1u, _wgslsmith_clamp_u32(4294967295u, 1u, u_input.a)), _wgslsmith_mod_u32(~70504u, 4294967295u)));
    global0 = array<Struct_2, 26>();
    return any(select(vec2<bool>(true, func_3() <= _wgslsmith_clamp_i32(0i, u_input.c, -1i)), vec2<bool>(true, true), all(vec4<bool>(all(vec3<bool>(false, false, false)), true, true, true))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: Struct_1) -> bool {
    global0 = array<Struct_2, 26>();
    var var_0 = arg_3.a.yx >> (~vec2<u32>(1u, 24709u) % vec2<u32>(32u));
    global0 = array<Struct_2, 26>();
    let var_1 = Struct_3(arg_2, arg_3.e.x, arg_3.d.x == any(select(select(arg_0, vec4<bool>(arg_0.x, arg_3.d.x, arg_0.x, true), arg_3.e), arg_3.e, arg_3.a.x > u_input.b)), 8648u);
    let var_2 = !(!select(select(!arg_0.ww, select(vec2<bool>(arg_3.e.x, false), arg_3.d, arg_3.d.x), var_1.c), select(!arg_3.d, vec2<bool>(true, true), false), max(-11985i, arg_3.c) < ~2147483647i));
    return true & (true && func_2(_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(26589i, 1i)), arg_2.xz & vec2<i32>(u_input.c, var_1.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))), all(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)), func_1(vec4<bool>(true, false, true, true), vec4<f32>(239f, 653f, -1861f, -243f), u_input.d.ywz, Struct_1(vec4<u32>(19378u, 4294967295u, 33432u, 0u), vec3<f32>(963f, -546f, -683f), u_input.d.x, vec2<bool>(false, false), vec4<bool>(true, true, true, true))))), true);
    let var_1 = 1240f;
    var var_2 = u_input.d;
    let var_3 = min(~_wgslsmith_mod_vec3_u32(~(vec3<u32>(u_input.e, 2109u, 4294967295u) & vec3<u32>(u_input.e, 1u, 39790u)), ~(~vec3<u32>(37828u, 1u, u_input.b))), abs(abs(~countOneBits(vec3<u32>(u_input.b, u_input.b, 49160u)))));
    let var_4 = 27915i;
    var var_5 = _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(1u, ~0u, var_3.x, 15934u)), firstLeadingBit(~(vec4<u32>(69730u, u_input.b, 20929u, var_3.x) & ~vec4<u32>(u_input.b, 1u, 53181u, u_input.b))), abs(~(~vec4<u32>(u_input.a, var_3.x, 0u, u_input.b))));
    let var_6 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))) * -247f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(401f))))), _wgslsmith_f_op_f32(step(-916f, 549f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(21976i, 1i), _wgslsmith_sub_vec4_u32(vec4<u32>(~55155u, ~var_3.x, var_5.x, 0u), abs(vec4<u32>(4294967295u, 0u, var_3.x, var_3.x)) | ~vec4<u32>(0u, u_input.e, u_input.a, 14924u)) << (~_wgslsmith_div_vec4_u32(vec4<u32>(var_5.x, 9810u, 4294967295u, var_5.x), countOneBits(vec4<u32>(u_input.b, var_5.x, var_5.x, u_input.b))) % vec4<u32>(32u)));
}

