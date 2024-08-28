struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: f32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(vec3<i32>(-38109i, -1i, -20676i), Struct_2(vec2<i32>(1i, -3184i), 0i, vec2<i32>(1i, -850i), 693f), -856f, 1u, vec4<bool>(true, false, true, false)), Struct_3(vec3<i32>(472i, -1i, 2147483647i), Struct_2(vec2<i32>(-1i, 1i), -2016i, vec2<i32>(-1i, i32(-2147483648)), 1381f), 213f, 1u, vec4<bool>(false, true, false, true)), Struct_3(vec3<i32>(1i, 42667i, 19746i), Struct_2(vec2<i32>(-26968i, 52056i), 0i, vec2<i32>(i32(-2147483648), i32(-2147483648)), 899f), -1168f, 4294967295u, vec4<bool>(true, false, false, false)), Struct_3(vec3<i32>(-5114i, 0i, -40941i), Struct_2(vec2<i32>(3139i, 21628i), 0i, vec2<i32>(2147483647i, 3583i), 342f), 1621f, 67054u, vec4<bool>(true, false, false, true)), Struct_3(vec3<i32>(2781i, 2147483647i, -1i), Struct_2(vec2<i32>(10648i, i32(-2147483648)), -1i, vec2<i32>(i32(-2147483648), -60946i), 723f), -682f, 4294967295u, vec4<bool>(false, false, false, true)), Struct_3(vec3<i32>(-1i, -35807i, 8250i), Struct_2(vec2<i32>(-1i, i32(-2147483648)), 12687i, vec2<i32>(i32(-2147483648), -19230i), -1000f), 1276f, 15433u, vec4<bool>(true, false, false, false)), Struct_3(vec3<i32>(-3669i, 41821i, -28974i), Struct_2(vec2<i32>(60288i, -29409i), 1i, vec2<i32>(-27293i, -14042i), 916f), 1000f, 30098u, vec4<bool>(true, false, false, false)), Struct_3(vec3<i32>(-24762i, i32(-2147483648), -4665i), Struct_2(vec2<i32>(-41506i, 0i), i32(-2147483648), vec2<i32>(2769i, 45319i), 1000f), -530f, 4294967295u, vec4<bool>(false, true, true, true)), Struct_3(vec3<i32>(-1i, 17510i, 2147483647i), Struct_2(vec2<i32>(1i, 0i), -54198i, vec2<i32>(0i, 6553i), 389f), -492f, 86549u, vec4<bool>(false, false, true, false)), Struct_3(vec3<i32>(46629i, -4877i, i32(-2147483648)), Struct_2(vec2<i32>(8940i, 1i), -15667i, vec2<i32>(1i, 1i), 482f), 1000f, 1u, vec4<bool>(true, false, true, false)), Struct_3(vec3<i32>(3911i, -53591i, 1462i), Struct_2(vec2<i32>(-33013i, -1i), 0i, vec2<i32>(7068i, -11276i), -1654f), 450f, 0u, vec4<bool>(false, true, true, false)), Struct_3(vec3<i32>(-24491i, -1i, 36653i), Struct_2(vec2<i32>(14479i, -1i), 0i, vec2<i32>(0i, -28372i), -638f), -147f, 0u, vec4<bool>(true, true, false, false)), Struct_3(vec3<i32>(61746i, 0i, -1i), Struct_2(vec2<i32>(2147483647i, 36898i), -1i, vec2<i32>(-44521i, 29055i), 402f), -124f, 0u, vec4<bool>(true, false, false, false)), Struct_3(vec3<i32>(-19835i, i32(-2147483648), i32(-2147483648)), Struct_2(vec2<i32>(15450i, 2147483647i), -33268i, vec2<i32>(35441i, 0i), 928f), -545f, 9330u, vec4<bool>(false, false, false, false)), Struct_3(vec3<i32>(-74673i, 24608i, 0i), Struct_2(vec2<i32>(-22661i, 1i), -26419i, vec2<i32>(1942i, 28385i), -143f), 1412f, 4294967295u, vec4<bool>(false, false, false, false)), Struct_3(vec3<i32>(-40164i, -16114i, -2480i), Struct_2(vec2<i32>(i32(-2147483648), -47321i), -1i, vec2<i32>(13907i, -29016i), -1187f), 398f, 33182u, vec4<bool>(true, false, false, false)), Struct_3(vec3<i32>(16517i, -1i, 6348i), Struct_2(vec2<i32>(3089i, 2147483647i), 25400i, vec2<i32>(16031i, 1i), -332f), 332f, 1u, vec4<bool>(true, false, true, false)), Struct_3(vec3<i32>(-17250i, -8770i, -1i), Struct_2(vec2<i32>(10342i, 42082i), 0i, vec2<i32>(39876i, 0i), -1342f), 865f, 4294967295u, vec4<bool>(true, false, true, false)), Struct_3(vec3<i32>(5483i, -10047i, -10880i), Struct_2(vec2<i32>(-41339i, 0i), 2147483647i, vec2<i32>(1i, 32197i), -1692f), -1343f, 1u, vec4<bool>(false, true, true, true)), Struct_3(vec3<i32>(i32(-2147483648), 26392i, -1i), Struct_2(vec2<i32>(-1i, 41630i), -772i, vec2<i32>(i32(-2147483648), 24578i), -866f), 1000f, 1u, vec4<bool>(true, true, true, true)), Struct_3(vec3<i32>(5699i, -1i, 476i), Struct_2(vec2<i32>(1i, i32(-2147483648)), -69443i, vec2<i32>(0i, 1i), 273f), 360f, 27637u, vec4<bool>(false, true, true, false)), Struct_3(vec3<i32>(-1i, 1i, -15342i), Struct_2(vec2<i32>(1i, 6649i), -22226i, vec2<i32>(1i, 0i), 1485f), -1000f, 45051u, vec4<bool>(true, false, true, false)), Struct_3(vec3<i32>(2147483647i, -96478i, 22150i), Struct_2(vec2<i32>(1i, 0i), 10836i, vec2<i32>(0i, 1i), 1074f), -816f, 0u, vec4<bool>(false, false, false, true)), Struct_3(vec3<i32>(-23912i, 35249i, -17374i), Struct_2(vec2<i32>(-1i, 2147483647i), -1i, vec2<i32>(-44851i, 2147483647i), -785f), 537f, 0u, vec4<bool>(false, false, false, false)), Struct_3(vec3<i32>(i32(-2147483648), -37743i, 2147483647i), Struct_2(vec2<i32>(11061i, 0i), 0i, vec2<i32>(-31964i, -27725i), -292f), 196f, 0u, vec4<bool>(true, false, false, true)), Struct_3(vec3<i32>(7269i, 2147483647i, -40141i), Struct_2(vec2<i32>(0i, 70465i), -19053i, vec2<i32>(1i, 2147483647i), 281f), 202f, 4294967295u, vec4<bool>(true, true, false, true)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    global0 = array<Struct_3, 26>();
    global0 = array<Struct_3, 26>();
    let var_0 = !any(vec4<bool>(true, true, true, true));
    global0 = array<Struct_3, 26>();
    let var_1 = Struct_4(Struct_3(vec3<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, -2147483647i, 2147483647i, 1i)) | u_input.b.x, abs(0i)), Struct_2(u_input.b.xz, ~u_input.b.x, vec2<i32>(13628i | u_input.b.x, abs(u_input.b.x)), 406f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1356f)), _wgslsmith_clamp_u32(52892u, ~(~1u), arg_0.x), !(!select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(true, var_0, false, false), vec4<bool>(false, false, true, var_0)))), arg_0.x, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(105784u, 50165u), 26u)]);
    return var_1.c.b;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_2) -> f32 {
    let var_0 = select(arg_1.c.e.xzw, !arg_1.c.e.zxz, true);
    let var_1 = Struct_1(reverseBits(vec2<i32>(23783i, arg_0.x) ^ vec2<i32>(arg_0.x, 19212i)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.d, arg_1.a.b.d, arg_1.c.b.d))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1210f, 664f, arg_2.d) + vec3<f32>(arg_2.d, arg_1.a.b.d, 207f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.c, arg_2.d, arg_1.a.c) - vec3<f32>(-1485f, 427f, -484f)))))), select(any(select(!arg_1.a.e, arg_1.c.e, vec4<bool>(false, true, var_0.x, true))), !arg_1.c.e.x, 6769u >= reverseBits(arg_1.b)));
    global0 = array<Struct_3, 26>();
    var var_2 = arg_1.c;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-493f, _wgslsmith_div_f32(arg_1.a.c, _wgslsmith_f_op_f32(-var_2.c)))))));
}

