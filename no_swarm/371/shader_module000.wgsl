struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(37132i, 2147483647i, -14143i), vec3<i32>(2147483647i, 0i, 0i), vec3<i32>(40805i, i32(-2147483648), 2147483647i), vec3<i32>(1i, 0i, 16509i), vec3<i32>(2147483647i, -8693i, -28883i), vec3<i32>(1i, -13616i, 14077i), vec3<i32>(2972i, 2147483647i, -55995i), vec3<i32>(-53006i, -17924i, 2147483647i), vec3<i32>(1i, 30214i, 2147483647i), vec3<i32>(10722i, -9908i, 0i), vec3<i32>(40610i, -293i, 4587i), vec3<i32>(1i, -1i, -1i), vec3<i32>(-4488i, -40099i, 22533i), vec3<i32>(37613i, 2147483647i, 0i), vec3<i32>(2147483647i, 1i, 22424i), vec3<i32>(35863i, -3559i, 31625i), vec3<i32>(2147483647i, 1i, 10004i), vec3<i32>(3055i, -4415i, 13568i), vec3<i32>(13552i, -35896i, i32(-2147483648)), vec3<i32>(32152i, 0i, 1i), vec3<i32>(1i, 9355i, 20104i), vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(1i, -9933i, 52935i), vec3<i32>(i32(-2147483648), i32(-2147483648), 35578i), vec3<i32>(-1i, i32(-2147483648), 0i), vec3<i32>(2147483647i, i32(-2147483648), 12612i), vec3<i32>(51896i, -47023i, i32(-2147483648)));

