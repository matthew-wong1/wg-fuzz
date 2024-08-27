struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

var<private> global1: array<bool, 8>;

var<private> global2: array<vec2<f32>, 15>;

var<private> global3: bool = true;

var<private> global4: vec2<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2() -> Struct_4 {
    let var_0 = ~4294967295u;
    return Struct_4(Struct_3(any(!vec2<bool>(global4.x, global0[_wgslsmith_index_u32(var_0, 7u)])), _wgslsmith_mult_vec2_i32(u_input.b.yw, vec2<i32>(-1i, -1i) >> (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))), abs(vec4<u32>(0u, _wgslsmith_mult_u32(u_input.a, 27281u), firstLeadingBit(var_0), countOneBits(u_input.c)))), Struct_1(select(vec2<bool>(false, true), !vec2<bool>(global0[_wgslsmith_index_u32(var_0, 7u)], global1[_wgslsmith_index_u32(u_input.a, 8u)]), vec2<bool>(any(vec4<bool>(true, global0[_wgslsmith_index_u32(var_0, 7u)], true, global1[_wgslsmith_index_u32(38878u, 8u)])), global1[_wgslsmith_index_u32(var_0, 8u)])), -_wgslsmith_mult_i32(i32(-1i) * -1i, -2147483647i), _wgslsmith_add_i32(187i, u_input.b.x << (1u % 32u)), (_wgslsmith_mult_i32(u_input.b.x, -1i) << (u_input.a % 32u)) ^ _wgslsmith_clamp_i32(-2147483647i, i32(-1i) * -2147483647i, u_input.b.x)), u_input.b.wzz, max(-18991i | -u_input.b.x, u_input.b.x), reverseBits(u_input.b.x));
}

fn func_3() -> vec2<bool> {
    var var_0 = func_2();
    var_0 = Struct_4(func_2().a, var_0.b, _wgslsmith_div_vec3_i32(select(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.c.x, u_input.b.x, -1i) >> (var_0.a.c.wxz % vec3<u32>(32u)), var_0.c), vec3<i32>(var_0.e, firstLeadingBit(42615i), ~1i), func_2().a.a), vec3<i32>(-1i) * -u_input.b.xxz), select(max(-1i, 27477i), ~u_input.b.x & u_input.b.x, global0[_wgslsmith_index_u32(13993u, 7u)]), abs(var_0.e));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2373f, -1066f, -1017f), vec3<f32>(-855f, 1417f, 282f), global1[_wgslsmith_index_u32(var_0.a.c.x, 8u)])), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-948f, 540f, -457f), vec3<f32>(-821f, -598f, -2733f), vec3<bool>(false, global4.x, var_0.a.a))))))) + vec3<f32>(-373f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1047f, 514f)))), _wgslsmith_f_op_f32(ceil(-799f))));
    var_0 = Struct_4(func_2().a, func_2().b, vec3<i32>(~(-(-2147483647i ^ var_0.e)), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.e, var_0.d, 14038i), u_input.b.zyz), select(vec3<i32>(u_input.b.x, -2147483647i, 22171i), -vec3<i32>(1i, var_0.e, u_input.b.x), func_2().b.a.x)), -1i), 2147483647i, u_input.b.x);
    var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-668f, -1676f, var_1.x))) + vec3<f32>(var_1.x, 1753f, var_1.x)) + vec3<f32>(_wgslsmith_div_f32(var_1.x, 337f), _wgslsmith_f_op_f32(select(var_1.x, var_1.x, global4.x)), 1218f)))));
    return select(func_2().b.a, func_2().b.a, true);
}

fn func_1(arg_0: bool, arg_1: Struct_5, arg_2: bool) -> Struct_5 {
    global0 = array<bool, 7>();
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(floor(1f));
    var var_2 = select(func_2().b.a, func_3(), !arg_0);
    var var_3 = _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, abs(u_input.a), _wgslsmith_mod_u32(~118969u, var_0.a.c.x | 1947u)), ~(~vec3<u32>(var_0.a.c.x, u_input.a, u_input.a))), abs(~_wgslsmith_mult_vec3_u32(var_0.a.c.wyy, firstTrailingBit(vec3<u32>(u_input.c, var_0.a.c.x, 41395u)))));
    return Struct_5(func_2().d);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 15>();
    let var_0 = func_1(global0[_wgslsmith_index_u32(~u_input.a, 7u)], Struct_5(-2147483647i), true);
    let var_1 = vec3<bool>(all(select(select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(52483u, 8u)], global4.x), vec4<bool>(global0[_wgslsmith_index_u32(46858u, 7u)], global1[_wgslsmith_index_u32(49228u, 8u)], global4.x, global4.x), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 7u)], global4.x, false)), !vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(u_input.a, 7u)], global4.x, false), !vec4<bool>(true, false, false, global4.x))), all(vec2<bool>(global0[_wgslsmith_index_u32(~(~u_input.c), 7u)], global4.x || true)), u_input.b.x < -3761i);
    let var_2 = all(!(!select(var_1.yx, !var_1.xx, vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 7u)], global4.x))));
    var var_3 = Struct_2(vec2<i32>(19934i, max(~var_0.a, -20224i)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(419f)), 1000f, true))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1897f)), -424f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-2919f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(904f * 837f))))));
    var var_4 = Struct_2(~u_input.b.yw, var_3.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1271f - var_3.c.x), _wgslsmith_f_op_f32(-var_3.c.x), 1225f, _wgslsmith_f_op_f32(floor(1018f))) + var_3.c)));
    global2 = array<vec2<f32>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(1989f, ~(vec2<u32>(u_input.c, u_input.a) >> (~vec2<u32>(u_input.a, 1u) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1220f + _wgslsmith_f_op_f32(-var_4.b))))), _wgslsmith_mult_vec4_i32(max(vec4<i32>(-var_4.a.x, -1i, var_0.a, ~var_0.a), firstLeadingBit(vec4<i32>(var_0.a, -1i, -16976i, var_4.a.x))), max(countOneBits(vec4<i32>(var_4.a.x, -2147483647i, -2147483647i, var_3.a.x)), u_input.b) ^ -vec4<i32>(var_4.a.x, -13179i, var_0.a, var_3.a.x)), ~vec4<u32>(4294967295u | u_input.a, ~(~u_input.a), 40959u, reverseBits(~0u)));
}

