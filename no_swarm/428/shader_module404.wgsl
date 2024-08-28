struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec4<i32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, -13958i, 2147483647i, 1i);

var<private> global1: Struct_3 = Struct_3(Struct_1(true, 1i, 15881i, -7279i, false), Struct_2(vec4<i32>(0i, -49819i, i32(-2147483648), 0i), 60973u), vec2<i32>(1i, -22903i));

var<private> global2: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(1152f, Struct_3(Struct_1(true, 57313i, -29524i, 22703i, false), Struct_2(vec4<i32>(9197i, -1i, i32(-2147483648), -14132i), 4294967295u), vec2<i32>(-13125i, -11090i)), vec4<i32>(i32(-2147483648), 1i, -1i, -1i)), Struct_4(1000f, Struct_3(Struct_1(true, i32(-2147483648), 39302i, -22019i, false), Struct_2(vec4<i32>(i32(-2147483648), i32(-2147483648), -37628i, 16239i), 4294967295u), vec2<i32>(i32(-2147483648), 2147483647i)), vec4<i32>(2147483647i, -1i, 50635i, 7153i)), Struct_4(-828f, Struct_3(Struct_1(false, -20073i, -46730i, 27632i, false), Struct_2(vec4<i32>(45734i, 0i, 41399i, 6183i), 4294967295u), vec2<i32>(-40657i, -21431i)), vec4<i32>(1i, -13897i, 2147483647i, 1i)), Struct_4(-132f, Struct_3(Struct_1(false, 2147483647i, -17330i, 2147483647i, true), Struct_2(vec4<i32>(-9390i, 19735i, 2147483647i, -23299i), 37574u), vec2<i32>(0i, i32(-2147483648))), vec4<i32>(1i, 2147483647i, 36594i, -1i)), Struct_4(-1534f, Struct_3(Struct_1(false, -1191i, -1i, 11762i, true), Struct_2(vec4<i32>(1i, -1i, -75961i, i32(-2147483648)), 24529u), vec2<i32>(0i, 2147483647i)), vec4<i32>(16594i, 0i, 32066i, -10269i)), Struct_4(-309f, Struct_3(Struct_1(false, 1i, -35856i, 21383i, false), Struct_2(vec4<i32>(1i, 2147483647i, -35466i, -12658i), 255u), vec2<i32>(0i, -25143i)), vec4<i32>(i32(-2147483648), 55263i, -1i, 49104i)), Struct_4(-1000f, Struct_3(Struct_1(true, 16900i, 21183i, 1i, false), Struct_2(vec4<i32>(-27028i, 2147483647i, 3950i, i32(-2147483648)), 48223u), vec2<i32>(2147483647i, -26354i)), vec4<i32>(2147483647i, -57073i, -6339i, -1i)), Struct_4(-583f, Struct_3(Struct_1(true, 0i, -12349i, -2808i, false), Struct_2(vec4<i32>(-1i, -21395i, i32(-2147483648), 27188i), 32951u), vec2<i32>(-13866i, i32(-2147483648))), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, -19763i)), Struct_4(-1758f, Struct_3(Struct_1(true, -3327i, -1i, -1i, true), Struct_2(vec4<i32>(0i, -30770i, 1i, -44747i), 0u), vec2<i32>(-1i, 0i)), vec4<i32>(-33809i, -16390i, i32(-2147483648), 13643i)), Struct_4(-168f, Struct_3(Struct_1(true, 16934i, 9634i, 0i, false), Struct_2(vec4<i32>(52173i, i32(-2147483648), 2147483647i, 2147483647i), 55486u), vec2<i32>(1i, i32(-2147483648))), vec4<i32>(i32(-2147483648), 1i, 37488i, i32(-2147483648))), Struct_4(-1765f, Struct_3(Struct_1(false, 7004i, 2147483647i, 1i, true), Struct_2(vec4<i32>(-16745i, 1i, -35089i, -20002i), 29367u), vec2<i32>(21269i, 27349i)), vec4<i32>(32533i, -1i, -47565i, -12170i)), Struct_4(-1139f, Struct_3(Struct_1(true, 14362i, 6458i, 1i, false), Struct_2(vec4<i32>(-17333i, 1i, -1i, -1i), 0u), vec2<i32>(1i, 1i)), vec4<i32>(i32(-2147483648), 43325i, -14513i, 0i)), Struct_4(1771f, Struct_3(Struct_1(false, -4702i, 0i, 0i, false), Struct_2(vec4<i32>(-30989i, -1i, 0i, -1i), 0u), vec2<i32>(-15703i, 1i)), vec4<i32>(-23848i, 2147483647i, 3261i, 0i)), Struct_4(1191f, Struct_3(Struct_1(false, -22646i, -49918i, 4466i, true), Struct_2(vec4<i32>(14453i, 2147483647i, -15631i, -1i), 1u), vec2<i32>(25174i, -19927i)), vec4<i32>(0i, i32(-2147483648), 2147483647i, -15576i)), Struct_4(-1110f, Struct_3(Struct_1(true, -21869i, -72534i, -25117i, false), Struct_2(vec4<i32>(-12838i, 1i, 1i, 0i), 3888u), vec2<i32>(-12452i, 1811i)), vec4<i32>(-19614i, -1i, 0i, -21776i)), Struct_4(-1207f, Struct_3(Struct_1(false, 16686i, 0i, -49550i, false), Struct_2(vec4<i32>(-66890i, 16512i, 2147483647i, -8090i), 12936u), vec2<i32>(-44222i, -1i)), vec4<i32>(-11128i, 74189i, i32(-2147483648), -13510i)));

