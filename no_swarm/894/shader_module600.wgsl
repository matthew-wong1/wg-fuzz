struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32 = -279f;

var<private> global2: array<Struct_3, 3>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: i32, arg_3: vec4<f32>) -> bool {
    var var_0 = vec3<bool>(_wgslsmith_clamp_i32(~_wgslsmith_mult_i32(u_input.a.x, -71242i), _wgslsmith_mod_i32(arg_1 << (1u % 32u), 59664i), arg_2) != (arg_2 ^ -2147483647i), arg_0.x, true);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-arg_3.x));
    var var_2 = Struct_1(16171i, arg_1);
    global2 = array<Struct_3, 3>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3.x, _wgslsmith_f_op_f32(floor(arg_3.x)))));
    return !(u_input.a.x <= 9803i);
}

fn func_2(arg_0: i32, arg_1: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, select(~30592u, 51284u, !arg_1.x), u_input.b.x), _wgslsmith_clamp_vec3_u32(~u_input.b, u_input.b, vec3<u32>(~27826u, u_input.b.x, u_input.b.x | u_input.b.x)), _wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(20092u, firstTrailingBit(13149u), 1u), abs(u_input.b))), abs(select(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b.x, 0u, u_input.b.x), vec3<u32>(u_input.b.x, 4020u, 4294967295u)), vec3<u32>(u_input.b.x, 94942u, u_input.b.x) & u_input.b, !func_3(vec4<bool>(false, false, arg_1.x, true), -44621i, -2147483647i, vec4<f32>(448f, 503f, 1374f, 1267f)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-189f)))));
    let var_2 = true;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -286f))))));
    let var_3 = Struct_3(1f);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.a))), _wgslsmith_f_op_f32(var_3.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-120f, var_3.a)))))));
}

fn func_4(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -151f)));
    var var_1 = all(!vec4<bool>(!(u_input.b.x > u_input.b.x), false, any(vec4<bool>(true, true, true, true)), true));
    var var_2 = global2[_wgslsmith_index_u32(4294967295u, 3u)];
    let var_3 = var_2.a;
    var var_4 = !vec4<bool>(true, false, 59067i < u_input.a.x, false);
    return Struct_1(u_input.a.x, firstTrailingBit(u_input.a.x >> (~u_input.b.x % 32u)));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3.a;
    global0 = arg_0.b.a;
    var var_1 = func_4(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-312f)), _wgslsmith_f_op_f32(-arg_0.c))), -214f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(u_input.a.x, vec2<bool>(true, true))), arg_0.c)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1265f + -1692f), -490f))));
    let var_2 = Struct_2(2524f);
    var_1 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.a.a, 904f, var_2.a, -1589f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-727f, 454f, -107f, 509f))), vec4<f32>(735f, -171f, _wgslsmith_f_op_f32(arg_0.b.a * 596f), _wgslsmith_f_op_f32(func_2(var_0, vec2<bool>(true, false)))), all(vec2<bool>(false, false))))));
    return arg_3;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> Struct_3 {
    var var_0 = u_input.b.x;
    let var_1 = arg_1;
    let var_2 = arg_0;
    var var_3 = !(!select(true, true, true) | !(!func_3(vec4<bool>(true, true, true, false), 0i, -3263i, vec4<f32>(arg_0.a, 1113f, -787f, 387f))));
    var_3 = all(select(vec4<bool>(false, true, any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))), all(vec3<bool>(true, true, true))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true)), u_input.b.x <= _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 25750u), u_input.b.xx), u_input.b.zz)));
    return global2[_wgslsmith_index_u32(u_input.b.x, 3u)];
}

fn func_6(arg_0: Struct_3) -> Struct_3 {
    var var_0 = Struct_2(-1344f);
    var_0 = Struct_2(_wgslsmith_div_f32(2369f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1483f), _wgslsmith_f_op_f32(func_2(16942i, vec2<bool>(true, false))))), _wgslsmith_f_op_f32(max(-273f, -2796f)), ~u_input.b.x >= 35840u))));
    global1 = _wgslsmith_f_op_f32(var_0.a - -1778f);
    let var_1 = -1732f;
    global1 = _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(ceil(1763f)));
    return func_5(Struct_2(var_1), func_1(Struct_4(func_5(Struct_2(var_1), Struct_1(u_input.a.x, 2147483647i), func_1(Struct_4(arg_0, Struct_2(-696f), -759f), vec4<u32>(4472u, u_input.b.x, u_input.b.x, 0u), 44465i, Struct_1(13685i, u_input.a.x))), Struct_2(_wgslsmith_f_op_f32(select(336f, -1177f, false))), _wgslsmith_f_op_f32(round(arg_0.a))), vec4<u32>(countOneBits(_wgslsmith_add_u32(1u, u_input.b.x)), u_input.b.x, _wgslsmith_div_u32(~4294967295u, u_input.b.x), _wgslsmith_mult_u32(48262u, u_input.b.x)), u_input.a.x, Struct_1(17549i, firstLeadingBit(~u_input.a.x))), Struct_1(_wgslsmith_mult_i32(~u_input.a.x, 2147483647i), -89228i));
}

