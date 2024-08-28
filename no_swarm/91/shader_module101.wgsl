struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 19>;

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(2147483647i, vec2<f32>(-796f, -1995f), vec3<f32>(301f, 472f, -2357f), false, 32642u), Struct_1(-37342i, vec2<f32>(-488f, 1779f), vec3<f32>(352f, -107f, -1426f), true, 0u), Struct_1(-6025i, vec2<f32>(565f, -1000f), vec3<f32>(1478f, 322f, 1549f), true, 1u), Struct_1(i32(-2147483648), vec2<f32>(-269f, -415f), vec3<f32>(153f, 121f, 2013f), true, 4294967295u), Struct_1(-12201i, vec2<f32>(600f, 864f), vec3<f32>(-1000f, -102f, 900f), false, 84459u), Struct_1(-32975i, vec2<f32>(675f, 166f), vec3<f32>(1670f, -710f, 1238f), true, 27295u), Struct_1(0i, vec2<f32>(-354f, -1416f), vec3<f32>(719f, 1282f, -182f), true, 0u), Struct_1(31840i, vec2<f32>(1530f, 147f), vec3<f32>(1462f, 2101f, 1443f), false, 23399u), Struct_1(-35397i, vec2<f32>(-1781f, 585f), vec3<f32>(141f, 247f, 378f), true, 1u), Struct_1(0i, vec2<f32>(-769f, -2414f), vec3<f32>(-1881f, -1610f, 1923f), true, 1u), Struct_1(58712i, vec2<f32>(984f, -763f), vec3<f32>(504f, -860f, -1282f), false, 63797u), Struct_1(39141i, vec2<f32>(581f, 852f), vec3<f32>(2193f, 2269f, 831f), false, 34756u), Struct_1(-37621i, vec2<f32>(-166f, -159f), vec3<f32>(1215f, 705f, 1620f), false, 4294967295u), Struct_1(i32(-2147483648), vec2<f32>(742f, 1028f), vec3<f32>(-423f, -932f, 486f), true, 1u), Struct_1(13975i, vec2<f32>(750f, -1476f), vec3<f32>(-604f, -1991f, 1380f), true, 4294967295u), Struct_1(-53758i, vec2<f32>(560f, 381f), vec3<f32>(-937f, 948f, 1000f), true, 1u), Struct_1(2147483647i, vec2<f32>(-292f, 220f), vec3<f32>(537f, 169f, -421f), true, 65959u), Struct_1(-55577i, vec2<f32>(-278f, -1104f), vec3<f32>(-1442f, -175f, 1100f), true, 10887u), Struct_1(0i, vec2<f32>(-1547f, -683f), vec3<f32>(-901f, -1450f, -308f), true, 4294967295u), Struct_1(1i, vec2<f32>(2545f, 143f), vec3<f32>(222f, -511f, -521f), false, 19020u), Struct_1(-2324i, vec2<f32>(791f, -730f), vec3<f32>(-406f, -492f, -759f), false, 0u), Struct_1(10036i, vec2<f32>(509f, -1732f), vec3<f32>(-1000f, 132f, -682f), true, 11496u), Struct_1(i32(-2147483648), vec2<f32>(567f, 736f), vec3<f32>(1062f, -1393f, 681f), false, 1u), Struct_1(26473i, vec2<f32>(-742f, -105f), vec3<f32>(169f, 292f, 1195f), false, 4294967295u), Struct_1(0i, vec2<f32>(-250f, -1000f), vec3<f32>(329f, 2253f, 204f), false, 15214u), Struct_1(2147483647i, vec2<f32>(-719f, 675f), vec3<f32>(-544f, -756f, 890f), true, 0u), Struct_1(0i, vec2<f32>(206f, -1000f), vec3<f32>(463f, 129f, -425f), true, 4294967295u), Struct_1(0i, vec2<f32>(-1000f, -1340f), vec3<f32>(-1246f, -201f, -291f), true, 27676u));

var<private> global2: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(30710i, vec2<f32>(531f, -1000f), vec3<f32>(739f, 623f, -404f), false, 3813u), false, Struct_1(-2018i, vec2<f32>(1658f, 1055f), vec3<f32>(1213f, -372f, 232f), false, 61823u)), Struct_2(Struct_1(0i, vec2<f32>(883f, -858f), vec3<f32>(-754f, 274f, 424f), false, 4294967295u), true, Struct_1(-1i, vec2<f32>(-1722f, -724f), vec3<f32>(-844f, -503f, -980f), false, 687u)), Struct_2(Struct_1(-4736i, vec2<f32>(734f, 114f), vec3<f32>(-411f, -605f, -125f), true, 30198u), true, Struct_1(-11478i, vec2<f32>(407f, 710f), vec3<f32>(-671f, 262f, 447f), true, 77320u)), Struct_2(Struct_1(-6855i, vec2<f32>(634f, 1012f), vec3<f32>(-117f, 452f, -969f), false, 1u), false, Struct_1(19820i, vec2<f32>(-2353f, 1491f), vec3<f32>(-775f, 2258f, -187f), true, 0u)), Struct_2(Struct_1(0i, vec2<f32>(-1059f, 292f), vec3<f32>(3830f, 421f, 1669f), true, 43165u), false, Struct_1(1156i, vec2<f32>(-1904f, 1473f), vec3<f32>(2356f, 2146f, -840f), true, 1u)), Struct_2(Struct_1(8689i, vec2<f32>(977f, -782f), vec3<f32>(-1274f, 302f, -893f), true, 0u), false, Struct_1(2147483647i, vec2<f32>(796f, 1000f), vec3<f32>(1729f, -178f, -809f), true, 9791u)), Struct_2(Struct_1(54905i, vec2<f32>(1409f, -1000f), vec3<f32>(-2654f, 596f, -141f), true, 0u), false, Struct_1(-34940i, vec2<f32>(242f, -274f), vec3<f32>(517f, 1279f, -1028f), true, 4294967295u)), Struct_2(Struct_1(1i, vec2<f32>(-569f, 1281f), vec3<f32>(1043f, -1836f, 823f), true, 0u), true, Struct_1(i32(-2147483648), vec2<f32>(-472f, 732f), vec3<f32>(-883f, 583f, -815f), false, 14714u)));

