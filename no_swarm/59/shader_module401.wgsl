struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: f32,
    d: vec3<f32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: f32,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -36387i;

var<private> global1: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(31029u, 1u, 30321u));

var<private> global2: vec3<f32>;

var<private> global3: array<Struct_5, 31> = array<Struct_5, 31>(Struct_5(false, Struct_3(706f, vec3<i32>(1i, -77642i, i32(-2147483648))), -494f, 42543i, vec3<f32>(-1241f, 110f, -537f)), Struct_5(false, Struct_3(1000f, vec3<i32>(-64529i, -49630i, 8692i)), 443f, 0i, vec3<f32>(813f, 316f, -2131f)), Struct_5(true, Struct_3(1926f, vec3<i32>(2147483647i, 14447i, -1i)), -807f, -1i, vec3<f32>(2757f, -119f, 1715f)), Struct_5(true, Struct_3(802f, vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648))), -465f, 18632i, vec3<f32>(1588f, -1028f, -1785f)), Struct_5(false, Struct_3(611f, vec3<i32>(14237i, -39138i, 10177i)), 1038f, 19673i, vec3<f32>(-1270f, 1611f, -834f)), Struct_5(false, Struct_3(-1024f, vec3<i32>(1i, 2147483647i, 23600i)), 314f, 1i, vec3<f32>(-968f, 1034f, -306f)), Struct_5(false, Struct_3(-127f, vec3<i32>(2147483647i, -23949i, -1i)), -753f, 25743i, vec3<f32>(1749f, -762f, 1543f)), Struct_5(true, Struct_3(1438f, vec3<i32>(44662i, 29347i, -34114i)), -413f, -1i, vec3<f32>(-305f, 1000f, -764f)), Struct_5(false, Struct_3(1705f, vec3<i32>(41501i, -30839i, -1i)), 889f, -36758i, vec3<f32>(854f, 351f, -1000f)), Struct_5(false, Struct_3(-2064f, vec3<i32>(-6704i, 0i, 0i)), -922f, -1i, vec3<f32>(-1000f, 819f, 207f)), Struct_5(false, Struct_3(1000f, vec3<i32>(-16082i, 42757i, 1i)), -972f, -1i, vec3<f32>(942f, 1000f, -654f)), Struct_5(true, Struct_3(-1155f, vec3<i32>(-17458i, 88688i, -1i)), 1440f, 0i, vec3<f32>(-384f, 606f, -102f)), Struct_5(false, Struct_3(-1632f, vec3<i32>(0i, -1i, 1i)), -625f, i32(-2147483648), vec3<f32>(256f, -1822f, 732f)), Struct_5(false, Struct_3(884f, vec3<i32>(519i, -36725i, -25287i)), 2837f, -42518i, vec3<f32>(1545f, 1050f, 246f)), Struct_5(true, Struct_3(444f, vec3<i32>(-1i, -28107i, 20461i)), -686f, 2147483647i, vec3<f32>(-236f, -1577f, 211f)), Struct_5(true, Struct_3(-236f, vec3<i32>(-36807i, 1i, 2147483647i)), -288f, i32(-2147483648), vec3<f32>(110f, -544f, -691f)), Struct_5(true, Struct_3(-2038f, vec3<i32>(0i, 1i, 2147483647i)), -787f, -1i, vec3<f32>(-271f, -264f, -834f)), Struct_5(false, Struct_3(1015f, vec3<i32>(0i, -77298i, -10617i)), 1000f, 0i, vec3<f32>(-1935f, -835f, 1333f)), Struct_5(false, Struct_3(-427f, vec3<i32>(3322i, -21125i, 0i)), -2120f, 6768i, vec3<f32>(1318f, -1267f, 838f)), Struct_5(true, Struct_3(-1039f, vec3<i32>(0i, 26983i, 1i)), -2792f, 3789i, vec3<f32>(-1205f, 418f, 699f)), Struct_5(true, Struct_3(629f, vec3<i32>(-1i, -1i, i32(-2147483648))), 229f, 21676i, vec3<f32>(137f, -588f, 1098f)), Struct_5(true, Struct_3(1377f, vec3<i32>(-60978i, -37733i, 0i)), -141f, 4774i, vec3<f32>(207f, 694f, -1098f)), Struct_5(true, Struct_3(423f, vec3<i32>(480i, 0i, 1i)), 1176f, 2147483647i, vec3<f32>(-2717f, 168f, -252f)), Struct_5(false, Struct_3(3011f, vec3<i32>(-2707i, 0i, -109282i)), 855f, -5365i, vec3<f32>(-313f, 444f, 1000f)), Struct_5(false, Struct_3(-878f, vec3<i32>(25232i, 0i, 1i)), 508f, 6062i, vec3<f32>(-176f, -693f, 457f)), Struct_5(true, Struct_3(1206f, vec3<i32>(-1i, -2329i, 10757i)), -190f, -1i, vec3<f32>(-1311f, -944f, -102f)), Struct_5(true, Struct_3(-513f, vec3<i32>(-8221i, 0i, -1i)), 743f, -31684i, vec3<f32>(1694f, -441f, 271f)), Struct_5(true, Struct_3(-653f, vec3<i32>(27031i, 0i, 1i)), -316f, -65626i, vec3<f32>(309f, -1334f, 563f)), Struct_5(false, Struct_3(1249f, vec3<i32>(i32(-2147483648), 1i, 0i)), 724f, 1i, vec3<f32>(-1496f, -195f, 545f)), Struct_5(false, Struct_3(-2105f, vec3<i32>(1i, 1i, -43605i)), 461f, 2147483647i, vec3<f32>(-762f, -1966f, 244f)), Struct_5(false, Struct_3(-1000f, vec3<i32>(1805i, -1i, 41047i)), 375f, 44461i, vec3<f32>(269f, 295f, -464f)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_3) -> u32 {
    var var_0 = ~(-15825i) > (arg_2.b.x << (9299u % 32u));
    global3 = array<Struct_5, 31>();
    var var_1 = vec4<f32>(global2.x, _wgslsmith_f_op_f32(floor(arg_2.a)), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + global2.x) - global2.x), arg_2.a)));
    let var_2 = Struct_5(true, arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-699f)))), 2147483647i, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(var_1.zyy, vec3<f32>(global2.x, 277f, 436f), true))))))));
    let var_3 = -466f;
    return ~u_input.e;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> f32 {
    let var_0 = Struct_2(arg_0, false, Struct_1(vec4<u32>(0u, 4294967295u, countOneBits(u_input.e), u_input.e), u_input.d, vec4<bool>(any(arg_0.c), false, select(true, all(vec3<bool>(true, false, false)), all(arg_0.c.xxz)), arg_0.c.x), ~(~arg_1.x)), arg_0, arg_0);
    let var_1 = select(!(!var_0.e.c), vec4<bool>(any(vec3<bool>(arg_0.c.x, select(true, arg_0.c.x, true), any(vec2<bool>(true, false)))), !(4294967295u >= var_0.d.a.x) | all(vec4<bool>(true, true, false, arg_0.c.x)), any(arg_0.c.yy), any(vec2<bool>(arg_0.c.x, true))), select(vec4<bool>(!(!arg_0.c.x), true, any(arg_0.c), arg_0.c.x), arg_0.c, false | !(1007f < global2.x)));
    return global2.x;
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> i32 {
    let var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + -246f) - _wgslsmith_f_op_f32(func_3(Struct_1(arg_0.a, u_input.d, vec4<bool>(false, arg_1, arg_0.c.x, true), arg_0.d), max(vec4<i32>(u_input.b.x, u_input.a.x, 0i, arg_0.d), vec4<i32>(2147483647i, 2147483647i, u_input.b.x, -1i)))))), _wgslsmith_div_vec3_i32(u_input.b, select(u_input.b, -(~vec3<i32>(-17514i, -40285i, arg_0.d)), vec3<bool>(arg_1, all(vec4<bool>(false, false, arg_0.c.x, true)), any(arg_0.c)))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(step(global2.x, var_0.a)), u_input.b);
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a, -119f, var_0.a), vec3<f32>(228f, -1990f, -1703f))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-global2.x), 1000f, -244f)))));
    global3 = array<Struct_5, 31>();
    let var_2 = Struct_2(Struct_1(select(~arg_0.a, vec4<u32>(arg_0.a.x, u_input.c.x, _wgslsmith_sub_u32(u_input.e, u_input.e), ~41059u), select(vec4<bool>(arg_1, false, true, false), vec4<bool>(true, true, false, arg_1), vec4<bool>(arg_1, arg_0.c.x, true, arg_1))), var_1.b.yy, arg_0.c, ~u_input.d.x), all(select(!vec4<bool>(arg_0.c.x, arg_1, arg_1, arg_0.c.x), !select(arg_0.c, vec4<bool>(arg_0.c.x, true, arg_1, arg_0.c.x), true), true)), Struct_1(arg_0.a, (var_0.b.zx & (vec2<i32>(var_0.b.x, -1i) & arg_0.b)) ^ var_1.b.xy, vec4<bool>(arg_1, (35226u <= u_input.c.x) && true, arg_0.c.x, true), -1i), Struct_1(~(~abs(arg_0.a)), vec2<i32>(-var_1.b.x, var_0.b.x) & ~max(u_input.d, var_0.b.zz), vec4<bool>(any(select(vec4<bool>(arg_0.c.x, false, arg_0.c.x, false), arg_0.c, false)), (1i > arg_0.d) | !arg_1, arg_1, false), min(2147483647i, _wgslsmith_mult_i32(-26176i, ~arg_0.b.x))), arg_0);
    return 19125i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.e;
    var var_1 = Struct_3(522f, _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(min(u_input.b, u_input.b), min(u_input.b, u_input.b)), u_input.b, u_input.b) << ((vec3<u32>(_wgslsmith_div_u32(1u, 1u), 5620u, 57822u) >> (~(u_input.c ^ vec3<u32>(24828u, u_input.e, 1u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    global0 = abs(var_1.b.x);
    let var_2 = vec2<u32>(select(~_wgslsmith_clamp_u32(u_input.c.x, ~0u, ~4294967295u), u_input.c.x, !(false | (251f < global2.x))), func_1(-52716i, abs(vec4<i32>(1i, 7581i << (0u % 32u), -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 30582i, 1i), vec3<i32>(u_input.d.x, -2147483647i, var_1.b.x)))), Struct_3(var_1.a, _wgslsmith_mult_vec3_i32(firstLeadingBit(var_1.b), var_1.b))));
    var var_3 = vec3<i32>(~_wgslsmith_add_i32(15801i << ((u_input.e & var_2.x) % 32u), func_2(Struct_1(vec4<u32>(u_input.e, 30115u, 1u, 1u), vec2<i32>(var_1.b.x, 59810i), vec4<bool>(false, false, false, true), -2147483647i), any(vec2<bool>(true, false)))), u_input.a.x, func_2(Struct_1(~reverseBits(vec4<u32>(var_2.x, u_input.e, var_2.x, u_input.c.x)), -abs(vec2<i32>(var_1.b.x, -25992i)), vec4<bool>(all(vec3<bool>(false, true, false)), any(vec2<bool>(false, false)), false, true), -abs(0i)), 2147483647i < firstTrailingBit(-2147483647i)));
    var var_4 = Struct_2(Struct_1(_wgslsmith_add_vec4_u32(~(~vec4<u32>(4294967295u, var_2.x, u_input.c.x, 1u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, var_2.x, 16698u, u_input.e), vec4<u32>(47724u, 42632u, u_input.c.x, u_input.e))), select(vec2<i32>(~2147483647i, _wgslsmith_mod_i32(13251i, var_1.b.x)), _wgslsmith_clamp_vec2_i32(var_3.yy, select(vec2<i32>(u_input.a.x, 32540i), vec2<i32>(-1i, var_1.b.x), vec2<bool>(false, true)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, 1i), vec2<i32>(-37951i, var_3.x))), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), vec4<bool>(true, any(vec2<bool>(false, true)), (var_1.b.x << (1u % 32u)) < -2147483647i, !all(vec2<bool>(false, false))), -29069i), all(vec4<bool>(true, true, true, true)) & all(vec3<bool>(select(true, false, true), all(vec3<bool>(true, false, false)), true)), Struct_1(~reverseBits(vec4<u32>(4294967295u, 47990u, 7725u, 38069u)), var_1.b.xx, !(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true))), firstLeadingBit(_wgslsmith_add_i32(abs(-19988i), -2147483647i))), Struct_1(vec4<u32>(~_wgslsmith_div_u32(u_input.e, 27697u), u_input.c.x, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.e, var_2.x, var_2.x), vec4<u32>(0u, 1u, u_input.c.x, u_input.e))), u_input.c.x), vec2<i32>(1i, _wgslsmith_mult_i32(var_3.x, var_1.b.x)), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), var_3.x), Struct_1(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.e, u_input.c.x, 1u, u_input.c.x) & vec4<u32>(u_input.c.x, var_2.x, 20185u, var_2.x), reverseBits(vec4<u32>(var_2.x, 6014u, 4294967295u, 1u))), vec2<i32>(var_1.b.x, ~0i), vec4<bool>(true, (0u << (u_input.c.x % 32u)) <= 9202u, _wgslsmith_f_op_f32(-global2.x) <= var_1.a, _wgslsmith_f_op_f32(abs(1507f)) > _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(-61638i, 0i) | var_3.zy, var_1.b.xx) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(41549i, 2147483647i, var_3.x), u_input.b & var_1.b)));
    let var_5 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_4.e, vec4<i32>(u_input.b.x, u_input.a.x, var_1.b.x, 2147483647i)))) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(-var_1.a)))), Struct_3(var_1.a, ~countOneBits(vec3<i32>(u_input.a.x, u_input.b.x, -4654i)) | max(vec3<i32>(var_1.b.x, -33418i, u_input.b.x), vec3<i32>(2147483647i, var_4.a.b.x, -18765i))), var_1.a, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.x, _wgslsmith_mod_i32(var_3.x, 0i), ~var_4.c.d | var_4.c.d, -15920i >> (var_4.e.a.x % 32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(~u_input.a.x, -var_1.b.x, reverseBits(u_input.a.x), ~5351i), min(vec4<i32>(var_4.d.b.x, var_1.b.x, var_4.d.b.x, var_4.c.d), ~vec4<i32>(var_3.x, var_3.x, -18681i, var_4.d.d)), abs(vec4<i32>(-2147483647i, 11384i, var_3.x, var_4.c.b.x)) & ~vec4<i32>(1i, var_4.c.d, 0i, 27068i))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1000f - -268f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a))), _wgslsmith_f_op_f32(step(2516f, _wgslsmith_f_op_f32(-517f * global2.x)))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-767f, 1000f, _wgslsmith_f_op_f32(abs(-1785f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(351f, var_1.a, global2.x))), vec3<bool>(all(vec3<bool>(true, false, true)), true, !var_4.c.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_clamp_i32(~var_1.b.x, reverseBits(24796i), ~_wgslsmith_mod_i32(-66945i, var_4.a.d)), -85308i, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.d.x, 0i, var_4.e.d, -28393i) | max(vec4<i32>(6525i, 1i, -2147483647i, var_1.b.x), vec4<i32>(var_3.x, u_input.b.x, u_input.a.x, var_1.b.x)), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.b.x, u_input.d.x, -368i, -24658i), vec4<i32>(var_3.x, 24083i, -22236i, 51829i), vec4<i32>(37325i, 16531i, 14761i, -6460i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.x, u_input.d.x, -1i, -1i), vec4<i32>(1i, 1i, -39821i, 9869i), vec4<i32>(1607i, var_4.a.d, -1i, -2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_3.x, 41455i, -2256i), vec4<i32>(var_1.b.x, var_4.a.d, -2147483647i, -1i))))), 1u, vec2<u32>(select(~max(var_2.x, 19040u), ~61315u, _wgslsmith_f_op_f32(min(var_1.a, 590f)) <= -472f), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(46911u, 1u, u_input.c.x), ~vec3<u32>(var_4.c.a.x, var_4.c.a.x, 22957u)))));
}