fn func_7(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3) -> vec2<bool> {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-404f, arg_1.a))) + _wgslsmith_f_op_f32(min(arg_1.a, arg_1.a))));
    global1 = _wgslsmith_f_op_f32(func_2(-53175i << (_wgslsmith_mod_u32(u_input.b.x, _wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x))) % 32u), vec2<bool>(true, true)));
    global1 = _wgslsmith_f_op_f32(arg_1.a - arg_2.a);
    var var_0 = Struct_1(-10015i, func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-209f, 832f, arg_2.a, -618f)))))).b);
    var_0 = Struct_1(-2147483647i, _wgslsmith_add_i32(select(max(-16736i, -2147483647i), ~u_input.a.x, true) >> (min(~15266u, ~u_input.b.x) % 32u), _wgslsmith_sub_i32(u_input.a.x, arg_0)));
    return !select(select(vec2<bool>(u_input.b.x == 1u, true), vec2<bool>(u_input.b.x > u_input.b.x, true), arg_0 <= -u_input.a.x), vec2<bool>(true, true), vec2<bool>(!(-43422i == var_0.b), false));
}

fn func_8(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> StorageBuffer {
    let var_0 = func_7(min(-2147483647i, 0i), Struct_3(-1131f), global2[_wgslsmith_index_u32(u_input.b.x, 3u)]);
    global2 = array<Struct_3, 3>();
    let var_1 = Struct_1(~func_1(Struct_4(global2[_wgslsmith_index_u32(arg_1, 3u)], Struct_2(1096f), _wgslsmith_f_op_f32(select(420f, 2486f, false))), _wgslsmith_clamp_vec4_u32(vec4<u32>(18916u, u_input.b.x, 35880u, arg_1), vec4<u32>(arg_1, arg_1, 4294967295u, u_input.b.x), firstTrailingBit(vec4<u32>(arg_1, u_input.b.x, arg_1, u_input.b.x))), arg_2.b, func_1(Struct_4(Struct_3(-1512f), Struct_2(413f), -2209f), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 1u, 5536u, arg_1), vec4<u32>(0u, u_input.b.x, 11317u, 73430u)), min(-17359i, arg_2.a), arg_2)).b, _wgslsmith_div_i32(-arg_2.a, u_input.a.x) >> (reverseBits(25928u) % 32u));
    let var_2 = func_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(min(229f, 948f)), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -670f), _wgslsmith_f_op_f32(346f - -363f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-893f - 976f), _wgslsmith_div_f32(1133f, 1482f), -2621f, 1f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 687f, 686f, 1276f)), select(select(vec4<bool>(false, var_0.x, false, false), vec4<bool>(false, var_0.x, true, arg_3), vec4<bool>(false, arg_0.x, false, false)), vec4<bool>(false, true, false, false), true))))));
    global2 = array<Struct_3, 3>();
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(483f, -736f, 252f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-363f, 660f, -1000f) + vec3<f32>(1000f, 411f, 1352f)), arg_0.x)) * vec3<f32>(1f, 1f, 1f)))), ((_wgslsmith_mult_vec3_u32(vec3<u32>(58772u, 4294967295u, arg_1), vec3<u32>(0u, arg_1, arg_1)) & ~u_input.b) | vec3<u32>(u_input.b.x, u_input.b.x & arg_1, 1u)) & vec3<u32>(113868u, arg_1, firstTrailingBit(arg_1)), var_1.b, vec4<f32>(1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(342f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1274f * -688f), -236f)) - _wgslsmith_f_op_f32(f32(-1f) * -194f)), 1721f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_8(func_7(u_input.a.x >> (u_input.b.x % 32u), global2[_wgslsmith_index_u32(0u, 3u)], func_6(func_5(Struct_2(357f), Struct_1(0i, u_input.a.x), func_1(Struct_4(Struct_3(835f), Struct_2(-594f), 1093f), vec4<u32>(126423u, u_input.b.x, 1u, u_input.b.x), 44345i, Struct_1(0i, 7185i))))), u_input.b.x, func_4(vec4<f32>(1f, 1f, 1f, 1f)), select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -363f) + -511f) >= func_6(Struct_3(157f)).a, false, !select(all(vec3<bool>(false, true, false)), true, all(vec4<bool>(true, true, false, false)))));
}