var<private> global3: array<vec3<f32>, 23> = array<vec3<f32>, 23>(vec3<f32>(139f, 280f, 502f), vec3<f32>(-599f, 618f, 1608f), vec3<f32>(286f, -1000f, -1314f), vec3<f32>(-826f, -1093f, 1473f), vec3<f32>(-716f, -605f, -1419f), vec3<f32>(130f, 1000f, 541f), vec3<f32>(-366f, -654f, -1000f), vec3<f32>(-419f, 355f, 1000f), vec3<f32>(-1382f, 868f, -1072f), vec3<f32>(-502f, -1000f, 965f), vec3<f32>(-1142f, 1054f, -510f), vec3<f32>(-388f, -826f, -293f), vec3<f32>(-1007f, 360f, -1000f), vec3<f32>(460f, -831f, -683f), vec3<f32>(624f, -1625f, 475f), vec3<f32>(1483f, 1233f, 568f), vec3<f32>(-2000f, -1301f, 1083f), vec3<f32>(-286f, 829f, -1888f), vec3<f32>(845f, 438f, 152f), vec3<f32>(-1623f, 1181f, 1431f), vec3<f32>(-299f, -2682f, 291f), vec3<f32>(-1228f, -2242f, -1996f), vec3<f32>(-1700f, -687f, 1774f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<u32>) -> i32 {
    var var_0 = vec4<bool>(global1.a.e, global1.a.a, any(!vec2<bool>(!global1.a.a, global1.a.a | true)), all(select(vec2<bool>(true, true), !vec2<bool>(global1.a.a, global1.a.e), vec2<bool>(false, false))) || false);
    return arg_0.x;
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: bool, arg_3: u32) -> f32 {
    global2 = array<Struct_4, 16>();
    global2 = array<Struct_4, 16>();
    var var_0 = ~1u;
    var var_1 = global0.wxz;
    global1 = arg_0;
    return _wgslsmith_div_f32(-956f, 1341f);
}

fn func_2(arg_0: i32, arg_1: vec3<bool>) -> Struct_3 {
    global3 = array<vec3<f32>, 23>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(169f - _wgslsmith_f_op_f32(-470f - -1460f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1074f, -370f))), _wgslsmith_f_op_f32(-979f - 2900f), -2122f);
    var var_1 = Struct_4(_wgslsmith_f_op_f32(func_3(Struct_3(global1.a, global1.b, countOneBits(global0.yy ^ global1.c)), ~abs(vec4<u32>(10179u, u_input.a, global1.b.b, 47223u)), false || any(select(vec4<bool>(global1.a.a, arg_1.x, true, false), vec4<bool>(true, global1.a.e, global1.a.e, arg_1.x), vec4<bool>(global1.a.a, false, false, true))), 0u)), Struct_3(Struct_1((-12214i << (global1.b.b % 32u)) >= reverseBits(-1907i), _wgslsmith_sub_i32(global1.c.x, ~arg_0), ~(-18184i), ~firstTrailingBit(2147483647i), any(select(vec4<bool>(arg_1.x, true, true, false), vec4<bool>(global1.a.e, global1.a.e, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, true, true, global1.a.e)))), Struct_2(global1.b.a, ~0u << (_wgslsmith_add_u32(global1.b.b, global1.b.b) % 32u)), global0.wx), max(~vec4<i32>(~1i, firstLeadingBit(global1.b.a.x), _wgslsmith_sub_i32(1i, -14804i), select(global1.c.x, 624i, arg_1.x)), ~abs(-vec4<i32>(global1.c.x, 2147483647i, -2147483647i, -2147483647i))));
    var var_2 = _wgslsmith_add_u32(countOneBits(global1.b.b), min(0u, ~(~23403u)));
    let var_3 = vec2<u32>(~global1.b.b, max(1u, 4294967295u) | _wgslsmith_sub_u32(min(_wgslsmith_sub_u32(u_input.a, global1.b.b), var_1.b.b.b & 57558u), 1u));
    return Struct_3(global1.a, Struct_2(_wgslsmith_mult_vec4_i32(min(var_1.c, _wgslsmith_add_vec4_i32(global1.b.a, vec4<i32>(global0.x, var_1.b.c.x, -1541i, 1i))), ~(-global1.b.a)), var_1.b.b.b), _wgslsmith_clamp_vec2_i32(global1.c, abs(global1.c), vec2<i32>(abs(global0.x), countOneBits(arg_0 << (22747u % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a.e;
    global1 = func_2(_wgslsmith_dot_vec4_i32(-(~(-global1.b.a)), vec4<i32>(global0.x, _wgslsmith_mult_i32(global1.a.c, func_1(global1.c, u_input.b)), -_wgslsmith_sub_i32(global0.x, global1.b.a.x), global0.x)), select(!vec3<bool>(true, true & global1.a.a, !global1.a.e), !vec3<bool>(false, all(vec3<bool>(global1.a.a, true, global1.a.e)), all(vec3<bool>(global1.a.a, global1.a.e, global1.a.e))), true));
    var var_1 = ~(~(~firstTrailingBit(vec4<u32>(56885u, 9305u, 0u, 54392u))));
    global0 = firstLeadingBit(vec4<i32>(~(~(-8668i)), -5713i, ~_wgslsmith_mod_i32(-24283i, global1.b.a.x), global0.x) << (reverseBits(~(~vec4<u32>(u_input.c, 14991u, var_1.x, 11060u))) % vec4<u32>(32u)));
    global2 = array<Struct_4, 16>();
    global0 = ~(vec4<i32>(firstLeadingBit(66188i), global0.x ^ -global0.x, 17470i, -func_2(global0.x, vec3<bool>(global1.a.a, true, false)).b.a.x) ^ ~global1.b.a);
    global2 = array<Struct_4, 16>();
    global0 = global1.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(920f, ~0u);
}

