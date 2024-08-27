struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<u32>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: array<Struct_1, 16>;

var<private> global2: array<Struct_2, 13>;

var<private> global3: array<f32, 9>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32) -> vec3<u32> {
    let var_0 = false;
    let var_1 = Struct_4(true, all(vec3<bool>(all(!vec3<bool>(var_0, var_0, false)), !var_0, var_0)), global0[_wgslsmith_index_u32(u_input.a.x, 24u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(52127u, 9u)], _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(4911u, 9u)], global3[_wgslsmith_index_u32(arg_0, 9u)], var_0)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 9u)] + -699f)) + vec3<f32>(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(u_input.a.x, 9u)])), -1220f, _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(1u, 9u)]))))));
    global3 = array<f32, 9>();
    var var_2 = select(select(select(select(!vec3<bool>(var_0, false, false), !vec3<bool>(var_1.c.b, var_0, var_0), var_0), select(vec3<bool>(false, false, false), select(vec3<bool>(var_1.a, false, var_1.a), vec3<bool>(false, true, var_1.b), true), select(true, var_0, false)), true), !vec3<bool>(var_1.b, false, all(vec2<bool>(var_1.a, true))), true), select(vec3<bool>(!var_1.c.b || true, any(vec2<bool>(true, true)), !var_1.c.b), !(!(!vec3<bool>(false, var_0, var_0))), vec3<bool>(var_1.b, !all(vec4<bool>(var_1.b, true, false, true)), var_1.c.b)), true);
    var var_3 = 11937u;
    return ~var_1.c.c;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_2) -> bool {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(147f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(862f, -1971f, arg_2.b.b || arg_1.c.b))))), arg_1.d.x, arg_2.b.d.x, _wgslsmith_f_op_f32(max(arg_1.c.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~u_input.a.x, 9u)])))));
    var var_1 = ~vec2<u32>(6638u, ~(~u_input.a.x)) ^ ~abs(abs(vec2<u32>(u_input.a.x, u_input.a.x)) >> (arg_1.b.zz % vec2<u32>(32u)));
    var_1 = ~vec2<u32>(arg_1.a.x, _wgslsmith_mod_u32(~arg_2.b.c.x | u_input.a.x, ~(~10508u)));
    global3 = array<f32, 9>();
    var var_2 = vec2<bool>(any(select(select(vec4<bool>(arg_1.c.b, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, arg_1.c.b, arg_2.b.b, true), true), vec4<bool>(true, true, true, false)), !(!vec4<bool>(false, false, arg_2.b.b, arg_2.b.b)), arg_1.c.b)), all(vec4<bool>(!arg_1.c.b, arg_0.x > arg_1.c.e, arg_1.c.b, all(vec2<bool>(arg_1.c.b, arg_1.c.b)) | true)));
    return ~arg_2.b.c.x > 38004u;
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_1, 16>();
    var var_0 = Struct_4(true, func_4(vec2<i32>(-_wgslsmith_add_i32(-1i, -1i), -1i), Struct_3(vec4<u32>(4294967295u, 28264u, 4294967295u, 4294967295u) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(1u, 23770u, u_input.a.x, 1u), vec4<u32>(27247u, 36117u, 22796u, u_input.a.x)), ~func_3(94464u), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 21464u, 4294967295u), vec3<u32>(u_input.a.x, 1u, 1u)), true, select(vec3<u32>(0u, 108920u, 61872u), vec3<u32>(u_input.a.x, 23201u, u_input.a.x), vec3<bool>(false, false, true)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1124f, 979f))), 1i), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 9u)], -1979f))), select(vec3<u32>(27070u, u_input.a.x, 0u) & vec3<u32>(u_input.a.x, 4294967295u, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<u32>(0u, 74888u, 56451u)), true)), global2[_wgslsmith_index_u32(~u_input.a.x, 13u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(14575u, 60095u, 4294967295u, u_input.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 118835u, u_input.a.x, 116824u))), ~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), firstTrailingBit(27314u)), vec4<u32>(firstTrailingBit(u_input.a.x) & 17372u, _wgslsmith_sub_u32(~44563u, 1u), ~reverseBits(u_input.a.x), u_input.a.x)), 16u)], _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 9u)], global3[_wgslsmith_index_u32(1u, 9u)], global3[_wgslsmith_index_u32(u_input.a.x, 9u)]), vec3<f32>(-261f, global3[_wgslsmith_index_u32(42870u, 9u)], -673f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(120f, global3[_wgslsmith_index_u32(1u, 9u)], -1733f) - vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 9u)], 1273f, 1481f))))));
    let var_1 = i32(-1i) * -_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(~var_0.c.e, var_0.c.e, firstLeadingBit(var_0.c.e)), -23822i, var_0.c.e);
    global1 = array<Struct_1, 16>();
    let var_2 = -(max(vec2<i32>(var_0.c.e, 61507i) & (vec2<i32>(var_0.c.e, 1i) | vec2<i32>(var_0.c.e, var_1)), vec2<i32>(-1i, -3946i)) & vec2<i32>(-var_0.c.e, _wgslsmith_dot_vec4_i32(vec4<i32>(21961i, 0i, -1i, var_1) ^ vec4<i32>(-2147483647i, -28728i, var_0.c.e, var_1), vec4<i32>(var_0.c.e, var_1, var_0.c.e, 6267i) | vec4<i32>(-1i, var_0.c.e, 1i, 27508i))));
    return var_0.c;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: vec4<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.d.x))) - _wgslsmith_f_op_f32(arg_0.c.d.x + arg_1.c.d.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2468f + 996f)))))));
    let var_1 = func_3(abs(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~arg_0.a, ~arg_0.a), arg_1.c.c.x))).x;
    global2 = array<Struct_2, 13>();
    global3 = array<f32, 9>();
    var var_2 = arg_0;
    return arg_0;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: vec2<u32>) -> i32 {
    global0 = array<Struct_1, 24>();
    var var_0 = _wgslsmith_div_i32(0i, _wgslsmith_add_i32(0i, -37358i));
    global0 = array<Struct_1, 24>();
    let var_1 = func_5(Struct_3(_wgslsmith_div_vec4_u32(vec4<u32>(47883u, u_input.a.x, arg_2.x, 3426u), _wgslsmith_mult_vec4_u32(vec4<u32>(25636u, arg_0.x, 36068u, u_input.a.x), vec4<u32>(15790u, arg_1.x, 1u, arg_2.x))) | vec4<u32>(9382u & u_input.a.x, firstLeadingBit(33207u), 39656u, abs(0u)), vec3<u32>(0u, 11004u | u_input.a.x, 11409u), func_2(), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(28405u, 9u)]))), -1685f), vec3<u32>(func_2().c.x, 86890u, 0u)), Struct_4(any(vec2<bool>(0u < arg_0.x, false)), true, global1[_wgslsmith_index_u32(4294967295u, 16u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-965f, 1088f, 191f) * vec3<f32>(132f, 1748f, global3[_wgslsmith_index_u32(1u, 9u)]))))), select(!vec4<bool>(func_4(vec2<i32>(1i, 1i), Struct_3(vec4<u32>(4294967295u, arg_2.x, 18378u, u_input.a.x), arg_1, global0[_wgslsmith_index_u32(0u, 24u)], vec2<f32>(-222f, 1030f), vec3<u32>(arg_0.x, 11582u, 36710u)), Struct_2(-111f, global1[_wgslsmith_index_u32(u_input.a.x, 16u)])), any(vec2<bool>(false, true)), false, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true))), !select(select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)));
    var var_2 = _wgslsmith_f_op_f32(-1488f - _wgslsmith_f_op_f32(step(var_1.c.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1042f * 1232f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1682f)) - _wgslsmith_f_op_f32(trunc(var_1.d.x)))))));
    return 5619i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(!all(vec2<bool>(true, true)), any(vec3<bool>(!any(vec4<bool>(false, false, true, true)), false, !any(vec2<bool>(true, false)))), Struct_1(u_input.a.x, select(!(u_input.a.x != 15439u), false, any(vec4<bool>(false, false, false, false))), abs(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 52479u, 0u), vec3<u32>(51143u, u_input.a.x, u_input.a.x))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 9u)]))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(25623u, 9u)])))), abs(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-1i, 1i, 2147483647i)), vec3<i32>(-2147483647i, 0i, -22410i)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1549f, -472f, global3[_wgslsmith_index_u32(u_input.a.x, 9u)]) - vec3<f32>(1671f, global3[_wgslsmith_index_u32(u_input.a.x, 9u)], -119f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(921f, global3[_wgslsmith_index_u32(1u, 9u)], global3[_wgslsmith_index_u32(u_input.a.x, 9u)]))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 9u)], 928f, global3[_wgslsmith_index_u32(u_input.a.x, 9u)])))), vec3<f32>(-127f, 1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(24658u, 9u)] * global3[_wgslsmith_index_u32(u_input.a.x, 9u)]))))));
    var var_1 = var_0.c.c.yz;
    let var_2 = vec4<i32>(~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 30198i, var_0.c.e, -2147483647i), -vec4<i32>(-6812i, 2147483647i, var_0.c.e, -37400i)), vec4<i32>(var_0.c.e, var_0.c.e, var_0.c.e, i32(-1i) * -11733i)), -var_0.c.e, -func_1(~vec2<u32>(var_1.x, u_input.a.x) | vec2<u32>(u_input.a.x, var_0.c.c.x), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, 4294967295u, var_0.c.c.x), reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), u_input.a), -54439i);
    let var_3 = min(-_wgslsmith_add_i32(2147483647i, _wgslsmith_div_i32(func_5(Struct_3(vec4<u32>(1u, 4294967295u, u_input.a.x, var_1.x), var_0.c.c, global1[_wgslsmith_index_u32(u_input.a.x, 16u)], var_0.d.zx, vec3<u32>(var_1.x, 4294967295u, var_0.c.a)), var_0, vec4<bool>(var_0.b, true, var_0.c.b, false), vec4<bool>(false, var_0.a, var_0.a, true)).c.e, 14725i)), var_2.x);
    var_1 = u_input.a;
    var var_4 = vec2<i32>(firstTrailingBit(1i), _wgslsmith_div_i32(i32(-1i) * -1747i, var_0.c.e));
    var var_5 = var_0;
    var var_6 = func_5(func_5(Struct_3(vec4<u32>(~0u, func_3(22722u).x, var_0.c.a, var_1.x), vec3<u32>(var_0.c.a, var_0.c.c.x, 1u), Struct_1(countOneBits(1u), var_0.a, var_5.c.c, _wgslsmith_f_op_vec2_f32(var_0.c.d - var_5.d.xz), -1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_0.d.xz)) - _wgslsmith_f_op_vec2_f32(var_5.d.xy - vec2<f32>(-1182f, -1272f))), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.c.a, var_1.x, 57979u), var_0.c.c), var_5.c.c)), Struct_4(var_5.a, var_5.a, Struct_1(101842u | var_0.c.a, !var_0.c.b, _wgslsmith_sub_vec3_u32(var_0.c.c, vec3<u32>(22914u, var_1.x, var_0.c.c.x)), _wgslsmith_f_op_vec2_f32(-var_5.c.d), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, var_3), vec3<i32>(2147483647i, var_2.x, 0i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0.d)))), select(select(select(vec4<bool>(true, true, false, var_0.a), vec4<bool>(var_5.a, var_5.a, true, true), vec4<bool>(var_5.a, var_5.c.b, var_0.b, false)), !vec4<bool>(var_0.c.b, false, var_0.b, false), true), vec4<bool>(true, false, var_0.c.e < var_2.x, true), var_0.a), select(!select(vec4<bool>(false, false, false, var_5.c.b), vec4<bool>(false, true, true, true), var_5.b), vec4<bool>(true, !var_0.a, var_0.c.b, var_5.c.b || var_0.c.b), true)), Struct_4(var_5.b, min(u_input.a.x, _wgslsmith_mod_u32(0u, var_1.x)) < u_input.a.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_5.c.a, var_0.c.c.x, var_1.x, 17896u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, var_5.c.a, var_0.c.a), vec4<u32>(96396u, 28807u, u_input.a.x, 0u))), 24u)], var_0.d), vec4<bool>(_wgslsmith_div_f32(1036f, var_5.c.d.x) >= var_5.c.d.x, var_0.a, any(select(select(vec2<bool>(false, var_0.c.b), vec2<bool>(false, true), var_5.a), select(vec2<bool>(var_0.a, var_5.b), vec2<bool>(true, var_0.a), var_5.a), false)), !(!var_0.a) || false), vec4<bool>(func_2().b, func_2().b, min(func_2().e, _wgslsmith_mod_i32(76865i, 11223i)) < -2147483647i, all(!select(vec4<bool>(var_5.a, false, true, false), vec4<bool>(var_5.b, false, var_5.a, true), var_5.b))));
    var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_add_u32(4294967295u, 36314u | var_6.e.x) >> (min(max(16723u, u_input.a.x), 47308u) % 32u), var_0.c.a, 153u), vec4<i32>(var_4.x, firstLeadingBit(reverseBits(1i)), abs(_wgslsmith_clamp_i32(var_0.c.e, ~(-52744i), var_3)), _wgslsmith_clamp_i32(abs(firstLeadingBit(var_2.x)), -1i, 29867i << (_wgslsmith_dot_vec4_u32(var_6.a, vec4<u32>(var_0.c.c.x, 1u, var_6.e.x, var_5.c.c.x)) % 32u))), select(vec2<i32>(var_4.x, var_3), _wgslsmith_sub_vec2_i32((var_2.wz ^ vec2<i32>(var_2.x, -2147483647i)) >> (~vec2<u32>(58148u, 1u) % vec2<u32>(32u)), var_2.zx), -453f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-263f * 1000f) - _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(u_input.a.x, 9u)])))), min(35657i, -34219i | var_6.c.e));
}