var<private> global1: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(-1i, 1i), vec2<i32>(1i, 2147483647i), vec2<i32>(1i, -1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(26752i, 1i), vec2<i32>(11732i, -502i), vec2<i32>(22742i, 0i), vec2<i32>(-32482i, 12489i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(19526i, -24586i), vec2<i32>(0i, -1i), vec2<i32>(-1i, -10697i), vec2<i32>(18011i, 48288i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(6744i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(5898i, i32(-2147483648)), vec2<i32>(-17619i, 64690i), vec2<i32>(5877i, -1i));

var<private> global2: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(vec4<i32>(56490i, 1i, 27i, 1i), Struct_1(false, vec2<f32>(629f, -347f), -743f), Struct_1(true, vec2<f32>(-697f, 1360f), -2012f)), Struct_2(vec4<i32>(45183i, 2147483647i, 1i, 2147483647i), Struct_1(true, vec2<f32>(572f, 326f), 2054f), Struct_1(true, vec2<f32>(-279f, 1037f), -638f)), Struct_2(vec4<i32>(2147483647i, 5898i, 0i, 2147483647i), Struct_1(true, vec2<f32>(2096f, -657f), -1000f), Struct_1(true, vec2<f32>(-605f, -348f), 1267f)), Struct_2(vec4<i32>(37712i, -7826i, 18407i, 1i), Struct_1(false, vec2<f32>(1230f, -1830f), 583f), Struct_1(true, vec2<f32>(495f, -1625f), -1570f)), Struct_2(vec4<i32>(-33929i, i32(-2147483648), 1i, i32(-2147483648)), Struct_1(false, vec2<f32>(1317f, -1688f), 3095f), Struct_1(false, vec2<f32>(-316f, -593f), -1000f)), Struct_2(vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 0i), Struct_1(true, vec2<f32>(531f, -420f), 1000f), Struct_1(true, vec2<f32>(153f, -1123f), 2102f)), Struct_2(vec4<i32>(11981i, -1i, -1i, i32(-2147483648)), Struct_1(false, vec2<f32>(-143f, 991f), 1135f), Struct_1(false, vec2<f32>(-991f, 478f), -484f)), Struct_2(vec4<i32>(-22150i, 1i, -35492i, -24859i), Struct_1(true, vec2<f32>(-126f, -903f), -337f), Struct_1(true, vec2<f32>(439f, -743f), 904f)), Struct_2(vec4<i32>(-1i, 1i, -1i, -1i), Struct_1(true, vec2<f32>(-273f, -946f), 782f), Struct_1(true, vec2<f32>(-1635f, -675f), -1238f)), Struct_2(vec4<i32>(57156i, -6284i, -32800i, -42937i), Struct_1(false, vec2<f32>(821f, 891f), -131f), Struct_1(false, vec2<f32>(-714f, -300f), -1266f)), Struct_2(vec4<i32>(-42042i, 33781i, 0i, 0i), Struct_1(true, vec2<f32>(1252f, 1000f), 202f), Struct_1(true, vec2<f32>(525f, -207f), -183f)), Struct_2(vec4<i32>(-1613i, 35085i, 2147483647i, 2147483647i), Struct_1(false, vec2<f32>(-616f, -1105f), -653f), Struct_1(true, vec2<f32>(946f, 113f), 139f)), Struct_2(vec4<i32>(1i, -7941i, -33836i, 41510i), Struct_1(false, vec2<f32>(-715f, 584f), -1355f), Struct_1(true, vec2<f32>(-1765f, -1452f), 493f)), Struct_2(vec4<i32>(-1i, 60335i, 0i, 2147483647i), Struct_1(false, vec2<f32>(3315f, 1743f), -135f), Struct_1(false, vec2<f32>(134f, 208f), -605f)), Struct_2(vec4<i32>(2147483647i, -22717i, -1i, -1i), Struct_1(true, vec2<f32>(1880f, 1000f), -558f), Struct_1(true, vec2<f32>(630f, 943f), 1109f)), Struct_2(vec4<i32>(-27467i, 15777i, -1i, 0i), Struct_1(false, vec2<f32>(310f, -2607f), 587f), Struct_1(true, vec2<f32>(1000f, -350f), 559f)), Struct_2(vec4<i32>(6516i, -1i, -1i, -1i), Struct_1(true, vec2<f32>(1236f, -116f), 294f), Struct_1(false, vec2<f32>(171f, -541f), 1103f)), Struct_2(vec4<i32>(21944i, -1i, -12092i, 50713i), Struct_1(false, vec2<f32>(-2251f, 873f), -112f), Struct_1(true, vec2<f32>(158f, -705f), -157f)), Struct_2(vec4<i32>(-1i, 17864i, 0i, 0i), Struct_1(true, vec2<f32>(-103f, 1216f), -229f), Struct_1(false, vec2<f32>(1352f, 617f), 1673f)), Struct_2(vec4<i32>(i32(-2147483648), 2147483647i, 29622i, -52276i), Struct_1(false, vec2<f32>(-1000f, 227f), -1572f), Struct_1(false, vec2<f32>(1274f, 1477f), 174f)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = select(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, _wgslsmith_f_op_f32(f32(-1f) * -336f) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(314f - -522f), _wgslsmith_f_op_f32(step(103f, -138f)))), !all(vec4<bool>(false, any(vec2<bool>(true, false)), false, true)));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-589f, 1983f, true))))));
    var var_2 = var_0.x;
    return -508f;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<f32>) -> Struct_4 {
    let var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, (min(u_input.a.x, u_input.a.x) ^ -9667i) & 1i, 1i, u_input.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, ~0i, u_input.a.x ^ (u_input.a.x >> (u_input.b % 32u)), 49413i), vec4<i32>(_wgslsmith_add_i32(93102i, 0i) ^ _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(u_input.b, 27u)], u_input.a), i32(-1i) * -u_input.a.x, _wgslsmith_div_i32(-15343i, min(u_input.a.x, u_input.a.x)), select(_wgslsmith_div_i32(u_input.a.x, 14082i), ~43782i, true)), ~select(abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i)), -vec4<i32>(15478i, u_input.a.x, u_input.a.x, -1i), vec4<bool>(true, true, true, true))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2416f, 1091f), vec2<f32>(-158f, -1132f), vec2<bool>(false, true))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1684f, 638f))), vec2<bool>(true, true))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(859f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), 732f));
    let var_2 = Struct_2(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(abs(var_0.x), -11422i), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.x, var_0.x, u_input.a.x, var_0.x), var_0), u_input.a.x, abs(var_0.x)), var_0), Struct_1(false, vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-arg_0.x)), var_1.x), Struct_1(!all(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1148f)))), var_1.x));
    var var_3 = Struct_2(vec4<i32>(-_wgslsmith_clamp_i32(abs(21273i), 17794i, 3477i), 1i, ~var_0.x, u_input.a.x >> (u_input.b % 32u)), Struct_1(false, arg_0.xz, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1349f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)) * _wgslsmith_f_op_f32(sign(-202f))))), Struct_1(var_2.b.a, _wgslsmith_f_op_vec2_f32(floor(arg_1.yz)), 1846f));
    var var_4 = vec4<bool>(select(var_2.b.a, var_3.b.a, var_2.c.a), true, var_3.b.a || (0u > ~abs(u_input.b)), !(!var_2.c.a));
    return Struct_4(-536i, arg_0.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: bool) -> Struct_3 {
    global2 = array<Struct_2, 20>();
    let var_0 = arg_0.a || any(select(!select(vec4<bool>(arg_2, false, false, arg_0.a), vec4<bool>(true, true, true, arg_0.a), arg_2), !vec4<bool>(false, false, arg_2, false), true));
    global0 = array<vec3<i32>, 27>();
    return Struct_3(_wgslsmith_f_op_f32(min(-841f, arg_1.b)), vec2<f32>(-1946f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1097f))))), Struct_2(-(~vec4<i32>(-9080i, arg_1.a, 2147483647i, arg_1.a)) << (~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 50660u, 1u, 46278u), vec4<u32>(1u, 0u, u_input.b, 4294967295u), vec4<u32>(u_input.c, 0u, 0u, u_input.c)) % vec4<u32>(32u)), Struct_1(false, vec2<f32>(arg_0.b.x, arg_0.c), 340f), Struct_1(false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1247f, arg_1.b)), -1000f)));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: i32, arg_3: bool) -> Struct_2 {
    let var_0 = func_4(Struct_1(any(select(!vec2<bool>(arg_3, arg_1), vec2<bool>(true, false), arg_1)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-133f, -1565f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1041f, -974f) - vec2<f32>(199f, 578f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(584f, -936f, _wgslsmith_f_op_f32(select(-745f, 1355f, true)), _wgslsmith_div_f32(-653f, 1921f))), vec4<f32>(1f, 1f, 1f, 1f)), select(all(!select(vec4<bool>(false, arg_3, false, false), vec4<bool>(arg_1, false, arg_1, arg_1), arg_3)), true, 7669u <= ~(~u_input.b)));
    let var_1 = abs(arg_0.x | -func_4(func_4(Struct_1(arg_1, vec2<f32>(580f, -109f), var_0.b.x), Struct_4(var_0.c.a.x, var_0.b.x), arg_3).c.b, func_2(vec4<f32>(var_0.a, var_0.b.x, var_0.c.c.c, 1154f), vec4<f32>(603f, 1201f, var_0.c.b.b.x, 1536f)), all(vec4<bool>(true, false, var_0.c.b.a, arg_3))).c.a.x);
    var var_2 = 1u;
    let var_3 = Struct_5(~1u, Struct_3(var_0.a, vec2<f32>(-1128f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(ceil(300f))))), func_4(var_0.c.b, Struct_4(-17275i, func_4(Struct_1(arg_1, vec2<f32>(var_0.b.x, var_0.b.x), var_0.c.b.b.x), Struct_4(var_0.c.a.x, 234f), arg_1).c.b.b.x), false).c), false && var_0.c.c.a, _wgslsmith_clamp_i32(~_wgslsmith_add_i32(-1i, -22334i), var_1, var_0.c.a.x));
    global1 = array<vec2<i32>, 20>();
    return func_4(Struct_1(true, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1851f, -976f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.c.b.c - var_3.b.a))), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -594f), _wgslsmith_f_op_f32(-1282f - -486f), var_3.b.b.x, var_0.a)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.c.c.c + var_0.c.c.b.x) + _wgslsmith_div_f32(var_3.b.c.b.c, -1213f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2500f - var_3.b.b.x)), var_3.b.b.x, _wgslsmith_f_op_f32(var_3.b.a - var_3.b.a))), true).c;
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> i32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.b.x) - 890f))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -170f), _wgslsmith_f_op_f32(-arg_0.b.b.x)))), arg_0);
    let var_1 = Struct_1(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - var_0.c.c.c)) == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.c.c.c), -322f))), _wgslsmith_f_op_vec2_f32(-arg_0.c.b), arg_0.c.b.x);
    return _wgslsmith_sub_i32(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(538f, -965f, var_1.b.x, -679f))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(633f, var_1.b.x, 305f, var_0.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, var_0.a, -1114f, 1272f) * vec4<f32>(var_0.a, 905f, 408f, 414f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(201f, var_1.c, var_0.a, -1272f)))))).a, _wgslsmith_mult_i32(~38757i, -47780i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 27>();
    var var_0 = ~_wgslsmith_mult_i32(func_5(func_1(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, -1i), vec2<i32>(u_input.a.x, -1i)), select(false, true, true), u_input.a.x, true), all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)))), countOneBits(-u_input.a.x));
    var_0 = u_input.a.x;
    var var_1 = select(!(!vec4<bool>(true, true, true, select(true, false, false))), !vec4<bool>(true | all(vec4<bool>(true, false, true, true)), any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(trunc(982f)) < -918f, true), true);
    let var_2 = vec3<i32>(-19900i, firstTrailingBit(u_input.a.x) | 1i, u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec2<i32>(u_input.a.x, 1i)), _wgslsmith_clamp_u32(0u << (~(~u_input.c) % 32u), u_input.c, abs(14974u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))), ~_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b, u_input.b, 0u)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(25511u, u_input.b, 1u), vec3<u32>(u_input.c, u_input.b, u_input.b)), vec3<u32>(18200u, ~0u, u_input.c), vec3<u32>(4294967295u, ~14928u, abs(u_input.c))));
}

