struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(1128f, -1950f, -579f), vec3<f32>(1000f, 530f, -1175f), vec3<f32>(-233f, -285f, 998f), vec3<f32>(1018f, 2629f, 744f), vec3<f32>(-654f, 1025f, 1426f), vec3<f32>(-1000f, -1000f, -842f), vec3<f32>(1997f, 429f, 465f), vec3<f32>(-1241f, -1753f, 1078f), vec3<f32>(-954f, -944f, 1000f), vec3<f32>(488f, 562f, 869f), vec3<f32>(-1324f, 107f, 541f), vec3<f32>(2999f, -572f, -707f), vec3<f32>(-1280f, 1000f, 710f), vec3<f32>(-716f, -159f, -1123f), vec3<f32>(-1000f, -790f, -227f), vec3<f32>(-127f, 569f, 1000f), vec3<f32>(-2225f, -1002f, -181f), vec3<f32>(1071f, -942f, 363f), vec3<f32>(379f, -350f, 2087f), vec3<f32>(-286f, -735f, -1151f), vec3<f32>(-133f, -524f, 823f), vec3<f32>(-306f, -888f, 436f), vec3<f32>(1285f, -2096f, 238f), vec3<f32>(-1000f, 216f, 671f), vec3<f32>(116f, -655f, 1690f), vec3<f32>(-1951f, -847f, -485f));

var<private> global1: array<vec4<i32>, 15>;

var<private> global2: Struct_2 = Struct_2(i32(-2147483648), Struct_1(4294967295u), false);

var<private> global3: array<f32, 11>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = Struct_2(global2.a, arg_0, !any(!(!vec4<bool>(arg_2.b.x, true, false, true))));
    var var_1 = Struct_2(-1i, global2.b, select(true, arg_2.b.x, all(vec3<bool>(true, !var_0.c, true))));
    global1 = array<vec4<i32>, 15>();
    global2 = Struct_2(1i ^ _wgslsmith_dot_vec2_i32((vec2<i32>(-9051i, u_input.a) & vec2<i32>(var_0.a, 0i)) & ~vec2<i32>(var_1.a, -1i), (vec2<i32>(1i, 2147483647i) & vec2<i32>(5764i, u_input.a)) & (vec2<i32>(var_1.a, global2.a) & vec2<i32>(var_0.a, global2.a))), var_0.b, global2.c);
    let var_2 = countOneBits(~vec2<i32>(u_input.d, global2.a));
    return !arg_2.b;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: Struct_3) -> Struct_3 {
    global1 = array<vec4<i32>, 15>();
    global0 = array<vec3<f32>, 26>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2383f) - _wgslsmith_f_op_f32(f32(-1f) * -656f)), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, 28706u), 11u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -630f)));
    let var_1 = 2147483647i;
    var var_2 = arg_2.b.zw;
    return Struct_3(1088f, func_3(global2.b, global2.b, arg_2), select(44670i, -abs(-16966i), !any(vec3<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x))) ^ u_input.d, countOneBits(u_input.a));
}

fn func_4(arg_0: Struct_3) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, 1009f, 1000f, 1000f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(u_input.c, 11u)], global3[_wgslsmith_index_u32(1u, 11u)], -1275f, -905f)))) + vec4<f32>(-2887f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - global3[_wgslsmith_index_u32(global2.b.a, 11u)]) * _wgslsmith_f_op_f32(step(-1662f, 779f))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(max(4017u, global2.b.a), 11u)]), -1085f)));
    let var_1 = Struct_2(min(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, -1i, 1i), vec3<i32>(-18041i, arg_0.c, u_input.a) | vec3<i32>(-72642i, u_input.d, -1i), ~vec3<i32>(global2.a, global2.a, u_input.a)), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -31961i, -2147483647i), vec3<i32>(arg_0.d, u_input.d, 0i)))), _wgslsmith_mod_i32(_wgslsmith_div_i32(global2.a, 1i), select(2147483647i, 1i, global2.c)) << (global2.b.a % 32u)), global2.b, global2.c);
    let var_2 = var_1.b;
    var var_3 = arg_0;
    let var_4 = Struct_1(var_2.a);
    return -1i;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    var var_0 = global2.b;
    global2 = arg_1;
    var_0 = Struct_1(69706u);
    var var_1 = 1000f;
    let var_2 = min(~_wgslsmith_clamp_u32(arg_1.b.a | global2.b.a, arg_1.b.a >> (36646u % 32u), arg_2.b.a) ^ global2.b.a, countOneBits(0u));
    return Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(select(vec3<u32>(20900u, arg_1.b.a, global2.b.a), u_input.b, arg_1.c), _wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(0u, 56406u, arg_0))), vec3<u32>(~var_0.a, u_input.c, 65685u)) ^ reverseBits(min(1u, arg_1.b.a)));
}

