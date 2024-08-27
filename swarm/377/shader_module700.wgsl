struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 8>;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(false, vec3<u32>(4294967295u, 4294967295u, 38607u), vec3<i32>(-1i, 7790i, -11346i), vec3<f32>(862f, -819f, -1267f)), Struct_1(false, vec3<u32>(1u, 48562u, 47486u), vec3<i32>(-10898i, -6605i, i32(-2147483648)), vec3<f32>(511f, 614f, 655f)), Struct_1(true, vec3<u32>(0u, 4294967295u, 4294967295u), vec3<i32>(2147483647i, 27551i, 0i), vec3<f32>(975f, -116f, -490f)), Struct_1(true, vec3<u32>(4294967295u, 0u, 27735u), vec3<i32>(0i, 0i, 2147483647i), vec3<f32>(-499f, 149f, 222f)), Struct_1(false, vec3<u32>(1u, 1u, 4294967295u), vec3<i32>(-1i, 1i, 11302i), vec3<f32>(650f, 1198f, 1000f)), Struct_1(false, vec3<u32>(76152u, 1u, 0u), vec3<i32>(8976i, -19906i, 44215i), vec3<f32>(891f, -1279f, 399f)), Struct_1(false, vec3<u32>(14929u, 0u, 4294967295u), vec3<i32>(12528i, -62705i, 1i), vec3<f32>(-1133f, 905f, -219f)), Struct_1(true, vec3<u32>(1u, 1u, 2396u), vec3<i32>(53990i, 60373i, 0i), vec3<f32>(319f, -219f, 107f)), Struct_1(true, vec3<u32>(0u, 0u, 35958u), vec3<i32>(2147483647i, 37613i, -21721i), vec3<f32>(-114f, -488f, -287f)), Struct_1(false, vec3<u32>(36130u, 1u, 10520u), vec3<i32>(9025i, 11019i, 52841i), vec3<f32>(-1231f, 343f, -136f)), Struct_1(true, vec3<u32>(4294967295u, 123141u, 40736u), vec3<i32>(-1i, 1i, -1i), vec3<f32>(2098f, -1000f, -1545f)), Struct_1(true, vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<i32>(0i, -10694i, i32(-2147483648)), vec3<f32>(703f, 1947f, -2138f)), Struct_1(false, vec3<u32>(4294967295u, 27345u, 1u), vec3<i32>(6427i, 0i, 55672i), vec3<f32>(-306f, 1139f, 1893f)), Struct_1(false, vec3<u32>(4294967295u, 0u, 0u), vec3<i32>(2147483647i, 23841i, 23598i), vec3<f32>(1088f, 1995f, 1764f)), Struct_1(true, vec3<u32>(1u, 55672u, 227u), vec3<i32>(-824i, i32(-2147483648), 0i), vec3<f32>(-2448f, 1060f, -414f)), Struct_1(true, vec3<u32>(0u, 4294967295u, 54443u), vec3<i32>(i32(-2147483648), 2525i, -38447i), vec3<f32>(-584f, -1434f, -354f)), Struct_1(true, vec3<u32>(0u, 4294967295u, 0u), vec3<i32>(0i, 1i, 17059i), vec3<f32>(-1936f, -120f, -2176f)), Struct_1(true, vec3<u32>(4294967295u, 35770u, 1u), vec3<i32>(14528i, 12617i, -10534i), vec3<f32>(-943f, 1428f, -1895f)), Struct_1(true, vec3<u32>(26672u, 22778u, 0u), vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), vec3<f32>(-637f, 212f, -1000f)), Struct_1(false, vec3<u32>(1u, 52229u, 4294967295u), vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), vec3<f32>(182f, 1367f, 451f)), Struct_1(true, vec3<u32>(1u, 0u, 4174u), vec3<i32>(10188i, 1i, 2147483647i), vec3<f32>(2734f, 2211f, -1000f)), Struct_1(false, vec3<u32>(32221u, 4294967295u, 4294967295u), vec3<i32>(1i, i32(-2147483648), 1i), vec3<f32>(559f, -2304f, 1197f)), Struct_1(true, vec3<u32>(58860u, 49581u, 56780u), vec3<i32>(i32(-2147483648), 0i, -1i), vec3<f32>(2123f, -1171f, -1177f)), Struct_1(false, vec3<u32>(0u, 7440u, 1u), vec3<i32>(-738i, 2147483647i, 0i), vec3<f32>(-966f, 1511f, -1776f)), Struct_1(false, vec3<u32>(42096u, 0u, 4294967295u), vec3<i32>(0i, 14124i, 13214i), vec3<f32>(111f, 1205f, -300f)), Struct_1(true, vec3<u32>(2764u, 0u, 23444u), vec3<i32>(i32(-2147483648), -1i, 1i), vec3<f32>(-952f, -381f, 1010f)));

var<private> global2: array<u32, 20>;

