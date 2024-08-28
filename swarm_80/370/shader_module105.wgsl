struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(vec3<f32>(1028f, -1152f, 201f), vec3<i32>(-19962i, i32(-2147483648), 2582i), -1473f, vec3<i32>(-16634i, 2147483647i, 2147483647i), Struct_1(vec2<i32>(-1i, 6897i), vec3<u32>(8409u, 1u, 20338u), 783f)), Struct_3(vec3<f32>(-590f, 100f, 625f), vec3<i32>(64242i, 0i, -5555i), -247f, vec3<i32>(1i, 41655i, 14031i), Struct_1(vec2<i32>(-1i, -1i), vec3<u32>(45156u, 1u, 4294967295u), 2223f)), Struct_3(vec3<f32>(788f, 1312f, 1000f), vec3<i32>(3618i, 36194i, i32(-2147483648)), 1915f, vec3<i32>(14956i, 1i, i32(-2147483648)), Struct_1(vec2<i32>(-34441i, 2157i), vec3<u32>(84915u, 23594u, 3410u), 813f)), Struct_3(vec3<f32>(949f, 786f, 726f), vec3<i32>(0i, 0i, 0i), -1000f, vec3<i32>(2147483647i, 1i, 33098i), Struct_1(vec2<i32>(i32(-2147483648), 6928i), vec3<u32>(1u, 19726u, 22595u), 463f)), Struct_3(vec3<f32>(1000f, -466f, 988f), vec3<i32>(0i, -43509i, -718i), -1715f, vec3<i32>(-55643i, 1i, -4763i), Struct_1(vec2<i32>(-11724i, 0i), vec3<u32>(48476u, 0u, 53167u), -838f)), Struct_3(vec3<f32>(-1000f, -1661f, 611f), vec3<i32>(i32(-2147483648), -21231i, 663i), 150f, vec3<i32>(2147483647i, -34171i, 36716i), Struct_1(vec2<i32>(2147483647i, -52714i), vec3<u32>(1u, 4294967295u, 1u), -1826f)), Struct_3(vec3<f32>(1424f, -720f, 1293f), vec3<i32>(40299i, -40936i, -33526i), 913f, vec3<i32>(-2114i, 1i, 0i), Struct_1(vec2<i32>(0i, 1i), vec3<u32>(0u, 18452u, 1u), -1283f)), Struct_3(vec3<f32>(-1424f, -969f, -1394f), vec3<i32>(24803i, 29163i, 1i), -996f, vec3<i32>(47126i, -2633i, 1i), Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec3<u32>(7382u, 40080u, 0u), -1181f)), Struct_3(vec3<f32>(-1000f, -1000f, -1000f), vec3<i32>(-54594i, -1i, 31306i), 729f, vec3<i32>(2147483647i, 11805i, 9664i), Struct_1(vec2<i32>(-1i, -1i), vec3<u32>(4294967295u, 20272u, 4294967295u), 1461f)), Struct_3(vec3<f32>(-1197f, -535f, 1000f), vec3<i32>(3955i, 0i, 28753i), 139f, vec3<i32>(-1i, i32(-2147483648), 0i), Struct_1(vec2<i32>(0i, -258i), vec3<u32>(4294967295u, 5119u, 4294967295u), -148f)), Struct_3(vec3<f32>(-258f, -1458f, 1000f), vec3<i32>(-1i, -6098i, i32(-2147483648)), -426f, vec3<i32>(-45863i, 4681i, -15124i), Struct_1(vec2<i32>(13717i, 55600i), vec3<u32>(1u, 0u, 1u), -2101f)), Struct_3(vec3<f32>(319f, 672f, -395f), vec3<i32>(2147483647i, -9420i, 18838i), -124f, vec3<i32>(-1i, -4727i, -21110i), Struct_1(vec2<i32>(42127i, 38596i), vec3<u32>(29678u, 4294967295u, 41477u), -1000f)), Struct_3(vec3<f32>(-137f, 381f, 662f), vec3<i32>(53472i, 2147483647i, 0i), 1000f, vec3<i32>(i32(-2147483648), i32(-2147483648), -53333i), Struct_1(vec2<i32>(-1i, -1i), vec3<u32>(4294967295u, 20150u, 29009u), -1189f)), Struct_3(vec3<f32>(-1978f, 1047f, 278f), vec3<i32>(22035i, 1i, 2147483647i), 954f, vec3<i32>(22746i, -1i, 44880i), Struct_1(vec2<i32>(0i, -1i), vec3<u32>(4294967295u, 53255u, 33041u), -886f)), Struct_3(vec3<f32>(1000f, -256f, -116f), vec3<i32>(1i, 0i, 0i), 462f, vec3<i32>(2147483647i, 28796i, i32(-2147483648)), Struct_1(vec2<i32>(i32(-2147483648), -19778i), vec3<u32>(0u, 14889u, 0u), 1538f)), Struct_3(vec3<f32>(408f, 666f, 297f), vec3<i32>(17181i, -1i, -17028i), -964f, vec3<i32>(0i, 2147483647i, -41040i), Struct_1(vec2<i32>(-14076i, -51596i), vec3<u32>(0u, 71973u, 19011u), -1782f)), Struct_3(vec3<f32>(-1838f, 1000f, 459f), vec3<i32>(2147483647i, -1i, 1i), -1447f, vec3<i32>(-39138i, 63555i, -420i), Struct_1(vec2<i32>(-1i, 0i), vec3<u32>(1u, 0u, 0u), -1292f)), Struct_3(vec3<f32>(1317f, 830f, -168f), vec3<i32>(1i, 1i, -2307i), -1000f, vec3<i32>(2147483647i, -5169i, -10550i), Struct_1(vec2<i32>(43816i, -36800i), vec3<u32>(16113u, 0u, 4294967295u), -543f)), Struct_3(vec3<f32>(-457f, 395f, 807f), vec3<i32>(i32(-2147483648), 7967i, 1i), -1000f, vec3<i32>(-26868i, -27236i, -1i), Struct_1(vec2<i32>(-13916i, 2147483647i), vec3<u32>(1u, 47251u, 70497u), -625f)), Struct_3(vec3<f32>(-658f, 100f, -1944f), vec3<i32>(-11391i, 1i, 14136i), 1013f, vec3<i32>(1i, 1i, i32(-2147483648)), Struct_1(vec2<i32>(12554i, i32(-2147483648)), vec3<u32>(0u, 4294967295u, 1u), 1337f)), Struct_3(vec3<f32>(933f, -909f, 516f), vec3<i32>(28799i, 12221i, -1i), 380f, vec3<i32>(1i, 549i, -14747i), Struct_1(vec2<i32>(1i, -1i), vec3<u32>(8900u, 1u, 1u), 239f)), Struct_3(vec3<f32>(876f, -303f, 420f), vec3<i32>(1i, -23806i, 0i), 465f, vec3<i32>(1i, 1i, -1i), Struct_1(vec2<i32>(0i, -49600i), vec3<u32>(622u, 7591u, 1u), 342f)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = true;
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1013f, 1292f, -1674f, -675f))))));
    global0 = array<Struct_3, 22>();
    return _wgslsmith_dot_vec2_i32(~(abs(~vec2<i32>(u_input.c, 1i)) << (abs(vec2<u32>(4870u, 0u)) % vec2<u32>(32u))), abs(_wgslsmith_div_vec2_i32(vec2<i32>(select(1i, u_input.c, var_0), 0i), ~select(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-2147483647i, u_input.c), vec2<bool>(var_0, var_0)))));
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<i32>) -> vec4<u32> {
    var var_0 = true;
    var var_1 = 16092i;
    var_1 = func_3();
    var var_2 = arg_1.wz;
    global0 = array<Struct_3, 22>();
    return vec4<u32>(u_input.a, 4294967295u, 46114u | ~u_input.b, u_input.a);
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: bool) -> f32 {
    global0 = array<Struct_3, 22>();
    let var_0 = true;
    var var_1 = false;
    var var_2 = select(vec2<bool>(select(u_input.c, u_input.c, !arg_2) > -(~u_input.c), true), !select(!select(vec2<bool>(var_0, true), vec2<bool>(var_0, true), false), vec2<bool>(u_input.a >= 13999u, var_0), all(!vec3<bool>(true, false, var_0))), !vec2<bool>(true, u_input.c < _wgslsmith_add_i32(-24587i, 28142i)));
    var var_3 = global0[_wgslsmith_index_u32(u_input.a, 22u)];
    return 1902f;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> Struct_3 {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, ~arg_1), _wgslsmith_add_u32(~4294967295u, ~(arg_0.x | 4294967295u)));
    var var_1 = vec3<f32>(1948f, 295f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-172f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1129f, -428f)) - -2170f), true)) * _wgslsmith_f_op_f32(func_4(arg_0.x, func_2(u_input.c, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-638f, -2074f, -1000f, 2170f))), vec3<i32>(u_input.c, -17955i, u_input.c)), false))));
    global0 = array<Struct_3, 22>();
    let var_2 = ~(~vec2<u32>((u_input.a << (arg_1 % 32u)) << (4294967295u % 32u), u_input.b));
    var var_3 = max(arg_1, ~arg_0.x);
    return global0[_wgslsmith_index_u32(func_2(0i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(605f, -206f, 838f, var_1.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1408f, var_1.x, -260f, 426f) - vec4<f32>(-942f, -101f, 2612f, -1086f)))), var_2.x <= _wgslsmith_add_u32(4294967295u, 0u)))), abs(-_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, 0i, -1i), vec3<i32>(-9014i, u_input.c, -26318i), vec3<i32>(u_input.c, 21952i, 0i)), vec3<i32>(-9143i, 2147483647i, u_input.c)))).x, 22u)];
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2) -> Struct_3 {
    global0 = array<Struct_3, 22>();
    let var_0 = all(select(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false))))));
    global0 = array<Struct_3, 22>();
    let var_1 = vec3<u32>(~(4294967295u & ~arg_0.e.b.x) << (_wgslsmith_div_u32(_wgslsmith_mod_u32(abs(18139u), arg_0.e.b.x), ~(~arg_0.e.b.x)) % 32u), ~7055u, 84821u);
    var var_2 = u_input.a;
    return Struct_3(vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(round(-372f)), arg_1.a.x), reverseBits(arg_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(max(-745f, _wgslsmith_f_op_f32(829f - arg_0.c)))) * func_1(vec3<u32>(_wgslsmith_add_u32(0u, arg_0.e.b.x), ~68464u, var_1.x), 1u).c), ~_wgslsmith_mult_vec3_i32(vec3<i32>(~arg_0.b.x, firstTrailingBit(u_input.c), _wgslsmith_mult_i32(-1i, -2388i)), _wgslsmith_mult_vec3_i32(abs(arg_0.d), arg_0.b)), func_1(vec3<u32>(~(arg_0.e.b.x >> (0u % 32u)), arg_0.e.b.x, u_input.b), abs(arg_0.e.b.x)).e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(~(~abs(vec3<u32>(1u, 1u, 28757u))), 6588u), Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1004f, -247f, -127f, 663f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-819f, -1000f, 1126f, -326f) * vec4<f32>(-851f, -1000f, 1428f, 389f)))), vec4<f32>(_wgslsmith_div_f32(-936f, 1353f), -142f, _wgslsmith_f_op_f32(1000f * -188f), _wgslsmith_f_op_f32(f32(-1f) * -111f))))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1314f, -746f, 765f, var_0.e.c))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, var_0.a.x, var_0.a.x, 1000f) + vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, 456f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(858f, -946f, var_0.a.x, var_0.c)))))));
    let var_2 = Struct_1(-func_5(func_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 12777u, u_input.b), var_0.e.b, var_0.e.b), 26362u), Struct_2(var_1.a)).d.xx, func_5(global0[_wgslsmith_index_u32(select(_wgslsmith_mult_u32(u_input.b, ~0u), func_2(-21538i, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1385f, var_1.a.x, 1434f, var_0.a.x) - var_1.a), vec3<i32>(u_input.c, u_input.c, 1i)).x, all(vec3<bool>(true, true, true))), 22u)], var_1).e.b, _wgslsmith_f_op_f32(-var_1.a.x));
    var var_3 = 1u;
    var var_4 = !select(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), true), !(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true)), !any(vec2<bool>(false, false)) && !(u_input.a >= 47003u));
    var_3 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_2.b, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, var_2.b.x, 0u), abs(var_2.b)) << (var_0.e.b % vec3<u32>(32u))), countOneBits(_wgslsmith_clamp_u32(~var_0.e.b.x, 1u, _wgslsmith_dot_vec2_u32(var_0.e.b.xx, var_0.e.b.zy))));
    let var_5 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e.c, _wgslsmith_f_op_f32(808f - -1000f), _wgslsmith_f_op_f32(438f + -1563f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1474f, -1151f, -1468f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0.a))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.a.x, 206f, var_1.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c, 1000f, var_2.c) * vec3<f32>(-736f, -292f, 1000f))))))));
    let var_6 = select(var_4.x, -(~(~var_2.a.x)) >= (var_2.a.x & 0i), !all(select(!vec4<bool>(true, var_4.x, var_4.x, false), select(vec4<bool>(false, var_4.x, var_4.x, var_4.x), vec4<bool>(false, false, var_4.x, var_4.x), vec4<bool>(false, var_4.x, true, var_4.x)), !var_4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(~(func_5(global0[_wgslsmith_index_u32(u_input.a, 22u)], Struct_2(var_1.a)).d ^ _wgslsmith_add_vec3_i32(var_0.d, vec3<i32>(var_0.e.a.x, -1i, -79561i))), _wgslsmith_mult_vec3_i32(func_1(~var_2.b, func_5(Struct_3(vec3<f32>(582f, var_2.c, 730f), var_0.b, 856f, vec3<i32>(u_input.c, 38508i, var_0.b.x), var_2), Struct_2(var_1.a)).e.b.x).d, _wgslsmith_sub_vec3_i32(var_0.b, vec3<i32>(42928i, 63651i, var_2.a.x)) & (vec3<i32>(u_input.c, 5396i, var_2.a.x) | vec3<i32>(u_input.c, var_0.e.a.x, var_2.a.x)))), u_input.b, var_0.c, -229f, -(firstLeadingBit(vec2<i32>(var_0.b.x, u_input.c) | var_0.b.yz) << (vec2<u32>(firstLeadingBit(u_input.a), u_input.b) % vec2<u32>(32u))));
}