fn func_1() -> Struct_3 {
    global3 = array<f32, 11>();
    var var_0 = func_5(global2.b.a, Struct_2(~global2.a, global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(31714u, 11u)])) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1477f)))), Struct_2(global2.a ^ func_4(func_2(u_input.b, vec3<u32>(global2.b.a, u_input.c, u_input.c), Struct_3(642f, vec4<bool>(true, false, global2.c, true), u_input.a, 35325i))), global2.b, select(global2.b.a > u_input.b.x, any(vec4<bool>(global2.c, false, global2.c, global2.c)), any(vec3<bool>(false, global2.c, global2.c))) == select(any(vec2<bool>(global2.c, true)), true, func_2(vec3<u32>(32905u, 1u, u_input.c), u_input.b, Struct_3(1645f, vec4<bool>(true, global2.c, true, true), global2.a, u_input.a)).b.x)));
    let var_1 = -_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(abs(select(vec2<i32>(global2.a, global2.a), vec2<i32>(u_input.a, global2.a), global2.c)), select(vec2<i32>(11220i, 30130i), min(vec2<i32>(2147483647i, u_input.d), vec2<i32>(u_input.d, u_input.a)), vec2<bool>(true, global2.c))), min(max(_wgslsmith_clamp_i32(global2.a, u_input.a, u_input.d), _wgslsmith_sub_i32(global2.a, u_input.a)), global2.a >> (0u % 32u)));
    var var_2 = Struct_2(max(_wgslsmith_div_i32(u_input.d, u_input.a), -11507i), func_5(~global2.b.a & ~(~var_0.a), Struct_2(abs(select(-2147483647i, -14545i, global2.c)), Struct_1(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b)), true), Struct_2(global2.a, Struct_1(1u), global2.c)), false);
    var var_3 = ~_wgslsmith_sub_u32(116639u, countOneBits(1u));
    return Struct_3(_wgslsmith_f_op_f32(min(1213f, global3[_wgslsmith_index_u32(5318u, 11u)])), vec4<bool>(all(func_3(Struct_1(1u), func_5(96443u, Struct_2(0i, var_2.b, true), Struct_2(-22243i, global2.b, true)), func_2(vec3<u32>(u_input.c, var_2.b.a, 4294967295u), vec3<u32>(47224u, u_input.c, 131695u), Struct_3(global3[_wgslsmith_index_u32(global2.b.a, 11u)], vec4<bool>(var_2.c, global2.c, var_2.c, var_2.c), var_2.a, -1i))).yyx), global2.c, true, !(global2.c == var_2.c) & all(vec2<bool>(false, false))), _wgslsmith_mult_i32(var_2.a, -2147483647i), 1i);
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = Struct_2(u_input.a, func_5(19697u, Struct_2(_wgslsmith_mult_i32(-45677i, firstTrailingBit(global2.a)), global2.b, true), Struct_2(_wgslsmith_sub_i32(arg_1.d, global2.a), arg_3, false)), true);
    global3 = array<f32, 11>();
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(arg_2.a - arg_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(151f, arg_1.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(firstLeadingBit(0u), 11u)] * -2200f) + _wgslsmith_f_op_f32(-arg_1.a)), global3[_wgslsmith_index_u32(1u, 11u)]), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(702f, _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-2120f - arg_1.a), _wgslsmith_f_op_f32(-1082f - arg_1.a))))))));
    global3 = array<f32, 11>();
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(select(var_2.yx, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_2.xx, vec2<f32>(485f, -1160f)) + _wgslsmith_f_op_vec2_f32(floor(var_2.xz))))), !(!vec2<bool>(arg_1.b.x, true)))), vec3<i32>(u_input.d, -28928i, 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 15>();
    global0 = array<vec3<f32>, 26>();
    global2 = Struct_2(u_input.d, global2.b, global2.c);
    let var_0 = _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(global2.b.a, 26u)] - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(640f, global3[_wgslsmith_index_u32(global2.b.a, 11u)], 103f)), global0[_wgslsmith_index_u32(global2.b.a, 26u)])));
    global0 = array<vec3<f32>, 26>();
    global3 = array<f32, 11>();
    let x = u_input.a;
    s_output = func_6(~vec4<i32>(26778i, 1i, ~(-14001i), select(global2.a, -1i, global2.c)), func_1(), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -128f), vec4<bool>(any(select(vec4<bool>(global2.c, global2.c, false, true), vec4<bool>(global2.c, false, global2.c, true), true)), false, true, true), 1i, 1i), func_5(_wgslsmith_sub_u32(global2.b.a << (~u_input.b.x % 32u), u_input.b.x), Struct_2(u_input.d, global2.b, any(!vec4<bool>(false, global2.c, global2.c, global2.c))), Struct_2(-global2.a & min(u_input.d, u_input.a), global2.b, false)));
}

