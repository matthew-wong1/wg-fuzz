struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: u32,
    c: Struct_4,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 7>;

var<private> global1: array<vec2<bool>, 5> = array<vec2<bool>, 5>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global2: array<f32, 25>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_2, arg_3: vec2<bool>) -> f32 {
    global2 = array<f32, 25>();
    global0 = array<vec2<i32>, 7>();
    let var_0 = _wgslsmith_mod_vec2_u32(~vec2<u32>(1u << ((0u & u_input.a) % 32u), 15495u), vec2<u32>(u_input.a, _wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(9097u, 35096u)), ~(~vec2<u32>(u_input.d, 1u)))));
    let var_1 = Struct_4(true, Struct_3(881f, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-223f, -181f, 145f, -1538f), vec4<f32>(global2[_wgslsmith_index_u32(u_input.d, 25u)], 1561f, 1589f, 151f)), vec4<f32>(-1547f, global2[_wgslsmith_index_u32(u_input.d, 25u)], 656f, -176f)) + vec4<f32>(445f, _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(7365u, 25u)], -2062f)), _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(35850u, 25u)])), global2[_wgslsmith_index_u32(var_0.x << (4294967295u % 32u), 25u)])), u_input.d & 4294967295u), Struct_3(global2[_wgslsmith_index_u32(var_0.x, 25u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(var_0.x, 25u)], global2[_wgslsmith_index_u32(0u, 25u)], -150f, -683f) - vec4<f32>(538f, 397f, global2[_wgslsmith_index_u32(var_0.x, 25u)], global2[_wgslsmith_index_u32(var_0.x, 25u)])))), ~(~60187u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.x, 25u)] - _wgslsmith_f_op_f32(min(-1022f, -453f)))))));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-899f + 302f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 25u)]), _wgslsmith_f_op_f32(max(2260f, global2[_wgslsmith_index_u32(31635u, 25u)]))))))), arg_2.b, Struct_4(all(!select(vec2<bool>(false, true), vec2<bool>(arg_1, arg_1), true)), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(false, false, Struct_2(vec3<i32>(-21557i, -15795i, u_input.b.x)), global1[_wgslsmith_index_u32(u_input.d, 5u)])) + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(19058u, 25u)] - global2[_wgslsmith_index_u32(arg_2.b, 25u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-133f, -260f, -1214f, global2[_wgslsmith_index_u32(53818u, 25u)]))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 25u)], global2[_wgslsmith_index_u32(8622u, 25u)], 519f, global2[_wgslsmith_index_u32(arg_2.b, 25u)]))), 1u), Struct_3(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_2.b, 4294967295u), 25u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2[_wgslsmith_index_u32(arg_2.b, 25u)], 528f, global2[_wgslsmith_index_u32(u_input.a, 25u)], global2[_wgslsmith_index_u32(6117u, 25u)]), vec4<f32>(-433f, -291f, global2[_wgslsmith_index_u32(88400u, 25u)], global2[_wgslsmith_index_u32(16721u, 25u)])))), 0u)), Struct_4(arg_1, Struct_3(global2[_wgslsmith_index_u32(abs(abs(u_input.d)), 25u)], vec4<f32>(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(arg_2.b, 25u)])), -793f, global2[_wgslsmith_index_u32(1u, 25u)], -2048f), ~arg_2.b), Struct_3(-1147f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.d, 25u)], -1000f, 815f, -494f) + vec4<f32>(global2[_wgslsmith_index_u32(1u, 25u)], global2[_wgslsmith_index_u32(4294967295u, 25u)], global2[_wgslsmith_index_u32(u_input.d, 25u)], global2[_wgslsmith_index_u32(u_input.c, 25u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(0u, 25u)], global2[_wgslsmith_index_u32(36223u, 25u)], 165f, global2[_wgslsmith_index_u32(arg_2.b, 25u)]))), ~_wgslsmith_sub_u32(u_input.d, 4294967295u))));
    global2 = array<f32, 25>();
    let var_1 = Struct_1(arg_2.a, 10215u);
    let var_2 = vec3<i32>(arg_2.a.x, _wgslsmith_clamp_i32(arg_2.a.x, arg_0 ^ -2147483647i, -_wgslsmith_add_i32(0i, _wgslsmith_mult_i32(arg_2.a.x, 49537i))), -_wgslsmith_dot_vec4_i32(~vec4<i32>(-44930i, 28804i, 0i, var_1.a.x), abs(u_input.b)) & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x << (43989u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_2.a.x), var_1.a.xz), -1i), arg_2.a));
    global1 = array<vec2<bool>, 5>();
    return ~arg_2.b;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3) -> bool {
    global0 = array<vec2<i32>, 7>();
    let var_0 = max(vec3<i32>(u_input.b.x, u_input.b.x, _wgslsmith_clamp_i32(-22527i, -41024i, _wgslsmith_mult_i32(0i, u_input.b.x)) ^ 1i), ~u_input.b.wyy);
    var var_1 = select(!(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), false))), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.x == global2[_wgslsmith_index_u32(~arg_1.c, 25u)], -u_input.b.x < _wgslsmith_sub_i32(-2147483647i, var_0.x), any(vec3<bool>(true, false, false)) | false, false & (arg_0.x >= arg_0.x)), select(vec4<bool>(true, true, all(vec4<bool>(false, true, false, false)), true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), !(arg_1.c > 46080u))), vec4<bool>(!((u_input.c <= u_input.a) && false), arg_0.x <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -297f), -686f), any(select(vec2<bool>(true, true), select(global1[_wgslsmith_index_u32(arg_1.c, 5u)], vec2<bool>(false, false), true), vec2<bool>(true, false))), true));
    global1 = array<vec2<bool>, 5>();
    global2 = array<f32, 25>();
    return any(vec3<bool>(var_1.x, select(true, false, ~arg_1.c >= u_input.d), !(!var_1.x)));
}

