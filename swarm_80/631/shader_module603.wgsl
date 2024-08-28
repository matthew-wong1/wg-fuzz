struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, 2147483647i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(1i, -1i), vec2<i32>(33674i, 0i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(0i, -46472i), vec2<i32>(1i, 1276i), vec2<i32>(0i, 0i), vec2<i32>(2147483647i, 0i), vec2<i32>(-25206i, 121i), vec2<i32>(-1i, -36617i), vec2<i32>(-1i, 2990i), vec2<i32>(0i, 2147483647i), vec2<i32>(25484i, 905i), vec2<i32>(-30561i, i32(-2147483648)), vec2<i32>(-47934i, 35736i), vec2<i32>(66241i, -30563i), vec2<i32>(19400i, 5709i), vec2<i32>(2147483647i, 0i), vec2<i32>(13209i, 11899i), vec2<i32>(2147483647i, 56208i), vec2<i32>(-12831i, -19200i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(39391i, -1i), vec2<i32>(-4097i, -25770i));

var<private> global1: array<f32, 24>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: f32) -> i32 {
    global1 = array<f32, 24>();
    let var_0 = Struct_1(!any(vec2<bool>(true, true)) && all(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true))), arg_0);
    var var_1 = Struct_1(var_0.a, global1[_wgslsmith_index_u32(~24580u, 24u)]);
    var_1 = var_0;
    global0 = array<vec2<i32>, 26>();
    return ~_wgslsmith_add_i32(_wgslsmith_add_i32(-2147483647i, u_input.a), -reverseBits(_wgslsmith_add_i32(0i, -1i)));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = func_2(_wgslsmith_f_op_f32(ceil(1085f)));
    global0 = array<vec2<i32>, 26>();
    global0 = array<vec2<i32>, 26>();
    var var_1 = Struct_1(any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(16747u, 24u)])) * _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(694f - global1[_wgslsmith_index_u32(22336u, 24u)]), global1[_wgslsmith_index_u32(abs(1u), 24u)]), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(13693u, 58146u, 1u), 24u)])))));
    global1 = array<f32, 24>();
    return Struct_1(any(!vec2<bool>(var_1.a | var_1.a, true)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(46122u, ~(~(~50958u))), 24u)]);
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(round(1229f)), 519f, _wgslsmith_div_f32(743f, global1[_wgslsmith_index_u32(1u, 24u)]), _wgslsmith_f_op_f32(step(arg_0.b, global1[_wgslsmith_index_u32(22943u, 24u)]))))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-185f, _wgslsmith_f_op_f32(-522f + arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(6545u, 24u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, global1[_wgslsmith_index_u32(1u, 24u)], arg_0.b, -878f) + vec4<f32>(-674f, arg_0.b, -397f, arg_0.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1142f, arg_0.b, global1[_wgslsmith_index_u32(30953u, 24u)], global1[_wgslsmith_index_u32(32442u, 24u)])), arg_0.a || true))))));
    var var_1 = all(!select(vec4<bool>(-131f >= var_0.x, all(vec4<bool>(false, false, arg_0.a, arg_0.a)), select(false, arg_0.a, arg_0.a), arg_0.a || arg_0.a), select(vec4<bool>(arg_0.a, true, true, true), !vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), !vec4<bool>(true, false, false, arg_0.a)), (arg_0.a | arg_0.a) | true));
    var var_2 = var_0.zz;
    var var_3 = vec4<bool>(true, arg_0.a, false, global1[_wgslsmith_index_u32(~1u, 24u)] < 1473f);
    var var_4 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_add_i32(0i, -1i), i32(-1i) * -2147483647i, -1i, ~(-1i)), _wgslsmith_div_vec4_i32(~vec4<i32>(-25339i, u_input.a, u_input.a, u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.a, -1i, u_input.a), vec4<i32>(u_input.a, u_input.a, 22585i, 62690i)))), ~(~vec4<i32>(21996i, -35469i, u_input.a, 2147483647i)) | -abs(vec4<i32>(-2147483647i, u_input.a, u_input.a, -25785i))), -4218i);
    return vec3<u32>(~_wgslsmith_div_u32(select(78059u, 3758u, false), ~1u) & 6152u, 0u, abs(abs(_wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, 44922u), _wgslsmith_mult_u32(1u, 0u)))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.b, global1[_wgslsmith_index_u32(46273u, 24u)], true)), -1340f, -1069f, _wgslsmith_f_op_f32(f32(-1f) * -650f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-455f, arg_0.b, -1000f, 667f), vec4<f32>(arg_0.b, arg_0.b, -1309f, -371f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1318f, arg_0.b, global1[_wgslsmith_index_u32(73858u, 24u)], -1000f) - vec4<f32>(-376f, arg_0.b, -905f, global1[_wgslsmith_index_u32(arg_2.x, 24u)]))), !(!vec4<bool>(arg_0.a, true, false, arg_0.a)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.b, 417f, global1[_wgslsmith_index_u32(19692u, 24u)], global1[_wgslsmith_index_u32(arg_2.x, 24u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(arg_2.x, 24u)], global1[_wgslsmith_index_u32(arg_2.x, 24u)], -129f, 381f))))));
    global1 = array<f32, 24>();
    let var_1 = _wgslsmith_f_op_vec3_f32(var_0.xzw + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_0.yyy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(40438u, 24u)], arg_0.b, 345f) - vec3<f32>(-538f, arg_0.b, arg_0.b)))))));
    var var_2 = _wgslsmith_dot_vec4_u32(countOneBits(max(countOneBits(vec4<u32>(23352u, 0u, arg_2.x, arg_2.x)), abs(vec4<u32>(arg_2.x, 4294967295u, arg_2.x, arg_2.x)))), vec4<u32>(~arg_2.x, 1u, min(~arg_2.x, arg_2.x), _wgslsmith_mod_u32(_wgslsmith_add_u32(arg_2.x, 19938u), 4294967295u)) ^ ~firstTrailingBit(~vec4<u32>(arg_2.x, arg_2.x, arg_2.x, 0u)));
    let var_3 = !(!vec4<bool>(arg_1, true, true, ~47164u > _wgslsmith_mult_u32(22102u, arg_2.x)));
    return -486f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -abs(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(i32(-1i) * -1i, -1i, _wgslsmith_div_i32(u_input.a, -52611i)), _wgslsmith_mult_i32(-u_input.a, firstLeadingBit(u_input.a)), 39644i));
    global0 = array<vec2<i32>, 26>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(func_4(func_1(u_input.a), !(true && func_1(69236i).a), _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 1u, 1u), _wgslsmith_add_vec3_u32(func_3(Struct_1(false, 545f)), vec3<u32>(0u, 4294967295u, 0u))))), ~vec4<u32>(1u, 1u, ~4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(6410u, 5987u, 1u, 42078u), firstTrailingBit(vec4<u32>(26681u, 4294967295u, 77699u, 0u)))), _wgslsmith_div_u32(reverseBits(1u), 1u), func_2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 24u)])) != firstTrailingBit(func_2(_wgslsmith_f_op_f32(907f + -1277f))));
    let var_2 = true && var_1.d;
    let var_3 = select(!select(vec2<bool>(!var_1.d, false), select(vec2<bool>(true, var_2), vec2<bool>(true, true), vec2<bool>(var_1.d, true)), select(select(vec2<bool>(var_2, true), vec2<bool>(var_1.d, var_1.d), vec2<bool>(var_1.d, var_1.d)), vec2<bool>(var_2, var_2), select(vec2<bool>(var_1.d, true), vec2<bool>(var_1.d, true), vec2<bool>(false, var_1.d)))), select(select(vec2<bool>(true, true), vec2<bool>(var_1.d, true), vec2<bool>(true || var_1.d, false)), !select(vec2<bool>(var_1.d, var_1.d), select(vec2<bool>(var_1.d, var_1.d), vec2<bool>(false, var_2), false), true), vec2<bool>(var_2, var_2)), select(vec2<bool>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(var_1.b.x, 24u)], -422f) >= -1000f, any(!vec4<bool>(true, var_2, var_2, var_2))), select(vec2<bool>(all(vec4<bool>(false, false, true, var_2)), var_1.d), select(!vec2<bool>(var_1.d, false), !vec2<bool>(var_1.d, true), vec2<bool>(true, true)), vec2<bool>(var_1.d, true)), !vec2<bool>(var_2, var_1.d)));
    global1 = array<f32, 24>();
    var var_4 = _wgslsmith_add_vec3_i32(vec3<i32>(~(-1i) << (~var_1.c % 32u), 1i, _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a, 1i), u_input.a) | abs(max(u_input.a, u_input.a))), min(vec3<i32>(_wgslsmith_mod_i32(u_input.a, 0i), ~u_input.a, -20736i) >> (var_1.b.zxw % vec3<u32>(32u)), select(vec3<i32>(u_input.a, u_input.a, u_input.a), -vec3<i32>(u_input.a, u_input.a, u_input.a), var_1.d) | -(~vec3<i32>(u_input.a, 34470i, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(var_1.c, 24u)])), _wgslsmith_f_op_f32(ceil(1f)), -((-vec2<i32>(3917i, var_4.x) ^ var_4.xx) >> (~vec2<u32>(14016u, var_1.c) % vec2<u32>(32u))), reverseBits(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(0u, 1321u, 24937u, 1u)), firstTrailingBit(vec4<u32>(var_1.b.x, var_1.c, 105698u, var_1.b.x)))), reverseBits(var_1.b));
}