var<private> global3: bool;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(all(!vec4<bool>(true, arg_1.a, arg_1.a, !arg_1.a)), vec3<u32>(_wgslsmith_dot_vec2_u32(arg_1.b.yy, vec2<u32>(4294967295u, 0u)), ~4294967295u, ~countOneBits(_wgslsmith_add_u32(55893u, 0u))), _wgslsmith_clamp_vec3_i32(arg_1.c & arg_1.c, _wgslsmith_add_vec3_i32(arg_1.c, reverseBits(vec3<i32>(u_input.c, arg_1.c.x, u_input.c))), arg_1.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.zyw) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(abs(1u), 8u)] * _wgslsmith_f_op_vec3_f32(min(global0[_wgslsmith_index_u32(29457u, 8u)], vec3<f32>(-756f, arg_1.d.x, 1203f))))))));
    global0 = array<vec3<f32>, 8>();
    let var_1 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(global2[_wgslsmith_index_u32(0u, 20u)] | global2[_wgslsmith_index_u32(var_0.b.x, 20u)], max(var_0.b.x, var_0.b.x), 73988u, u_input.b)), ~vec4<u32>(20723u, global2[_wgslsmith_index_u32(~24263u, 20u)], global2[_wgslsmith_index_u32(u_input.b << (14073u % 32u), 20u)], _wgslsmith_sub_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 20u)], 20u)], _wgslsmith_mod_u32(u_input.a, global2[_wgslsmith_index_u32(var_0.b.x, 20u)]))));
    let var_2 = _wgslsmith_mod_vec2_i32(~var_0.c.xy, arg_1.c.zy);
    global0 = array<vec3<f32>, 8>();
    return !(!(!(!(!vec2<bool>(arg_1.a, false)))));
}

fn func_4(arg_0: vec2<f32>) -> i32 {
    global0 = array<vec3<f32>, 8>();
    global3 = any(vec2<bool>(!select(2147483647i > u_input.c, all(vec4<bool>(false, true, true, false)), -1000f >= arg_0.x), true));
    global2 = array<u32, 20>();
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(arg_0));
    var var_1 = 1i;
    return ~(~(-39007i));
}