fn func_4(arg_0: Struct_4, arg_1: f32) -> Struct_2 {
    var var_0 = vec4<f32>(-492f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c.b.d, -1188f) + _wgslsmith_f_op_f32(arg_0.c.b.d * _wgslsmith_f_op_f32(1076f * 2583f))) - -260f), -355f, arg_0.a.c);
    global0 = array<Struct_3, 26>();
    return arg_0.a.b;
}

fn func_1(arg_0: Struct_4, arg_1: vec3<bool>) -> Struct_4 {
    var var_0 = abs(_wgslsmith_mult_i32(firstTrailingBit(arg_0.a.b.c.x), ~(2147483647i << (u_input.a % 32u))));
    var var_1 = func_4(Struct_4(arg_0.a, u_input.a, arg_0.a), _wgslsmith_f_op_f32(func_3(arg_0.a.a, arg_0, func_2(vec3<u32>(~u_input.a, arg_0.c.d, 9029u)))));
    let var_2 = 55973u;
    return Struct_4(Struct_3(_wgslsmith_clamp_vec3_i32(-vec3<i32>(1i, u_input.b.x, var_1.c.x), ~(vec3<i32>(var_1.a.x, u_input.b.x, var_1.b) << (vec3<u32>(var_2, 29668u, 29632u) % vec3<u32>(32u))), -(u_input.b >> (vec3<u32>(28194u, 0u, u_input.a) % vec3<u32>(32u)))), arg_0.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1681f) + _wgslsmith_f_op_f32(floor(1f))), u_input.a, select(vec4<bool>(true, true, false, any(vec3<bool>(false, arg_0.a.e.x, false))), select(!vec4<bool>(arg_0.c.e.x, false, arg_0.c.e.x, arg_1.x), select(vec4<bool>(false, arg_1.x, arg_1.x, arg_0.c.e.x), vec4<bool>(false, true, arg_0.c.e.x, arg_0.c.e.x), false), arg_0.a.e.x), arg_0.a.e)), countOneBits(firstLeadingBit(~(~u_input.a))), Struct_3(~_wgslsmith_sub_vec3_i32(u_input.b, vec3<i32>(2147483647i, var_1.b, arg_0.a.b.c.x) & vec3<i32>(0i, u_input.b.x, u_input.b.x)), arg_0.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.c.c, var_1.d)))), var_2, vec4<bool>(any(!vec2<bool>(true, arg_0.c.e.x)), arg_0.a.e.x, !arg_1.x, all(vec4<bool>(false, false, arg_0.c.e.x, arg_1.x)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_4) -> Struct_2 {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(arg_0.b.x, _wgslsmith_f_op_f32(-arg_2.c.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -729f)), _wgslsmith_f_op_f32(floor(arg_0.b.x)), -1000f);
    let var_1 = abs(countOneBits((vec2<u32>(1081u, 4294967295u) | vec2<u32>(u_input.a, 4294967295u)) >> (max(vec2<u32>(arg_2.a.d, u_input.a) | vec2<u32>(u_input.a, 4294967295u), select(vec2<u32>(1u, arg_2.b), vec2<u32>(37431u, 1u), arg_2.c.e.x)) % vec2<u32>(32u))));
    let var_2 = Struct_3((vec3<i32>(-2147483647i, 16197i << (var_1.x % 32u), -2147483647i) ^ firstTrailingBit(arg_2.a.a)) >> (min(_wgslsmith_add_vec3_u32(~vec3<u32>(var_1.x, 20214u, 12139u), reverseBits(vec3<u32>(1u, 33719u, 17820u))), vec3<u32>(_wgslsmith_mod_u32(var_1.x, arg_2.a.d), 1u, 372u)) % vec3<u32>(32u)), func_2(~vec3<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.c.d, var_1.x, 34739u), vec3<u32>(u_input.a, var_1.x, var_1.x)), var_1.x)), _wgslsmith_f_op_f32(func_3(vec3<i32>(-countOneBits(13259i), 6925i ^ ~arg_0.a.x, u_input.b.x), Struct_4(arg_2.a, ~_wgslsmith_div_u32(var_1.x, 1u), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4593u, var_1.x) | arg_2.a.d, 26u)]), func_1(func_1(Struct_4(Struct_3(u_input.b, arg_2.a.b, arg_0.b.x, 0u, vec4<bool>(arg_1.x, arg_2.c.e.x, arg_0.c, false)), arg_2.b, Struct_3(vec3<i32>(-2147483647i, arg_2.c.a.x, arg_2.c.b.a.x), arg_2.c.b, arg_2.c.b.d, var_1.x, arg_2.c.e)), vec3<bool>(arg_0.c, arg_2.a.e.x, true)), !select(arg_2.a.e.zyz, vec3<bool>(arg_0.c, false, true), arg_1.x)).c.b)), 0u, arg_2.c.e);
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(876f * _wgslsmith_f_op_f32(func_3(vec3<i32>(1i, 1i, arg_2.a.b.a.x), arg_2, Struct_2(vec2<i32>(32521i, 2147483647i), 21581i, vec2<i32>(1i, u_input.b.x), 360f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)), var_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1410f + var_2.b.d) - _wgslsmith_f_op_f32(ceil(var_0.x)))));
    var var_3 = var_2.b;
    return func_2(((select(vec3<u32>(49579u, 1u, 0u), vec3<u32>(91468u, arg_2.b, var_2.d), var_2.e.zxy) & ~vec3<u32>(var_2.d, var_1.x, var_1.x)) << (~(~vec3<u32>(var_2.d, 1u, 1u)) % vec3<u32>(32u))) ^ reverseBits(~vec3<u32>(26121u, 1567u, 1u)));
}