fn func_1(arg_0: vec4<i32>) -> Struct_4 {
    var var_0 = u_input.b.x;
    var var_1 = -260f;
    let var_2 = global1[_wgslsmith_index_u32(100193u, 5u)];
    let var_3 = !func_4(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(384f, global2[_wgslsmith_index_u32(u_input.a, 25u)]), _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(u_input.d, 25u)], global2[_wgslsmith_index_u32(u_input.c, 25u)])), !var_2.x)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_2(2147483647i, true, Struct_1(u_input.b.wxw, 11132u)), u_input.c), 25u)]), Struct_3(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.a, 1u)), 25u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(578f, -1000f, global2[_wgslsmith_index_u32(u_input.c, 25u)], -868f)) * vec4<f32>(-1659f, global2[_wgslsmith_index_u32(u_input.d, 25u)], 866f, global2[_wgslsmith_index_u32(4294967295u, 25u)])), 13769u));
    let var_4 = vec2<u32>(1038u, _wgslsmith_add_u32(~(~u_input.d & max(u_input.a, u_input.d)), _wgslsmith_mod_u32(~1u, 98920u)));
    return Struct_4(countOneBits(1u) <= u_input.c, Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 25u)]) - -528f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 25u)] * 991f), global2[_wgslsmith_index_u32(~var_4.x, 25u)]))), vec4<f32>(-360f, global2[_wgslsmith_index_u32(var_4.x, 25u)], global2[_wgslsmith_index_u32(func_2(1i >> (1u % 32u), true, Struct_1(vec3<i32>(arg_0.x, -2147483647i, u_input.b.x), var_4.x)), 25u)], -383f), countOneBits(~1u)), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1132f)), _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(var_4.x, 25u)], global2[_wgslsmith_index_u32(0u, 25u)])))), vec4<f32>(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(~18822u, 25u)], _wgslsmith_f_op_f32(-1372f - 525f), var_2.x)), _wgslsmith_f_op_f32(sign(720f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(61515u, 25u)], global2[_wgslsmith_index_u32(1u, 25u)]))), -985f), 0u));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4) -> Struct_5 {
    global0 = array<vec2<i32>, 7>();
    global1 = array<vec2<bool>, 5>();
    global0 = array<vec2<i32>, 7>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0.b.c, 25u)]) * -519f)), arg_1.b.a) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.c.b.x - arg_1.b.a), _wgslsmith_f_op_f32(-1000f + arg_1.c.b.x)) - _wgslsmith_f_op_f32(-arg_0.b.b.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -591f)))));
    global0 = array<vec2<i32>, 7>();
    return Struct_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + arg_1.c.a) * _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(0u, 25u)], -1350f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(func_1(u_input.b).c.a - _wgslsmith_f_op_f32(trunc(arg_0.c.b.x))))), _wgslsmith_f_op_f32(arg_0.c.a + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-2208f)), 1178f))), _wgslsmith_add_u32(_wgslsmith_add_u32(0u, 22433u), _wgslsmith_mod_u32(~0u, _wgslsmith_sub_u32(31978u, arg_1.c.c) << (min(0u, 25806u) % 32u))), arg_0, func_1(min(abs(vec4<i32>(u_input.b.x, -1i, -2147483647i, u_input.b.x)), -vec4<i32>(u_input.b.x, -2147483647i, 1i, u_input.b.x)) ^ vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x), u_input.b.yxx), 0i, ~(-1i), ~u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 5>();
    global1 = array<vec2<bool>, 5>();
    var var_0 = -880f;
    let var_1 = func_5(func_1(-(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, 46109i, u_input.b.x, -27365i), vec4<i32>(3454i, u_input.b.x, -1i, u_input.b.x)) ^ vec4<i32>(u_input.b.x, u_input.b.x, 0i, u_input.b.x))), func_1(-((u_input.b >> (vec4<u32>(1u, u_input.d, u_input.d, u_input.c) % vec4<u32>(32u))) << (vec4<u32>(u_input.d, u_input.d, u_input.c, 1u) % vec4<u32>(32u)))));
    var var_2 = 1000f;
    var_2 = -548f;
    let var_3 = -vec3<i32>(-2147483647i & _wgslsmith_sub_i32(u_input.b.x, firstLeadingBit(-2147483647i)), 26919i, -33120i);
    var var_4 = Struct_3(_wgslsmith_f_op_f32(func_1(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, var_3.x), u_input.b)).b.b.x + var_1.a.x), vec4<f32>(889f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.c.c.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1208f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.c.b.x + var_1.d.c.a)), 440f, true)), -202f), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.c.c.c, 75493u, u_input.a) & vec3<u32>(4294967295u, var_1.d.b.c, 62382u), vec3<u32>(1u, 63760u, 0u)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, var_1.b, u_input.c), vec3<u32>(4294967295u, var_1.b, 18410u)), ~(vec3<u32>(var_1.c.b.c, 73787u, 20638u) ^ vec3<u32>(112730u, var_1.c.b.c, 24666u))), vec3<u32>(_wgslsmith_mult_u32(~var_1.b, 2055u), 0u, abs(84747u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(var_1.d.c.c, var_1.b, var_1.c.b.c)), abs(vec3<u32>(21001u, 16148u, 59931u))), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 2151u, var_4.c), select(vec3<u32>(u_input.a, 136470u, 0u), vec3<u32>(var_4.c, 16210u, var_1.d.c.c), vec3<bool>(var_1.c.a, true, true)))), ~_wgslsmith_add_u32(var_4.c << (1u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, var_4.c, 67194u), vec4<u32>(var_1.d.b.c, 4294967295u, u_input.c, var_4.c)))), var_1.a, max(select(firstLeadingBit(abs(vec3<u32>(u_input.a, 4294967295u, 2876u))), vec3<u32>(_wgslsmith_sub_u32(93626u, 16209u), var_1.c.b.c | 1u, 0u), var_1.d.a && !var_1.d.a), vec3<u32>(~_wgslsmith_mod_u32(var_1.d.c.c, var_1.c.c.c), ~abs(0u), _wgslsmith_add_u32(func_5(Struct_4(var_1.c.a, var_1.d.c, var_1.d.c), Struct_4(var_1.d.a, Struct_3(618f, vec4<f32>(global2[_wgslsmith_index_u32(69486u, 25u)], 795f, 269f, var_1.c.b.b.x), 109522u), Struct_3(var_4.b.x, vec4<f32>(global2[_wgslsmith_index_u32(var_4.c, 25u)], 230f, -754f, var_1.a.x), var_1.b))).b, ~1u))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-443f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(846f)) - 1388f)), -1818f, _wgslsmith_f_op_f32(func_3(false, true, Struct_2(-vec3<i32>(u_input.b.x, -42760i, 0i)), select(vec2<bool>(false, var_1.d.a), global1[_wgslsmith_index_u32(~var_4.c, 5u)], select(global1[_wgslsmith_index_u32(var_4.c, 5u)], global1[_wgslsmith_index_u32(52185u, 5u)], true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(391f * -582f))), -128f)), _wgslsmith_dot_vec3_i32(~reverseBits(-vec3<i32>(var_3.x, 0i, -2147483647i)), var_3));
}