fn func_2() -> u32 {
    global1 = array<Struct_1, 26>();
    global1 = array<Struct_1, 26>();
    let var_0 = -func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-560f, 284f)) - vec2<f32>(-507f, 800f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-253f, -844f), vec2<f32>(-1510f, -569f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(669f, 1648f))), func_3(vec4<f32>(-1000f, -192f, -216f, 146f), global1[_wgslsmith_index_u32(u_input.a, 26u)]))));
    let var_1 = all(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(603f, 805f, -102f, -164f), vec4<f32>(-1557f, -900f, 1000f, -225f)) + _wgslsmith_div_vec4_f32(vec4<f32>(396f, -263f, 148f, 2055f), vec4<f32>(-517f, -1348f, 363f, -226f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-633f, 167f, 957f, -229f)), vec4<f32>(-2611f, -458f, 930f, -702f)))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(35773u, 20u)], 1u, 2391u), 26u)]));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-131f - 1000f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(select(-253f, 1540f, true))))));
    return ~(~u_input.b);
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: u32) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(abs((_wgslsmith_div_u32(arg_1.x, ~arg_2) | arg_1.x) | _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, global2[_wgslsmith_index_u32(~arg_1.x, 20u)]), 16643u)), 26u)];
    let var_1 = false;
    global2 = array<u32, 20>();
    let var_2 = countOneBits(_wgslsmith_sub_vec4_u32(~(~abs(vec4<u32>(24202u, arg_2, 38058u, global2[_wgslsmith_index_u32(184u, 20u)]))), vec4<u32>(arg_2, ~arg_1.x, abs(firstTrailingBit(var_0.b.x)), var_0.b.x)));
    global1 = array<Struct_1, 26>();
    return u_input.b;
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<bool>(~(~(4294967295u ^ u_input.a)) > (func_5(vec4<i32>(-31901i, 1497i, u_input.c, u_input.c), vec3<u32>(u_input.a, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 20u)], 20u)]), func_2()) & (abs(0u) << (global2[_wgslsmith_index_u32(1u, 20u)] % 32u))), false | select(true, _wgslsmith_f_op_f32(f32(-1f) * -528f) != _wgslsmith_f_op_f32(floor(290f)), true));
    let var_1 = Struct_1(any(!var_0), ~select(vec3<u32>(~27461u, u_input.a, _wgslsmith_mod_u32(u_input.b, u_input.a)), vec3<u32>(3450u, global2[_wgslsmith_index_u32(4294967295u, 20u)], 4294967295u) << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(u_input.a, 20u)], 81794u), vec3<u32>(96u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(42960u, 20u)], 20u)], u_input.b)) % vec3<u32>(32u)), vec3<bool>(true, false, any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)))), ~(-vec3<i32>(_wgslsmith_div_i32(u_input.c, -1i), 1i & u_input.c, _wgslsmith_mult_i32(u_input.c, u_input.c))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1274f - _wgslsmith_f_op_f32(step(1041f, 1421f)))), 388f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(652f, -705f, false)), _wgslsmith_f_op_f32(f32(-1f) * -272f), var_0.x & var_0.x)))));
    var var_2 = Struct_1(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.d.x, var_1.d.x, -138f, 156f))) + _wgslsmith_div_vec4_f32(vec4<f32>(-587f, var_1.d.x, -1021f, -1280f), vec4<f32>(var_1.d.x, var_1.d.x, 810f, 101f)))), Struct_1(true, ~_wgslsmith_mult_vec3_u32(var_1.b, var_1.b), vec3<i32>(i32(-1i) * -14507i, i32(-1i) * -14196i, 1i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, -511f, var_1.d.x)))).x, vec3<u32>(countOneBits(~abs(29364u)), _wgslsmith_mult_u32(~61964u | ~u_input.b, ~(var_1.b.x << (0u % 32u))), 1u), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(var_1.c.xx, vec2<i32>(20705i, var_1.c.x)), u_input.c) ^ _wgslsmith_mod_i32(reverseBits(u_input.c), ~(-11847i)), -1i, var_1.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.d.x, var_1.d.x, var_1.d.x), _wgslsmith_f_op_vec3_f32(-var_1.d))))));
    var var_3 = var_1;
    var var_4 = -315f;
    return Struct_1(true, _wgslsmith_mult_vec3_u32(abs(abs(~var_1.b)), vec3<u32>(~global2[_wgslsmith_index_u32(~49939u, 20u)], ~global2[_wgslsmith_index_u32(1u, 20u)], 1u)), ~var_2.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-797f, var_1.d.x, var_2.d.x) - _wgslsmith_f_op_vec3_f32(select(var_1.d, var_3.d, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.d - var_1.d) + _wgslsmith_f_op_vec3_f32(var_3.d - var_2.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true))));
    global1 = array<Struct_1, 26>();
    let var_1 = ~0u;
    var_0 = select(vec3<bool>(all(select(!vec3<bool>(var_0.x, false, false), !vec3<bool>(false, var_0.x, false), vec3<bool>(true, var_0.x, false))), all(select(select(vec3<bool>(true, var_0.x, false), vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, true, var_0.x)), !vec3<bool>(var_0.x, var_0.x, false), !var_0.x)), !(!(true || var_0.x))), !(!(!select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x)))), vec3<bool>((~1u ^ ~var_1) < 1u, any(select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(var_0.x, true, true, false), true)) == true, 0u >= global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, 7722u, 74862u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 74605u, 3654u), vec3<u32>(var_1, global2[_wgslsmith_index_u32(31942u, 20u)], global2[_wgslsmith_index_u32(var_1, 20u)]))), 20u)]));
    let var_2 = func_1();
    var_0 = select(vec3<bool>(!(!(var_0.x && false)), any(select(select(vec4<bool>(var_0.x, var_2.a, var_2.a, var_2.a), vec4<bool>(var_2.a, true, var_0.x, var_2.a), var_2.a), select(vec4<bool>(var_2.a, true, true, var_2.a), vec4<bool>(var_2.a, var_0.x, var_2.a, true), vec4<bool>(false, var_2.a, true, false)), select(vec4<bool>(false, false, var_2.a, false), vec4<bool>(var_2.a, false, false, var_0.x), vec4<bool>(false, false, true, var_2.a)))), false), !vec3<bool>(!any(vec4<bool>(false, true, true, true)), !any(vec4<bool>(false, var_2.a, var_0.x, true)), var_0.x), vec3<bool>(firstTrailingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~0u, 20u)], 20u)]) <= select(64260u & global2[_wgslsmith_index_u32(var_2.b.x, 20u)], var_2.b.x, var_2.a), func_1().a, abs(min(0i, var_2.c.x)) == _wgslsmith_dot_vec3_i32(select(var_2.c, vec3<i32>(-2493i, u_input.c, -2147483647i), vec3<bool>(var_2.a, var_0.x, false)), vec3<i32>(var_2.c.x, var_2.c.x, -1i) | vec3<i32>(var_2.c.x, -120184i, var_2.c.x))));
    global3 = all(!(!select(vec4<bool>(true, var_0.x, var_2.a, var_2.a), vec4<bool>(var_2.a, false, var_0.x, var_2.a), vec4<bool>(var_0.x, true, false, var_0.x)))) | func_1().a;
    var var_3 = global1[_wgslsmith_index_u32(var_2.b.x, 26u)];
    global3 = true || func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2.d.x), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -2685f), -675f) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(574f, 553f, 1331f, -191f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.x, var_2.d.x, var_2.d.x, -330f)), !vec4<bool>(var_0.x, var_2.a, var_3.a, var_0.x)))), global1[_wgslsmith_index_u32(u_input.a, 26u)]).x;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d.x, ~var_3.c, ~var_2.b.yz & vec2<u32>(select(~1117u, var_3.b.x >> (var_2.b.x % 32u), true), ~u_input.a), var_3.b.zy);
}

