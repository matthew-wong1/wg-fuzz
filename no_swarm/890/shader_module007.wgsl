struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<u32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 30>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global0 = array<vec2<bool>, 30>();
    let var_0 = Struct_1(!(!global0[_wgslsmith_index_u32(1u, 30u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1971f, 1374f)), _wgslsmith_f_op_f32(-460f * 1000f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-406f))))), abs(reverseBits(vec2<i32>(u_input.b, -34635i))), ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 9618u), ~vec4<u32>(44602u, 9005u, 44413u, u_input.a)), u_input.a >> (u_input.a % 32u), select(~u_input.a, u_input.a, any(vec3<bool>(false, true, true)))), ~1u);
    let var_1 = ~(~(~1i) << (_wgslsmith_sub_u32(~_wgslsmith_mod_u32(4294967295u, var_0.d.x), ~0u) % 32u));
    var var_2 = abs(vec4<u32>(_wgslsmith_sub_u32(var_0.d.x, 6411u), _wgslsmith_dot_vec4_u32(select(~vec4<u32>(4294967295u, 4294967295u, u_input.a, var_0.e), ~vec4<u32>(u_input.a, var_0.d.x, var_0.e, 4294967295u), vec4<bool>(false, var_0.a.x, true, var_0.a.x)), vec4<u32>(~11142u, 4294967295u, 1u, countOneBits(var_0.e))), ~(var_0.d.x ^ var_0.d.x) << (~u_input.a % 32u), _wgslsmith_div_u32(firstTrailingBit(14814u), u_input.a) & ~u_input.a));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-627f, -946f)), _wgslsmith_f_op_f32(var_0.b - var_0.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-245f, -1235f) * vec2<f32>(var_0.b, -779f)) * vec2<f32>(-1853f, var_0.b)))));
    return var_1;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec4<f32>, arg_3: f32) -> f32 {
    let var_0 = _wgslsmith_sub_vec4_i32(abs(_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b, 0i, u_input.b, u_input.b), ~vec4<i32>(u_input.b, -2147483647i, u_input.b, 1i))), _wgslsmith_div_vec4_i32(~countOneBits(-vec4<i32>(u_input.b, 0i, u_input.b, u_input.b)), vec4<i32>(35788i, _wgslsmith_mult_i32(func_3(), 0i << (u_input.a % 32u)), ~(-u_input.b), u_input.b)));
    global0 = array<vec2<bool>, 30>();
    global0 = array<vec2<bool>, 30>();
    var var_1 = ~max(u_input.a, (u_input.a << (28508u % 32u)) & 1u);
    var var_2 = Struct_4(Struct_1(select(global0[_wgslsmith_index_u32((4294967295u | u_input.a) | (u_input.a << (u_input.a % 32u)), 30u)], select(global0[_wgslsmith_index_u32(u_input.a, 30u)], vec2<bool>(arg_0, true), true), true), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1407f)))), vec2<i32>(-(~u_input.b), -7809i), abs(abs(min(vec3<u32>(19708u, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.a, 23956u)))), _wgslsmith_mod_u32(~1u ^ ~u_input.a, firstTrailingBit(~u_input.a))));
    return arg_1;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: bool) -> Struct_1 {
    var var_0 = any(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, arg_0.c.a.x, arg_2), vec3<bool>(arg_0.c.a.x, arg_0.c.a.x, false))));
    let var_1 = arg_1.xzx;
    let var_2 = true;
    var var_3 = arg_2;
    var_3 = any(arg_0.c.a);
    return Struct_1(arg_0.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(true, arg_0.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.c.b, -601f, arg_0.c.b, arg_0.c.b))) + arg_0.b), -1207f))), min(vec2<i32>(arg_0.c.c.x, u_input.b << (1u % 32u)) | countOneBits(vec2<i32>(-2147483647i, arg_0.c.c.x)), arg_0.c.c), var_1, _wgslsmith_add_u32(abs(33722u), _wgslsmith_div_u32(6456u, var_1.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: i32) -> vec4<bool> {
    let var_0 = _wgslsmith_div_u32(_wgslsmith_mult_u32(func_1(Struct_2(0u, vec4<f32>(349f, arg_0.b, -511f, arg_0.b), Struct_1(arg_0.a, -614f, arg_0.c, arg_0.d, 14231u)), ~vec4<u32>(4294967295u, 31475u, arg_0.e, 0u), arg_0.c.x <= arg_0.c.x).d.x | arg_0.d.x, arg_0.d.x), ~u_input.a);
    return !(!select(!(!vec4<bool>(true, arg_1.x, true, arg_1.x)), !vec4<bool>(false, false, arg_0.a.x, arg_0.a.x), select(!vec4<bool>(false, false, false, arg_0.a.x), !vec4<bool>(true, true, arg_0.a.x, arg_1.x), vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_0.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_4(func_1(Struct_2(_wgslsmith_sub_u32(u_input.a, u_input.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1213f, -2239f, 785f, 403f)), Struct_1(vec2<bool>(false, false), 1328f, vec2<i32>(u_input.b, u_input.b), vec3<u32>(37201u, u_input.a, 4294967295u), 12017u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 6250u, 1u, 16148u), vec4<u32>(u_input.a, u_input.a, 6075u, u_input.a)), false), vec2<bool>(-394f == _wgslsmith_f_op_f32(ceil(375f)), false), ~reverseBits(abs(10235i))), vec4<bool>(true, true, true, false), select(select(vec4<bool>(true, any(vec2<bool>(true, false)), all(global0[_wgslsmith_index_u32(45824u, 30u)]), func_1(Struct_2(u_input.a, vec4<f32>(-420f, -905f, 888f, 183f), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 30u)], -1000f, vec2<i32>(u_input.b, 1674i), vec3<u32>(31656u, u_input.a, u_input.a), u_input.a)), vec4<u32>(u_input.a, u_input.a, 43724u, 64580u), false).a.x), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !func_4(Struct_1(vec2<bool>(false, false), 184f, vec2<i32>(-1i, 22202i), vec3<u32>(u_input.a, u_input.a, 44319u), 36437u), select(vec2<bool>(true, true), global0[_wgslsmith_index_u32(u_input.a, 30u)], vec2<bool>(false, true)), _wgslsmith_mult_i32(u_input.b, u_input.b)), false));
    var var_1 = !select(vec4<bool>(var_0.x, !(!var_0.x), func_1(Struct_2(0u, vec4<f32>(1042f, 1000f, 251f, 1794f), Struct_1(vec2<bool>(true, false), -241f, vec2<i32>(u_input.b, u_input.b), vec3<u32>(0u, u_input.a, 30726u), 0u)), ~vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u), var_0.x).a.x, func_4(func_1(Struct_2(0u, vec4<f32>(717f, -1004f, -505f, -1544f), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 30u)], 1366f, vec2<i32>(u_input.b, u_input.b), vec3<u32>(u_input.a, u_input.a, u_input.a), u_input.a)), vec4<u32>(9468u, u_input.a, 4294967295u, u_input.a), var_0.x), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), 30u)], -26624i | u_input.b).x), !select(!vec4<bool>(true, var_0.x, var_0.x, false), !vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(true, var_0.x, true, var_0.x)), vec4<bool>(!var_0.x | !var_0.x, u_input.b > -2147483647i, false, !(!var_0.x)));
    global0 = array<vec2<bool>, 30>();
    var var_2 = ~vec2<u32>(0u, u_input.a);
    let var_3 = Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(2292f)), _wgslsmith_f_op_f32(1331f - _wgslsmith_div_f32(351f, 1391f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1044f, 545f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1865f, -962f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1354f, -2238f)))), var_1.x || (-12164i <= u_input.b)))), func_1(Struct_2(var_2.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1322f, -937f, 674f, -1156f))), func_1(Struct_2(var_2.x, vec4<f32>(-878f, -673f, -1817f, 303f), Struct_1(var_0.yy, -1633f, vec2<i32>(-2147483647i, u_input.b), vec3<u32>(77800u, var_2.x, var_2.x), 4294967295u)), vec4<u32>(var_2.x, u_input.a, 1u, u_input.a), var_1.x)), ~max(~vec4<u32>(48707u, 80130u, var_2.x, var_2.x), ~vec4<u32>(var_2.x, var_2.x, 528u, var_2.x)), 36456u < ~_wgslsmith_sub_u32(13266u, var_2.x)), vec4<u32>(u_input.a, func_1(Struct_2(var_2.x, vec4<f32>(1152f, 1525f, -362f, 892f), func_1(Struct_2(1u, vec4<f32>(-662f, -990f, -1000f, -988f), Struct_1(vec2<bool>(var_1.x, var_0.x), 699f, vec2<i32>(1i, 2147483647i), vec3<u32>(1u, 65697u, 0u), var_2.x)), vec4<u32>(var_2.x, u_input.a, u_input.a, 1u), var_0.x)), vec4<u32>(var_2.x, 1u ^ u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, var_2.x, u_input.a), vec4<u32>(u_input.a, 36957u, u_input.a, u_input.a)), abs(u_input.a)), u_input.b > _wgslsmith_clamp_i32(30392i, 0i, -2147483647i)).e, _wgslsmith_add_u32(~var_2.x, ~u_input.a ^ firstTrailingBit(var_2.x)), 88412u), func_3());
    global0 = array<vec2<bool>, 30>();
    var var_4 = var_3;
    let var_5 = Struct_2(0u >> ((1u | firstTrailingBit(var_3.b.d.x)) % 32u), vec4<f32>(var_4.b.b, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.b.b), var_3.a.x))), _wgslsmith_f_op_f32(select(-1280f, -681f, true)), -1263f), func_1(Struct_2(~var_4.b.e << (var_2.x % 32u), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(190f, var_3.a.x, -1054f, 218f) + vec4<f32>(-1690f, -461f, -1002f, var_4.b.b)))), func_1(Struct_2(1u, vec4<f32>(var_4.b.b, 338f, 240f, -979f), Struct_1(vec2<bool>(true, var_3.b.a.x), var_3.a.x, vec2<i32>(-33702i, var_4.d), vec3<u32>(18370u, var_2.x, var_3.c.x), u_input.a)), var_4.c | vec4<u32>(var_2.x, u_input.a, 88159u, var_3.c.x), false)), var_3.c, func_1(Struct_2(0u ^ u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.x, var_4.b.b, var_3.b.b, var_3.b.b)), func_1(Struct_2(3378u, vec4<f32>(var_3.a.x, var_4.b.b, var_4.a.x, 1648f), Struct_1(var_3.b.a, 696f, vec2<i32>(-2147483647i, u_input.b), vec3<u32>(var_4.c.x, 8177u, var_2.x), 16257u)), vec4<u32>(22438u, var_4.c.x, u_input.a, var_3.b.d.x), var_0.x)), var_4.c, var_4.b.a.x).a.x));
    let var_6 = _wgslsmith_mod_i32(2147483647i, abs(1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(u_input.b, abs(var_5.c.c.x)));
}

