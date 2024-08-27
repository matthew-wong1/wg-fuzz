struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: f32,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(1i, false, vec3<f32>(1762f, 1000f, -1222f), vec3<i32>(-18061i, 0i, -10628i)), Struct_4(-1i, false, vec3<f32>(-814f, 159f, 995f), vec3<i32>(2147483647i, 30284i, -47544i)), Struct_4(45275i, true, vec3<f32>(930f, 1998f, -883f), vec3<i32>(0i, -11670i, 0i)), Struct_4(-1i, true, vec3<f32>(-376f, 596f, -1204f), vec3<i32>(25697i, -31768i, 2147483647i)), Struct_4(-27809i, false, vec3<f32>(799f, 904f, -1226f), vec3<i32>(2147483647i, 4916i, i32(-2147483648))), Struct_4(i32(-2147483648), false, vec3<f32>(348f, 1174f, 548f), vec3<i32>(-64951i, 2054i, -17261i)), Struct_4(1i, true, vec3<f32>(308f, 828f, -1000f), vec3<i32>(0i, 25596i, i32(-2147483648))), Struct_4(1i, false, vec3<f32>(429f, 1000f, 1000f), vec3<i32>(-23978i, 2147483647i, -1i)), Struct_4(16034i, false, vec3<f32>(1390f, 2303f, 982f), vec3<i32>(-1i, 2147483647i, 2147483647i)), Struct_4(8282i, true, vec3<f32>(1001f, 157f, 404f), vec3<i32>(-1i, -22692i, 0i)), Struct_4(0i, false, vec3<f32>(1370f, -504f, 187f), vec3<i32>(-27111i, -1i, 1i)), Struct_4(-78725i, true, vec3<f32>(759f, -1999f, -1000f), vec3<i32>(14762i, 2147483647i, -7414i)), Struct_4(1i, false, vec3<f32>(459f, -796f, 712f), vec3<i32>(-622i, 2147483647i, 39740i)), Struct_4(-45647i, false, vec3<f32>(1000f, -601f, -541f), vec3<i32>(-2455i, i32(-2147483648), -1i)), Struct_4(-103143i, true, vec3<f32>(-1502f, 992f, -1189f), vec3<i32>(2147483647i, 1i, -17958i)), Struct_4(-19046i, true, vec3<f32>(312f, 1000f, -214f), vec3<i32>(-54690i, 2147483647i, 1i)), Struct_4(i32(-2147483648), true, vec3<f32>(-1000f, 519f, -554f), vec3<i32>(i32(-2147483648), 41718i, -9002i)), Struct_4(-12309i, false, vec3<f32>(-739f, -401f, 195f), vec3<i32>(-1i, 2147483647i, 1i)), Struct_4(-7229i, true, vec3<f32>(646f, 211f, 661f), vec3<i32>(i32(-2147483648), -32442i, i32(-2147483648))), Struct_4(-42708i, true, vec3<f32>(1608f, 150f, 116f), vec3<i32>(0i, 30342i, 2147483647i)), Struct_4(-1i, false, vec3<f32>(-419f, 285f, -1801f), vec3<i32>(103i, 17441i, 38107i)), Struct_4(-29460i, true, vec3<f32>(-323f, 1176f, -391f), vec3<i32>(i32(-2147483648), -4761i, -5578i)), Struct_4(-1i, false, vec3<f32>(1642f, 742f, -947f), vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i)), Struct_4(3002i, true, vec3<f32>(225f, 1481f, -756f), vec3<i32>(1i, 22270i, -13132i)), Struct_4(-1848i, true, vec3<f32>(-684f, -364f, 385f), vec3<i32>(6947i, -77609i, -4825i)), Struct_4(-19546i, true, vec3<f32>(129f, -337f, -1774f), vec3<i32>(24122i, 15286i, 37212i)), Struct_4(0i, true, vec3<f32>(-383f, 289f, 809f), vec3<i32>(22557i, 0i, 8305i)), Struct_4(-43267i, true, vec3<f32>(238f, -360f, -1482f), vec3<i32>(57708i, -3392i, 34343i)), Struct_4(-4555i, true, vec3<f32>(-1000f, -1078f, 1078f), vec3<i32>(-53148i, 3863i, 0i)), Struct_4(19680i, true, vec3<f32>(860f, -1000f, -923f), vec3<i32>(-1i, 0i, 26330i)), Struct_4(1i, true, vec3<f32>(526f, -537f, 1286f), vec3<i32>(1i, 33507i, 2147483647i)), Struct_4(-17447i, false, vec3<f32>(-968f, -1141f, -289f), vec3<i32>(1i, -21820i, -1i)));