fn func_6(arg_0: Struct_2) -> bool {
    let var_0 = Struct_2(vec2<i32>(u_input.b.x, 31960i) & u_input.b.zy, abs(countOneBits(abs(-5735i)) & ((u_input.b.x << (u_input.a % 32u)) | -45033i)), vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b.yy, u_input.b.zz), vec2<i32>(u_input.b.x, 0i) | vec2<i32>(arg_0.b, arg_0.a.x)), _wgslsmith_f_op_f32(min(291f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d, arg_0.d))))));
    var var_1 = !vec3<bool>(false, 73985u > ~(~u_input.a), all(vec2<bool>(true, true)));
    let var_2 = Struct_3(~reverseBits(u_input.b), func_5(Struct_1(func_2(vec3<u32>(u_input.a, 23718u, u_input.a) & vec3<u32>(4294967295u, 43236u, 1u)).c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1326f, arg_0.d, var_0.d))), false), select(vec4<bool>(!var_1.x, !var_1.x, true, true), !select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, false), true), func_1(func_1(Struct_4(Struct_3(vec3<i32>(var_0.c.x, -1i, u_input.b.x), Struct_2(vec2<i32>(var_0.c.x, arg_0.a.x), 1i, vec2<i32>(2147483647i, var_0.c.x), var_0.d), arg_0.d, u_input.a, vec4<bool>(false, true, false, var_1.x)), u_input.a, Struct_3(u_input.b, var_0, arg_0.d, 20864u, vec4<bool>(true, false, var_1.x, true))), vec3<bool>(var_1.x, var_1.x, var_1.x)), !vec3<bool>(false, var_1.x, var_1.x)).c.e), Struct_4(func_1(Struct_4(Struct_3(u_input.b, Struct_2(var_0.a, var_0.c.x, arg_0.a, -1208f), 158f, 22639u, vec4<bool>(var_1.x, true, true, true)), u_input.a, global0[_wgslsmith_index_u32(u_input.a, 26u)]), vec3<bool>(var_1.x, var_1.x, var_1.x)).c, ~(~0u), func_1(Struct_4(global0[_wgslsmith_index_u32(u_input.a, 26u)], u_input.a, Struct_3(u_input.b, Struct_2(arg_0.c, u_input.b.x, var_0.a, -422f), -554f, 36062u, vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), !vec3<bool>(var_1.x, var_1.x, var_1.x)).a)), arg_0.d, ~(~min(u_input.a, select(u_input.a, 1u, var_1.x))), !vec4<bool>(all(select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, false, var_1.x), false)), true, ~arg_0.b != _wgslsmith_add_i32(arg_0.b, -33759i), any(!vec3<bool>(var_1.x, true, var_1.x))));
    var var_3 = Struct_2(~(reverseBits(vec2<i32>(-1i, var_2.a.x)) & ~var_0.c), firstTrailingBit(arg_0.b), _wgslsmith_add_vec2_i32(~(-(~vec2<i32>(2147483647i, arg_0.c.x))), arg_0.a << (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.d, 4294967295u, u_input.a, u_input.a), vec4<u32>(var_2.d, u_input.a, var_2.d, 0u)), ~var_2.d) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.d, _wgslsmith_f_op_f32(-var_2.b.d))) * -218f)));
    global0 = array<Struct_3, 26>();
    return var_2.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(true && func_6(func_5(Struct_1(vec2<i32>(u_input.b.x, u_input.b.x), vec3<f32>(-904f, 751f, -1578f), false), vec4<bool>(true, true, true, true), func_1(Struct_4(Struct_3(vec3<i32>(u_input.b.x, u_input.b.x, -67437i), Struct_2(vec2<i32>(-46097i, -1i), -46626i, vec2<i32>(10893i, -2147483647i), -1732f), -1257f, u_input.a, vec4<bool>(true, false, true, true)), 1u, Struct_3(u_input.b, Struct_2(vec2<i32>(-6918i, u_input.b.x), u_input.b.x, vec2<i32>(u_input.b.x, -15514i), 105f), -1081f, 1u, vec4<bool>(true, true, false, false))), vec3<bool>(true, false, false)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-579f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.b, Struct_4(global0[_wgslsmith_index_u32(u_input.a, 26u)], 34489u, global0[_wgslsmith_index_u32(u_input.a, 26u)]), Struct_2(u_input.b.zz, u_input.b.x, vec2<i32>(u_input.b.x, -2147483647i), 400f))) + -953f)))));
    let var_2 = 1i >> (~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 85279u, 4294967295u) << (vec4<u32>(28563u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)), vec4<u32>(func_1(Struct_4(global0[_wgslsmith_index_u32(0u, 26u)], 100136u, global0[_wgslsmith_index_u32(u_input.a, 26u)]), vec3<bool>(false, var_0, var_0)).a.d, max(u_input.a, 32297u), ~0u, _wgslsmith_add_u32(u_input.a, u_input.a))) % 32u);
    var var_3 = global0[_wgslsmith_index_u32(u_input.a, 26u)];
    global0 = array<Struct_3, 26>();
    var var_4 = ~u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-8617i, var_2, -2147483647i, 32325i), vec4<i32>(-15448i, u_input.b.x, -1i, var_3.a.x)), vec4<i32>(-2147483647i, 1i, var_3.a.x, 1i) & vec4<i32>(0i, u_input.b.x, var_2, -18677i)));
}

