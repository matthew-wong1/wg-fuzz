struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec4<u32>(1u, 24748u, 4294967295u, 1u), vec4<u32>(4294967295u, 52791u, 1u, 38579u), vec4<f32>(-1586f, 1000f, -1000f, -284f), vec3<i32>(-1i, 2147483647i, -15146i)), Struct_1(vec4<u32>(86555u, 4294967295u, 32985u, 5936u), vec4<u32>(564u, 0u, 1u, 5019u), vec4<f32>(-2003f, 1000f, -1000f, -1788f), vec3<i32>(-1i, -19744i, -15288i)), Struct_1(vec4<u32>(1u, 4294967295u, 1u, 1u), vec4<u32>(0u, 26541u, 49850u, 4294967295u), vec4<f32>(-1000f, -705f, 1000f, 1028f), vec3<i32>(-22122i, -22337i, 24599i)), Struct_1(vec4<u32>(48175u, 1u, 75023u, 25033u), vec4<u32>(25239u, 47051u, 100222u, 100674u), vec4<f32>(-1000f, 562f, 456f, -522f), vec3<i32>(2147483647i, i32(-2147483648), 0i)), Struct_1(vec4<u32>(48332u, 8436u, 4294967295u, 67561u), vec4<u32>(4294967295u, 100419u, 1u, 42337u), vec4<f32>(420f, -1091f, 1000f, 1130f), vec3<i32>(67247i, -1i, 4825i)), Struct_1(vec4<u32>(57265u, 0u, 41018u, 26467u), vec4<u32>(1u, 10918u, 4294967295u, 4294967295u), vec4<f32>(1030f, 1863f, 765f, 210f), vec3<i32>(2147483647i, 18744i, 8648i)), Struct_1(vec4<u32>(1u, 4294967295u, 6694u, 4294967295u), vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec4<f32>(1519f, 1004f, 757f, 343f), vec3<i32>(0i, -1i, i32(-2147483648))), Struct_1(vec4<u32>(17691u, 4294967295u, 4294967295u, 31270u), vec4<u32>(0u, 15992u, 8808u, 60692u), vec4<f32>(-1609f, 333f, -798f, 1098f), vec3<i32>(48078i, 0i, 1438i)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 10652u, 4294967295u), vec4<u32>(1u, 0u, 81387u, 0u), vec4<f32>(-1826f, -418f, -1576f, 1002f), vec3<i32>(2147483647i, 1i, 2147483647i)), Struct_1(vec4<u32>(1u, 4294967295u, 91688u, 4294967295u), vec4<u32>(25711u, 1u, 35147u, 71634u), vec4<f32>(-357f, 1382f, 254f, -501f), vec3<i32>(-8218i, -27423i, 2147483647i)), Struct_1(vec4<u32>(4294967295u, 0u, 82766u, 4294967295u), vec4<u32>(34147u, 0u, 4294967295u, 0u), vec4<f32>(174f, 675f, 1522f, -539f), vec3<i32>(18328i, i32(-2147483648), i32(-2147483648))), Struct_1(vec4<u32>(11130u, 24643u, 1u, 1u), vec4<u32>(4294967295u, 47115u, 0u, 35867u), vec4<f32>(1000f, 829f, 1576f, -144f), vec3<i32>(i32(-2147483648), 3460i, 2147483647i)), Struct_1(vec4<u32>(4294967295u, 43931u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 1u, 27688u, 0u), vec4<f32>(386f, -2113f, 913f, -1293f), vec3<i32>(2147483647i, 1i, -28096i)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 32280u, 4294967295u), vec4<u32>(4294967295u, 0u, 4294967295u, 1u), vec4<f32>(-2629f, -441f, 1689f, 1214f), vec3<i32>(2147483647i, -17786i, i32(-2147483648))), Struct_1(vec4<u32>(64049u, 1u, 22767u, 1u), vec4<u32>(4294967295u, 8302u, 8334u, 0u), vec4<f32>(894f, 1091f, 567f, 650f), vec3<i32>(-1i, 2147483647i, i32(-2147483648))), Struct_1(vec4<u32>(1u, 1u, 0u, 8230u), vec4<u32>(4294967295u, 3708u, 4294967295u, 9068u), vec4<f32>(-1501f, 1243f, 1377f, 2208f), vec3<i32>(36156i, 2147483647i, 0i)), Struct_1(vec4<u32>(66257u, 4294967295u, 37907u, 4294967295u), vec4<u32>(38868u, 37880u, 1u, 0u), vec4<f32>(-3346f, 336f, 272f, 620f), vec3<i32>(-1i, -37719i, -1i)), Struct_1(vec4<u32>(1370u, 4294967295u, 4294967295u, 1u), vec4<u32>(2411u, 8943u, 25316u, 0u), vec4<f32>(720f, -1827f, 1323f, 477f), vec3<i32>(-1i, i32(-2147483648), -27498i)), Struct_1(vec4<u32>(0u, 25420u, 1u, 33457u), vec4<u32>(35550u, 1u, 4294967295u, 72006u), vec4<f32>(619f, -217f, -1580f, 1522f), vec3<i32>(-31954i, -29104i, -5407i)), Struct_1(vec4<u32>(111951u, 0u, 1u, 4294967295u), vec4<u32>(20691u, 74321u, 0u, 1u), vec4<f32>(-241f, -642f, 404f, 1000f), vec3<i32>(-36268i, 1i, 68972i)), Struct_1(vec4<u32>(4294967295u, 1u, 76034u, 1u), vec4<u32>(4294967295u, 1u, 0u, 0u), vec4<f32>(-1000f, -1172f, 261f, 385f), vec3<i32>(0i, -41120i, -59853i)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = global0[_wgslsmith_index_u32(2243u, 21u)];
    var var_1 = var_0.c;
    global0 = array<Struct_1, 21>();
    let var_2 = var_0.c;
    global0 = array<Struct_1, 21>();
    return vec4<u32>(~(~_wgslsmith_dot_vec4_u32(var_0.b, var_0.a) << (~4294967295u % 32u)), ~(~arg_1.a.x), ~_wgslsmith_dot_vec4_u32(var_0.a ^ vec4<u32>(1u, u_input.c, var_0.a.x, 0u), _wgslsmith_div_vec4_u32(arg_1.a, ~vec4<u32>(var_0.a.x, var_0.a.x, 0u, 40004u))), select(~u_input.c, abs(max(1u, 4294967295u)), true));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_add_vec4_u32(arg_0.a, vec4<u32>(1u, arg_0.b.x, arg_0.b.x, 30178u)), countOneBits(arg_0.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.c - arg_0.c) * _wgslsmith_f_op_vec4_f32(min(arg_0.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(804f, arg_0.c.x, arg_0.c.x, -826f))))), _wgslsmith_div_vec3_i32(-arg_0.d, _wgslsmith_add_vec3_i32(max(vec3<i32>(u_input.d.x, 2147483647i, 2147483647i) & vec3<i32>(arg_1.x, arg_0.d.x, 0i), countOneBits(u_input.b.xyy)), abs(arg_1 << (arg_0.a.wxz % vec3<u32>(32u))))));
    let var_1 = arg_0;
    var var_2 = Struct_1(abs(_wgslsmith_sub_vec4_u32(arg_0.a, vec4<u32>(~4294967295u, _wgslsmith_mod_u32(arg_0.a.x, 30345u), ~u_input.e.x, reverseBits(58424u)))), min(var_0.a & _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.b.x, 4294967295u, 0u, var_1.b.x), _wgslsmith_mult_vec4_u32(arg_0.b, var_1.b)), var_1.a), vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.c.x)), var_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(603f * -2272f)) - arg_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-633f)))))), u_input.b.wyz);
    global0 = array<Struct_1, 21>();
    var_2 = Struct_1(countOneBits(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(var_0.a.x, u_input.c, arg_0.a.x, 1u), var_0.b, vec4<bool>(true, true, true, true)), ~arg_0.b, var_2.b >> (~var_2.b % vec4<u32>(32u)))), vec4<u32>(~(~max(410u, 66860u)), ~select(var_0.b.x, _wgslsmith_clamp_u32(var_1.b.x, 0u, 16459u), true), 17547u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.x, 4294967295u, u_input.c), vec3<u32>(u_input.e.x, u_input.c, 62622u)) << (~(~1u) % 32u)), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(828f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1487f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x)) + _wgslsmith_f_op_f32(exp2(var_1.c.x))), var_2.c.x), ~(-(~(u_input.b.xxw >> (var_2.a.xwz % vec3<u32>(32u))))));
    return select(vec3<bool>(true, any(vec2<bool>(true, true)) && select(true, true, true), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, all(vec3<bool>(false, true, false)), true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)), !(!(countOneBits(-2147483647i) > -var_0.d.x)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec2<f32>) -> bool {
    var var_0 = select(vec3<bool>(true, true, !any(vec4<bool>(true, true, true, true))), func_4(Struct_1(arg_2.b, func_3(arg_2.d << (arg_2.a.yyx % vec3<u32>(32u)), Struct_1(vec4<u32>(u_input.c, u_input.e.x, u_input.e.x, 67705u), vec4<u32>(u_input.c, arg_2.b.x, 2714u, arg_2.a.x), vec4<f32>(arg_2.c.x, -779f, 1133f, 1364f), vec3<i32>(10724i, 2147483647i, -37632i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-519f, arg_3.x, -834f, arg_3.x)) + arg_2.c), ~countOneBits(arg_1)), ~arg_1 << (vec3<u32>(u_input.e.x, arg_2.a.x, 1u) % vec3<u32>(32u))), vec3<bool>(func_4(arg_2, _wgslsmith_clamp_vec3_i32(arg_2.d, _wgslsmith_add_vec3_i32(vec3<i32>(arg_1.x, -36086i, arg_2.d.x), arg_0.wxy), vec3<i32>(arg_2.d.x, 2147483647i, arg_1.x))).x, any(vec4<bool>(any(vec3<bool>(false, false, true)), select(false, false, false), true, true)), true));
    let var_1 = Struct_1(vec4<u32>(arg_2.a.x, u_input.c, u_input.c, firstLeadingBit(arg_2.a.x >> (2810u % 32u))), vec4<u32>(u_input.c, u_input.c, _wgslsmith_div_u32(countOneBits(u_input.e.x), u_input.e.x), _wgslsmith_clamp_u32(17025u, ~u_input.e.x << (firstLeadingBit(55138u) % 32u), 1u)), arg_2.c, vec3<i32>(arg_1.x, -_wgslsmith_clamp_i32(u_input.d.x, 22441i, -16320i), _wgslsmith_div_i32(2147483647i, -13542i)));
    var_0 = vec3<bool>(all(vec4<bool>(var_0.x, !all(var_0.zz), var_0.x, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.c.x), 1653f) > var_1.c.x, false);
    let var_2 = var_1.a.x;
    var_0 = vec3<bool>(!func_4(Struct_1(countOneBits(arg_2.b), var_1.a >> (arg_2.b % vec4<u32>(32u)), var_1.c, arg_1), arg_0.wxw).x, false, !any(vec4<bool>(var_0.x, false == var_0.x, func_4(global0[_wgslsmith_index_u32(0u, 21u)], vec3<i32>(-2147483647i, var_1.d.x, -38821i)).x, var_0.x)));
    return false;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = vec3<f32>(1239f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-469f - _wgslsmith_div_f32(-813f, 1121f)))) + -898f), -1000f);
    let var_1 = ~u_input.e.x;
    var var_2 = select(vec2<bool>(!((u_input.b.x < -18180i) && true), !(_wgslsmith_sub_u32(67038u, arg_1.x) < (u_input.c & 40208u))), select(!vec2<bool>(u_input.d.x != u_input.b.x, all(vec2<bool>(false, false))), vec2<bool>(!func_2(vec4<i32>(u_input.d.x, 2147483647i, 12454i, -1i), vec3<i32>(-1i, u_input.a, u_input.d.x), global0[_wgslsmith_index_u32(37092u, 21u)], var_0.yx), true != all(vec4<bool>(false, true, false, true))), vec2<bool>(!(u_input.b.x < 54825i), false)), false);
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1623f, var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1847f + var_0.x), var_0.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1000f, var_0.x)))));
    let var_3 = arg_0.yz;
    return global0[_wgslsmith_index_u32(4294967295u, 21u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -161f);
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    let var_1 = func_1(abs(vec3<u32>(u_input.c, u_input.e.x, abs(_wgslsmith_div_u32(u_input.c, u_input.c)))), ~vec4<u32>(~_wgslsmith_sub_u32(1u, u_input.e.x), _wgslsmith_sub_u32(0u, u_input.c), max(583u, u_input.e.x), _wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 4294967295u, u_input.e.x, 4294967295u), vec4<u32>(u_input.c, 6097u, u_input.e.x, 48323u), vec4<bool>(false, false, true, false)), vec4<u32>(u_input.e.x, u_input.e.x, 2163u, u_input.e.x))));
    global0 = array<Struct_1, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0, select(~func_1(~vec3<u32>(16417u, 0u, 1u), var_1.b).b, var_1.a, true), ~vec4<i32>(min(-24593i, var_1.d.x), ~max(12413i, var_1.d.x), -7705i, u_input.d.x));
}