var<private> global2: i32 = 59026i;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>) -> vec4<bool> {
    global1 = array<Struct_4, 32>();
    global2 = u_input.c.x;
    var var_0 = true;
    let var_1 = -25820i;
    global0 = select(all(vec2<bool>(select(arg_0.a || arg_0.a, arg_0.a, select(true, arg_0.a, true)), all(!vec4<bool>(arg_1.x, true, arg_0.a, true)))), all(select(arg_1, select(!arg_1, !vec3<bool>(arg_1.x, arg_1.x, true), true), all(arg_1.xy))), any(!(!select(vec4<bool>(arg_1.x, false, true, arg_0.a), vec4<bool>(false, arg_0.a, false, false), true))));
    return !(!vec4<bool>(select(true, true, true), true && (arg_1.x | false), true, u_input.d <= _wgslsmith_dot_vec3_u32(u_input.b.yyy, vec3<u32>(0u, 40799u, u_input.b.x))));
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = Struct_5(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, u_input.c.x, 55340i), _wgslsmith_div_vec4_i32(-reverseBits(vec4<i32>(arg_0.b, u_input.c.x, -31387i, u_input.c.x)), -vec4<i32>(-6311i, 49053i, u_input.c.x, arg_0.b))), Struct_2(true));
    var var_1 = Struct_5(abs(firstTrailingBit(var_0.a)), var_0.b);
    var_1 = Struct_5(abs(var_0.a), var_0.b);
    global1 = array<Struct_4, 32>();
    let var_2 = select(vec4<bool>(select(func_3(Struct_2(true), vec3<bool>(false, false, var_0.b.a)).x, arg_0.a.x, true), all(select(arg_0.a, arg_0.a, vec4<bool>(var_1.b.a, false, true, true))), u_input.b.x < ~0u, true), select(func_3(Struct_2(var_0.b.a), !vec3<bool>(true, arg_0.a.x, var_1.b.a)), select(arg_0.a, !arg_0.a, select(arg_0.a, select(vec4<bool>(false, true, var_1.b.a, true), vec4<bool>(true, true, arg_0.a.x, true), vec4<bool>(true, var_1.b.a, false, true)), select(vec4<bool>(false, arg_0.a.x, false, var_1.b.a), vec4<bool>(false, var_1.b.a, arg_0.a.x, true), true))), false), var_0.b.a);
    return vec3<bool>(false, !(_wgslsmith_clamp_i32(var_0.a.x, 2147483647i, var_1.a.x) > u_input.c.x) & (max(0u, _wgslsmith_mod_u32(u_input.e.x, 11162u)) > u_input.e.x), -(~(-30159i)) == firstTrailingBit(u_input.c.x));
}

fn func_2() -> Struct_2 {
    var var_0 = u_input.d;
    var var_1 = func_4(Struct_1(!func_3(Struct_2(true), vec3<bool>(false, false, false)), 6038i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(255f * -134f))), 861f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-406f, 451f) - vec2<f32>(640f, 305f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1656f, -283f) - vec2<f32>(-251f, 473f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(1090f - 142f), _wgslsmith_f_op_f32(ceil(-1571f)), -1411f, 605f), vec4<f32>(_wgslsmith_f_op_f32(290f + -477f), 1000f, _wgslsmith_f_op_f32(1820f + -394f), _wgslsmith_f_op_f32(-655f + 146f)), false))));
    var_0 = countOneBits(~(_wgslsmith_clamp_u32(68389u, u_input.b.x & 24059u, 0u) | u_input.a.x));
    var_0 = firstTrailingBit(~u_input.a.x);
    let var_2 = u_input.d << (~u_input.b.x % 32u);
    return Struct_2(var_1.x);
}

fn func_1(arg_0: Struct_3, arg_1: vec4<u32>) -> f32 {
    global2 = u_input.c.x;
    global2 = arg_0.a.x;
    global2 = -2722i;
    var var_0 = func_2();
    let var_1 = func_2();
    return 412f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(func_1(Struct_3(vec4<i32>(~(-65031i), u_input.c.x, _wgslsmith_mod_i32(u_input.c.x, u_input.c.x), 2147483647i & u_input.c.x), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1297f, 371f))))), ~abs(vec4<u32>(u_input.b.x, 47012u, 83959u, 16625u)) & vec4<u32>(u_input.b.x, u_input.b.x, 88850u, u_input.b.x | u_input.e.x))) != 674f;
    let var_0 = Struct_3(vec4<i32>(-50598i, -45231i, _wgslsmith_clamp_i32(u_input.c.x, _wgslsmith_add_i32(u_input.c.x, 26838i), _wgslsmith_mod_i32(-38664i, -1i)), u_input.c.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -244f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1929f, 378f)))), _wgslsmith_f_op_f32(-300f * 346f))));
    var var_1 = select(vec4<bool>(true, true, true, false), select(!func_3(Struct_2(false), vec3<bool>(true, true, true)), select(select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)), true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), false), vec4<bool>(false, false, func_4(Struct_1(vec4<bool>(true, false, false, true), 1i, var_0.b.x, vec2<f32>(var_0.b.x, -657f), vec4<f32>(var_0.b.x, var_0.b.x, 1497f, var_0.b.x))).x, _wgslsmith_div_f32(var_0.b.x, -850f) < _wgslsmith_div_f32(117f, 107f))), select(vec4<bool>(true, !all(vec2<bool>(false, true)), !func_3(Struct_2(false), vec3<bool>(true, true, true)).x, var_0.b.x < _wgslsmith_f_op_f32(1000f + -987f)), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false))), !select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(var_0.b.x * 1171f), _wgslsmith_f_op_f32(func_1(var_0, u_input.b)), _wgslsmith_f_op_f32(f32(-1f) * -915f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -117f)));
    global0 = var_1.x;
    var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(var_0, u_input.b)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.x)))), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-829f, -1009f) + var_2.x))), var_0.b.x, 535f));
    let var_3 = Struct_3(min(max(var_0.a, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, var_0.a.x, 2147483647i, 46849i), select(vec4<i32>(-23552i, u_input.c.x, var_0.a.x, var_0.a.x), var_0.a, vec4<bool>(var_1.x, true, var_1.x, false)))), var_0.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1960f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.b, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1604f, -1471f))), true)) - vec2<f32>(-1086f, _wgslsmith_f_op_f32(-var_2.x)))));
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + var_3.b.x)));
}