var<private> global3: array<vec2<bool>, 4> = array<vec2<bool>, 4>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> bool {
    var var_0 = any(vec2<bool>(!(!any(vec2<bool>(arg_0.d, true))), !(!(!arg_0.d))));
    global2 = array<Struct_2, 8>();
    global2 = array<Struct_2, 8>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -435f);
    let var_2 = u_input.c;
    return false;
}

fn func_2(arg_0: f32) -> bool {
    var var_0 = vec4<u32>(~u_input.c.x, 1u, max(countOneBits(24922u), u_input.b), firstLeadingBit(0u >> (~u_input.c.x % 32u)) & u_input.b);
    var var_1 = abs(u_input.e) << (u_input.c % vec4<u32>(32u));
    global2 = array<Struct_2, 8>();
    global2 = array<Struct_2, 8>();
    let var_2 = arg_0;
    return false;
}

fn func_3(arg_0: vec4<bool>) -> vec3<i32> {
    global3 = array<vec2<bool>, 4>();
    let var_0 = -1549f;
    global1 = array<Struct_1, 28>();
    global3 = array<vec2<bool>, 4>();
    global2 = array<Struct_2, 8>();
    return u_input.e.xxy;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: f32) -> Struct_2 {
    var var_0 = vec4<i32>(22752i, -_wgslsmith_clamp_i32(1i, ~15261i, -16380i), 34449i, ~arg_0.x << (_wgslsmith_add_u32(min(u_input.b, u_input.b), select(u_input.c.x, 6916u, false)) % 32u)) & (firstTrailingBit(~vec4<i32>(32211i, 30030i, 0i, arg_1.x)) >> (u_input.c % vec4<u32>(32u)));
    global0 = array<vec4<f32>, 19>();
    var var_1 = arg_2;
    let var_2 = vec4<i32>(reverseBits(-26327i), -countOneBits(2147483647i), var_0.x, abs(arg_0.x)) & _wgslsmith_add_vec4_i32(abs(_wgslsmith_add_vec4_i32(vec4<i32>(37461i, var_0.x, 0i, 1i), vec4<i32>(arg_1.x, var_0.x, 2147483647i, var_0.x))), -u_input.e);
    global3 = array<vec2<bool>, 4>();
    return global2[_wgslsmith_index_u32(u_input.c.x, 8u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 8>();
    let var_0 = func_4(~_wgslsmith_clamp_vec3_i32(u_input.e.www, select(u_input.e.yxx, u_input.e.wwx, select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(39i, u_input.a), vec2<i32>(-58090i, u_input.d.x)), firstTrailingBit(-2147483647i), 61464i)), abs(~u_input.e.yww) | func_3(vec4<bool>(func_1(global1[_wgslsmith_index_u32(u_input.b, 28u)], vec3<f32>(-1752f, 159f, -104f)), all(vec3<bool>(true, false, true)), true, func_2(-1392f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1817f * -377f) - _wgslsmith_f_op_f32(1799f + 117f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -987f), -837f)));
    let var_1 = func_4(u_input.e.yyz, u_input.e.xxx, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b.x)), var_0.c.c.x), var_0.c.b.x))).a.e;
    let var_2 = Struct_1(-2147483647i, vec2<f32>(-618f, _wgslsmith_f_op_f32(-242f - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1953f, var_0.a.b.x), _wgslsmith_f_op_f32(-var_0.a.b.x))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.c.x, 385f, -1363f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1080f, var_0.a.b.x, -561f) - var_0.a.c))))), false, ~(~var_0.c.e));
    var var_3 = 72518i;
    let var_4 = vec4<u32>(4890u, var_0.a.e << (u_input.c.x % 32u), var_1, 48171u);
    global3 = array<vec2<bool>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(var_4, _wgslsmith_dot_vec4_u32(var_4, var_4), _wgslsmith_mult_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a.a, var_2.a, var_2.a) << (vec3<u32>(u_input.b, 21066u, 60075u) % vec3<u32>(32u)), vec3<i32>(2147483647i, var_0.c.a, -10675i)), u_input.e.xyw), _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.e.x, var_2.a), -select(var_2.a, -2147483647i, false), u_input.d.x | -var_0.c.a), ~var_2.a >> (abs(1u) % 32u)));
}

