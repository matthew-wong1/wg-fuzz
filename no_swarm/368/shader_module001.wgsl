struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec4<f32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15> = array<f32, 15>(2255f, -1000f, 172f, 257f, -131f, -216f, -1152f, 1444f, 1507f, 1282f, -223f, 879f, 1381f, 663f, -275f);

var<private> global1: bool = false;

var<private> global2: bool;

var<private> global3: u32;

var<private> global4: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    let var_0 = vec3<i32>(21047i, _wgslsmith_dot_vec4_i32(min(abs(abs(vec4<i32>(u_input.a, u_input.a, u_input.b, -27907i))), vec4<i32>(countOneBits(8926i), 0i, 0i, u_input.b << (0u % 32u))), ~(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 1i, u_input.a, -34235i), vec4<i32>(u_input.b, -37183i, u_input.b, u_input.a)))), u_input.a);
    var var_1 = _wgslsmith_dot_vec2_i32(select(_wgslsmith_clamp_vec2_i32(~var_0.xy, -var_0.yy, -var_0.zy), vec2<i32>(15846i, ~var_0.x), all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)))), vec2<i32>(-var_0.x, ~(-1308i))) < var_0.x;
    var var_2 = !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false);
    global4 = _wgslsmith_sub_i32(firstLeadingBit(u_input.a), u_input.b);
    var var_3 = Struct_5(var_2.yzy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(61292u, 15u)], 1009f, global0[_wgslsmith_index_u32(0u, 15u)])) + vec3<f32>(-830f, _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(40084u, 15u)], 1610f)), 465f))), firstLeadingBit(min(_wgslsmith_dot_vec2_u32(vec2<u32>(25079u, 15578u), vec2<u32>(1u, 4294967295u)), countOneBits(1u)) >> ((_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 10882u, 0u), vec4<u32>(1u, 1u, 1u, 18689u)) ^ 0u) % 32u)), global0[_wgslsmith_index_u32(0u, 15u)]);
    return ~vec4<i32>(-reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 0i), var_0.xx)), _wgslsmith_add_i32(0i, -u_input.b) << (_wgslsmith_clamp_u32(var_3.c, _wgslsmith_clamp_u32(12156u, var_3.c, 63662u), min(var_3.c, 9373u)) % 32u), _wgslsmith_dot_vec2_i32(select(abs(var_0.zy), vec2<i32>(2147483647i, 1i), var_3.a.x), -(~var_0.xz)), -abs(_wgslsmith_clamp_i32(2147483647i, -2147483647i, var_0.x)));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec2<bool>) -> Struct_3 {
    var var_0 = -_wgslsmith_div_vec4_i32(-func_3(), func_3());
    var var_1 = ~u_input.a;
    var var_2 = Struct_5(select(!(!select(vec3<bool>(arg_1.b, false, arg_3.x), vec3<bool>(arg_3.x, true, false), arg_0)), vec3<bool>(true, arg_0, any(arg_3)), !vec3<bool>(arg_0, arg_1.b, true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.c.wzx), vec3<f32>(_wgslsmith_f_op_f32(abs(261f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1278f * -314f), -333f), 904f)), firstTrailingBit(arg_2.x), 1073f);
    var var_3 = (var_0.wzy ^ (vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 37106i, var_0.x), vec3<i32>(u_input.b, arg_1.d, var_0.x), var_0.zwx))) ^ _wgslsmith_mult_vec3_i32(-(~var_0.wzz), var_0.wwx);
    global0 = array<f32, 15>();
    return Struct_3(_wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.b, max(arg_1.d, arg_1.d), -min(u_input.b, var_3.x), _wgslsmith_mod_i32(2147483647i, ~6368i)), ~vec4<i32>(0i << (1u % 32u), _wgslsmith_sub_i32(-2147483647i, arg_1.d), _wgslsmith_add_i32(-7314i, -32303i), 6628i)));
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_3, arg_3: bool) -> f32 {
    return arg_0.x;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(max(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), ~(~vec3<u32>(0u, 44574u, 1u))), !all(vec2<bool>(true, true)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(579f - 1653f) + _wgslsmith_f_op_f32(abs(-1770f))), _wgslsmith_f_op_f32(ceil(257f)), 247f, global0[_wgslsmith_index_u32(~26361u, 15u)]), u_input.a, 50296u), _wgslsmith_f_op_f32(func_4(vec4<f32>(_wgslsmith_f_op_f32(select(-391f, _wgslsmith_div_f32(-253f, global0[_wgslsmith_index_u32(53121u, 15u)]), false)), global0[_wgslsmith_index_u32(~72107u, 15u)], -1313f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u << (1u % 32u), 15u)])), min(1u, 1u), func_2(true, Struct_1(vec3<u32>(1u, 4294967295u, 1u), true, vec4<f32>(global0[_wgslsmith_index_u32(62023u, 15u)], 2069f, global0[_wgslsmith_index_u32(92106u, 15u)], 495f), u_input.b, ~32493u), vec2<u32>(~1u, ~84037u), vec2<bool>(true, false)), false)), Struct_1(~_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(5504u, 62790u, 23886u), vec3<u32>(39156u, 4294967295u, 0u), vec3<u32>(1u, 0u, 4294967295u)), vec3<u32>(0u, 1u, 1u)), 1u == _wgslsmith_clamp_u32(~32004u, ~1u, 17203u), vec4<f32>(_wgslsmith_f_op_f32(-491f * global0[_wgslsmith_index_u32(4294967295u, 15u)]), global0[_wgslsmith_index_u32(1u, 15u)], 483f, 1152f), -1i, 1u), 1f);
    let var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(~24976u, var_0.c.a.x ^ (_wgslsmith_add_u32(var_0.c.e, 4294967295u) & _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.a.x, 4294967295u), var_0.c.a.yy)), 4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.a.x, 4294967295u, 26343u, 109774u), vec4<u32>(1u, var_0.a.e, 17019u, 28447u))), min(~(~(~vec4<u32>(0u, var_0.a.e, var_0.c.e, 0u))), ~abs(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.e, var_0.c.a.x, 0u, 1u), vec4<u32>(var_0.a.e, var_0.a.e, 0u, 29174u)))));
    let var_2 = var_0.a;
    let var_3 = var_2.b;
    var var_4 = vec2<bool>(u_input.b >= _wgslsmith_mod_i32(-_wgslsmith_mod_i32(3613i, -34793i), abs(-6423i & var_2.d)), true);
    return Struct_1(_wgslsmith_sub_vec3_u32(reverseBits((var_1.xwx | vec3<u32>(var_1.x, 46553u, var_1.x)) << (var_0.a.a % vec3<u32>(32u))), vec3<u32>(_wgslsmith_dot_vec4_u32(var_1, _wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_2.e, 1u, 4294967295u), vec4<u32>(0u, 4294967295u, var_0.a.a.x, 6032u))), _wgslsmith_clamp_u32(83774u | var_2.a.x, var_0.a.e >> (var_1.x % 32u), 18868u), 0u)), !((abs(var_0.c.a.x) & ~51516u) >= var_0.a.e), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a.c)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c.c), vec4<f32>(-1385f, -1363f, -664f, 1035f))), var_0.a.c)), firstLeadingBit(~(-37992i)) ^ var_0.a.d, _wgslsmith_mult_u32(~(~(~79677u)), _wgslsmith_mod_u32(var_0.a.e, 1u)));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_5) -> Struct_4 {
    global4 = u_input.b;
    global3 = _wgslsmith_sub_u32(arg_0.b.a.a.x ^ (select(4294967295u, ~arg_0.b.c.a.x, arg_0.b.a.b) >> (abs(arg_1.c) % 32u)), arg_1.c);
    global4 = 7505i;
    var var_0 = 1000f;
    global2 = false;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_4(_wgslsmith_clamp_i32(0i, u_input.a, 0i), Struct_2(func_1(), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1378f, global0[_wgslsmith_index_u32(0u, 15u)]), _wgslsmith_f_op_f32(sign(-898f)))), Struct_1(vec3<u32>(1u, 1u, 1u), any(vec2<bool>(false, false)), _wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(32591u, 15u)], -1532f, global0[_wgslsmith_index_u32(24131u, 15u)], 1144f), vec4<f32>(global0[_wgslsmith_index_u32(1u, 15u)], -1920f, global0[_wgslsmith_index_u32(1083u, 15u)], global0[_wgslsmith_index_u32(45297u, 15u)])), 0i & u_input.a, ~52200u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(14628u, 15u)] + global0[_wgslsmith_index_u32(4294967295u, 15u)]))))), Struct_5(vec3<bool>(true, all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false)), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(17079u, 15u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(28119u, 15u)] - global0[_wgslsmith_index_u32(0u, 15u)]), _wgslsmith_f_op_f32(405f * global0[_wgslsmith_index_u32(0u, 15u)])) * vec3<f32>(-1175f, -357f, _wgslsmith_f_op_f32(f32(-1f) * -729f))), 1329u, global0[_wgslsmith_index_u32(min(_wgslsmith_add_u32(1u, ~2534u), ~(~4294967295u)), 15u)]));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.a.a.xx, _wgslsmith_div_u32(var_0.b.a.e, var_0.b.a.e), vec4<u32>(8555u ^ var_0.b.c.a.x, 1u, var_0.b.c.a.x, 30006u), _wgslsmith_dot_vec4_i32(~abs(-vec4<i32>(u_input.a, 2147483647i, -13715i, var_0.a)), vec4<i32>((i32(-1i) * -7551i) & (var_0.a & -6807i), func_1().d, func_1().d, -(i32(-1i) * -21977i))));
}

