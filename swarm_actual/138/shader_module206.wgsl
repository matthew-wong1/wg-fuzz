struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: f32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
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

var<private> global0: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(313f, 1578f, 660f, -685f), vec4<f32>(1000f, -786f, -926f, 1507f), vec4<f32>(-1023f, 502f, -649f, 1000f), vec4<f32>(-504f, -1550f, -278f, -1087f), vec4<f32>(-150f, 1549f, 938f, 1000f), vec4<f32>(-581f, -551f, -319f, -1141f), vec4<f32>(-1778f, -1604f, -1000f, -1618f), vec4<f32>(1316f, 993f, 870f, 244f), vec4<f32>(1301f, 841f, -117f, -1268f), vec4<f32>(2222f, 234f, 2689f, 1249f), vec4<f32>(563f, 1682f, -294f, -865f), vec4<f32>(-617f, 327f, 500f, -1433f));

var<private> global1: Struct_1 = Struct_1(true, vec4<i32>(-45349i, -22703i, 18324i, 0i), vec3<u32>(22539u, 0u, 24222u), 74953u, vec2<bool>(false, false));

var<private> global2: vec2<i32>;

var<private> global3: Struct_4 = Struct_4(-1i, Struct_2(Struct_1(true, vec4<i32>(10940i, -9973i, 2147483647i, -14568i), vec3<u32>(1739u, 0u, 14550u), 4294967295u, vec2<bool>(false, false)), false), Struct_2(Struct_1(true, vec4<i32>(-13106i, 15246i, 10299i, 1i), vec3<u32>(1u, 65084u, 35374u), 1u, vec2<bool>(false, false)), true));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_5) -> Struct_4 {
    global3 = arg_2.a;
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.b, _wgslsmith_f_op_f32(trunc(arg_2.b)))) + _wgslsmith_f_op_f32(round(arg_2.b)))));
    let var_1 = arg_2.a.c.a.b.xw;
    global2 = -_wgslsmith_mod_vec2_i32(vec2<i32>(-_wgslsmith_sub_i32(69617i, arg_0.b.x), -61044i), global3.b.a.b.xx & _wgslsmith_sub_vec2_i32(vec2<i32>(0i, arg_0.b.x), -vec2<i32>(1i, 52661i)));
    let var_2 = arg_2.a;
    return Struct_4(arg_1, Struct_2(arg_0, true), var_2.b);
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_4, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = arg_2;
    var_0 = Struct_4(select(~(~arg_2.c.a.b.x), _wgslsmith_mod_i32(1i, ~global3.c.a.b.x), arg_3.x), func_2(func_2(func_2(global3.b.a, -1i, Struct_5(arg_2, -1253f)).c.a, arg_2.a, Struct_5(Struct_4(global3.b.a.b.x, Struct_2(arg_2.b.a, true), global3.b), -1707f)).c.a, -2147483647i, Struct_5(func_2(arg_2.c.a, _wgslsmith_mult_i32(-1i, -79986i), Struct_5(arg_2, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-969f * 1202f)))).b, Struct_2(global3.b.a, !(any(global3.c.a.e) & false)));
    let var_1 = global1.c;
    var var_2 = all(vec2<bool>(false, all(vec4<bool>(var_0.c.a.e.x, func_2(Struct_1(global3.b.b, vec4<i32>(global3.b.a.b.x, arg_2.b.a.b.x, arg_2.b.a.b.x, 2147483647i), vec3<u32>(31071u, var_1.x, arg_2.b.a.c.x), u_input.b, vec2<bool>(global3.c.a.e.x, global1.a)), 43906i, Struct_5(arg_2, -390f)).c.b, true, all(vec4<bool>(false, arg_2.b.b, true, false))))));
    var_2 = global3.c.b;
    return global3.b.a;
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_5 {
    let var_0 = max(1i, arg_1);
    var var_1 = Struct_5(Struct_4(arg_1, Struct_2(global3.c.a, true | global1.e.x), Struct_2(func_3(~vec2<u32>(u_input.b, 4294967295u), global1.a, func_2(global3.c.a, -1i, Struct_5(Struct_4(-5978i, global3.b, Struct_2(global3.c.a, global1.a)), 277f)), !vec4<bool>(true, global3.b.b, true, global3.c.a.e.x)), global1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1344f, 1317f)) + _wgslsmith_f_op_f32(f32(-1f) * -1303f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1893f, -1214f)))))));
    let var_2 = _wgslsmith_div_i32(1i, -_wgslsmith_add_i32(-abs(1i), 26049i));
    let var_3 = vec4<bool>(true, !(!all(vec4<bool>(false, var_1.a.b.a.e.x, var_1.a.b.a.a, global1.e.x))), global3.b.b, true);
    var var_4 = Struct_3(_wgslsmith_clamp_i32(2147483647i, -20984i, _wgslsmith_sub_i32(-(~var_0), ~3920i)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -477f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.b)), var_1.b, 1802f))));
    return Struct_5(Struct_4(_wgslsmith_mult_i32(-1i, i32(-1i) * -29170i), global3.b, func_2(Struct_1(global3.c.b, firstTrailingBit(global3.c.a.b), select(global3.b.a.c, vec3<u32>(u_input.a, 7879u, 37803u), global1.e.x), 1u, func_3(global3.c.a.c.yz, global1.a, var_1.a, var_3).e), abs(var_2), Struct_5(var_1.a, _wgslsmith_f_op_f32(abs(834f)))).c), _wgslsmith_f_op_f32(var_1.b - _wgslsmith_div_f32(var_4.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.c)))));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_5, arg_3: Struct_5) -> vec3<u32> {
    return arg_2.a.c.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.c;
    global0 = array<vec4<f32>, 12>();
    let var_1 = !vec3<bool>(any(global3.c.a.e), !(!var_0.b), false);
    let var_2 = _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(func_4(true, Struct_3(73494i, false, 1340f, vec3<f32>(413f, -1788f, 1154f)), func_1(u_input.b, global2.x), func_1(global3.b.a.d, 1i)), ~_wgslsmith_clamp_vec3_u32(var_0.a.c, vec3<u32>(var_0.a.d, 4294967295u, 56340u), vec3<u32>(global1.c.x, u_input.b, 28595u))), 12u)] + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(var_0.a.d, 12u)]) + global0[_wgslsmith_index_u32(0u, 12u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(global1.c.x, global3.b.a.c.x, u_input.b, 4409u)), select(vec4<u32>(u_input.b, u_input.a, 49792u, var_0.a.d), vec4<u32>(4294967295u, 47097u, global3.b.a.d, 1u), global3.b.b) ^ ~vec4<u32>(34220u, 4294967295u, 48975u, 1u)), 12u)])));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global1.d << (14223u % 32u), ~1u), 12u)])) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.x, var_2.x, var_2.x, -1000f))), var_2, select(false, true, true))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(func_3(vec2<u32>(u_input.a, global3.c.a.d), true, Struct_4(1822i, global3.c, global3.b), vec4<bool>(false, global3.b.a.a, false, global3.c.b)).c.x, 12u)] * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -215f, var_2.x, var_2.x))))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * -711f))))));
    var var_5 = Struct_4(_wgslsmith_mod_i32(min(~(i32(-1i) * -196i), -1i), var_0.a.b.x), func_2(var_0.a, _wgslsmith_sub_i32(countOneBits(-global2.x), i32(-1i) * -global3.c.a.b.x), Struct_5(Struct_4(34059i, Struct_2(var_0.a, true), func_1(0u, global2.x).a.c), 1000f)).b, global3.b);
    var_0 = var_5.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(global3.b.a.b.xwy, _wgslsmith_div_vec3_i32(~vec3<i32>(2147483647i, global1.b.x, -14811i) << (vec3<u32>(global1.c.x, u_input.b, 77631u) % vec3<u32>(32u)), func_1(abs(4294967295u), firstLeadingBit(global3.c.a.b.x)).a.b.a.b.wxy)), _wgslsmith_mod_u32(0u, global3.c.a.d), _wgslsmith_f_op_f32(min(var_3.x, _wgslsmith_f_op_f32(max(616f, 462f)))), _wgslsmith_div_vec3_u32(vec3<u32>(~39631u, u_input.b ^ 4294967295u, 95668u), global1.c >> ((vec3<u32>(var_0.a.d, 4294967295u, u_input.b) & var_5.b.a.c) % vec3<u32>(32u))) << (max(_wgslsmith_clamp_vec3_u32(var_0.a.c, vec3<u32>(global1.c.x, 56950u, global3.c.a.d), vec3<u32>(u_input.b, 112410u, 0u)), firstTrailingBit(firstLeadingBit(var_0.a.c))) % vec3<u32>(32u)));
}

