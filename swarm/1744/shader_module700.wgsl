struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: i32,
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

var<private> global0: array<f32, 8> = array<f32, 8>(-1065f, -178f, -388f, 1000f, 461f, -1492f, -1388f, 991f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec2<f32> {
    global0 = array<f32, 8>();
    let var_0 = select(vec4<bool>(true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false)), false, false), select(vec4<bool>(false == all(vec2<bool>(true, true)), true, true, select(true, all(vec2<bool>(true, true)), any(vec2<bool>(true, true)))), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), false), true)), select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, false), false), vec4<bool>(true, select(true, false, true), false, true), true), false != any(vec3<bool>(true, true, true))));
    let var_1 = -1907f;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 8u)]) - var_1), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.b, 8u)], 1828f)), -1012f, all(var_0)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 8u)], -1357f))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(19399u, 8u)], -425f), vec2<f32>(-320f, var_1))))))));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec2<f32>) -> Struct_1 {
    global0 = array<f32, 8>();
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2), _wgslsmith_f_op_vec2_f32(func_3()));
    return Struct_1(31221u, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 8u)], var_0.x, arg_2.x, -514f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(452f, var_0.x, -2348f, arg_2.x))))))), u_input.d.x, u_input.b);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_2 {
    global0 = array<f32, 8>();
    var var_0 = Struct_2(arg_1, arg_3, _wgslsmith_f_op_f32(exp2(arg_1.b.x)), 0u, _wgslsmith_div_f32(arg_3.b.x, _wgslsmith_f_op_f32(663f + _wgslsmith_f_op_f32(-1181f + 1000f))) >= _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_3.a, 8u)] * _wgslsmith_f_op_vec2_f32(func_3()).x));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-416f + var_0.a.b.x)), _wgslsmith_f_op_f32(sign(arg_3.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(func_2(-155f, arg_2.x, vec2<f32>(691f, arg_1.b.x)).b.x, _wgslsmith_div_f32(-184f, 859f))) - global0[_wgslsmith_index_u32(select(0u, arg_3.d, true), 8u)])) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, -746f, 625f))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-660f, 324f, arg_3.b.x)))))));
    global0 = array<f32, 8>();
    var_0 = Struct_2(arg_3, Struct_1(_wgslsmith_add_u32(~(~u_input.b), var_0.a.a), _wgslsmith_f_op_vec4_f32(-func_2(594f, arg_1.c, _wgslsmith_f_op_vec2_f32(arg_3.b.xx * arg_1.b.yw)).b), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, -1i, 15018i), vec3<i32>(arg_2.x, arg_1.c, -2147483647i)), firstLeadingBit(vec3<i32>(var_0.b.c, arg_3.c, -93731i))) << (arg_1.d % 32u), _wgslsmith_sub_u32(~u_input.b >> ((4294967295u >> (var_0.d % 32u)) % 32u), var_0.d)), var_0.a.b.x, 0u, all(select(vec4<bool>(false, var_0.e, any(vec3<bool>(arg_0, arg_0, true)), !arg_0), vec4<bool>(false, arg_1.b.x != var_1.x, true, arg_0 || var_0.e), true)));
    return Struct_2(func_2(-344f, -var_0.a.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.b.x, arg_3.b.x)))), arg_1, _wgslsmith_f_op_f32(f32(-1f) * -471f), 1u, true);
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec4<f32>) -> vec2<i32> {
    global0 = array<f32, 8>();
    var var_0 = func_4(~arg_1 <= u_input.b, Struct_1(~_wgslsmith_sub_u32(97032u, ~arg_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, 202f, arg_2.x, global0[_wgslsmith_index_u32(arg_1, 8u)]) + vec4<f32>(736f, global0[_wgslsmith_index_u32(u_input.b, 8u)], 397f, -1108f)))), -1i, ~firstLeadingBit(576u)), vec4<i32>(_wgslsmith_dot_vec3_i32(~(vec3<i32>(0i, arg_0, u_input.e) ^ vec3<i32>(arg_0, -1i, 43226i)), _wgslsmith_mod_vec3_i32(~vec3<i32>(arg_0, 45106i, arg_0), vec3<i32>(33353i, 0i, u_input.a) & vec3<i32>(-2147483647i, -125095i, -18017i))), 1i, -22396i, -23831i), func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(~71295u, 8u)], _wgslsmith_f_op_f32(step(964f, global0[_wgslsmith_index_u32(0u, 8u)])))))), u_input.c.x ^ ~_wgslsmith_add_i32(u_input.a, u_input.d.x), _wgslsmith_f_op_vec2_f32(arg_2.zx + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-643f, arg_2.x) * vec2<f32>(global0[_wgslsmith_index_u32(69020u, 8u)], arg_2.x)) + _wgslsmith_f_op_vec2_f32(ceil(arg_2.zw))))));
    var var_1 = vec3<f32>(-802f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - global0[_wgslsmith_index_u32(0u, 8u)]) - 371f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, -223f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1000f, 2541f)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_2.x, 1782f), arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))))));
    var_0 = Struct_2(var_0.b, func_4(var_0.e, Struct_1(330u, vec4<f32>(func_4(true, Struct_1(arg_1, vec4<f32>(1701f, global0[_wgslsmith_index_u32(u_input.b, 8u)], var_0.c, var_1.x), u_input.d.x, var_0.d), vec4<i32>(arg_0, arg_0, u_input.c.x, 2147483647i), var_0.a).a.b.x, global0[_wgslsmith_index_u32(max(u_input.b, u_input.b), 8u)], _wgslsmith_f_op_f32(-853f * 573f), arg_2.x), ~u_input.a, min(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(82034u, arg_1, u_input.b, u_input.b), vec4<u32>(arg_1, 34346u, var_0.b.a, u_input.b)))), firstTrailingBit(vec4<i32>(-1i, var_0.b.c, -53226i, 14365i) ^ vec4<i32>(u_input.e, -18443i, var_0.a.c, 1i)) & (~vec4<i32>(57351i, -2147483647i, u_input.c.x, 0i) ^ select(vec4<i32>(var_0.a.c, -54619i, -20129i, 1i), vec4<i32>(var_0.b.c, -16980i, u_input.a, var_0.a.c), var_0.e)), var_0.b).a, _wgslsmith_f_op_f32(var_1.x + 372f), ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(~arg_1, _wgslsmith_div_u32(22470u, var_0.b.a)), abs(_wgslsmith_add_u32(arg_1, arg_1))), all(vec2<bool>(var_0.e, false)) & any(select(vec3<bool>(var_0.e, true, true), select(vec3<bool>(false, var_0.e, var_0.e), vec3<bool>(false, true, var_0.e), vec3<bool>(var_0.e, var_0.e, true)), select(vec3<bool>(true, var_0.e, var_0.e), vec3<bool>(false, var_0.e, var_0.e), var_0.e))));
    let var_2 = _wgslsmith_f_op_vec2_f32(var_0.b.b.yw * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1016f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.xz - vec2<f32>(var_1.x, -1333f))))));
    return min(u_input.c, _wgslsmith_div_vec2_i32(-(~vec2<i32>(-1i, u_input.a)) & vec2<i32>(abs(-43190i), var_0.b.c), u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(!vec2<bool>(58238u < u_input.b, !any(vec3<bool>(false, true, true))), abs(0u), -(vec2<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.d.x), 0i & u_input.e) | _wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(u_input.a, u_input.e)), ~vec2<i32>(u_input.a, 21434i))), u_input.b ^ _wgslsmith_add_u32(_wgslsmith_mult_u32(abs(72417u), 10274u), u_input.b));
    let var_1 = Struct_3(!vec2<bool>(var_0.a.x, all(select(vec2<bool>(var_0.a.x, true), var_0.a, false))), firstLeadingBit(u_input.b), _wgslsmith_div_vec2_i32(vec2<i32>(-33031i, -(i32(-1i) * -1i)), func_1(var_0.c.x, max(u_input.b, 38438u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-847f, global0[_wgslsmith_index_u32(var_0.d, 8u)], 726f, 547f))) & min(~vec2<i32>(u_input.e, 1i), u_input.c)), abs(func_2(func_4(var_0.a.x, func_4(false, Struct_1(10689u, vec4<f32>(1029f, global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(37497u, 8u)], global0[_wgslsmith_index_u32(u_input.b, 8u)]), 1i, 42452u), vec4<i32>(u_input.a, 1i, var_0.c.x, u_input.c.x), Struct_1(0u, vec4<f32>(global0[_wgslsmith_index_u32(1u, 8u)], -1117f, 347f, global0[_wgslsmith_index_u32(40327u, 8u)]), var_0.c.x, 1u)).a, vec4<i32>(u_input.c.x, 9684i, -17505i, var_0.c.x) ^ vec4<i32>(u_input.d.x, 33470i, u_input.a, u_input.c.x), Struct_1(4294967295u, vec4<f32>(-2373f, 381f, -901f, global0[_wgslsmith_index_u32(22230u, 8u)]), u_input.d.x, 120351u)).b.b.x, abs(_wgslsmith_sub_i32(1i, -45886i)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(792f, global0[_wgslsmith_index_u32(48220u, 8u)])))).a));
    var var_2 = vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(var_0.c.x, u_input.e << (11547u % 32u)), 7250i), var_0.c.x, -13136i), ~(-var_1.c.x), func_4(true, func_2(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.b, 8u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.d, 8u)]))), ~_wgslsmith_mod_i32(60251i, var_1.c.x), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(94866u, 8u)], global0[_wgslsmith_index_u32(1u, 8u)]))))), select(-vec4<i32>(-2147483647i, var_1.c.x, -1i, 9487i), countOneBits(vec4<i32>(0i, 16662i, u_input.c.x, u_input.e)), true), Struct_1(~_wgslsmith_div_u32(u_input.b, var_0.b), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -289f), global0[_wgslsmith_index_u32(0u, 8u)], func_4(false, Struct_1(var_0.b, vec4<f32>(887f, global0[_wgslsmith_index_u32(var_1.b, 8u)], global0[_wgslsmith_index_u32(15911u, 8u)], 633f), var_0.c.x, u_input.b), vec4<i32>(0i, var_0.c.x, 19743i, -29295i), Struct_1(62153u, vec4<f32>(global0[_wgslsmith_index_u32(var_0.d, 8u)], 1027f, global0[_wgslsmith_index_u32(28639u, 8u)], -205f), -32897i, u_input.b)).c, global0[_wgslsmith_index_u32(var_1.b, 8u)]), 0i, 4294967295u)).b.c);
    var var_3 = -select(1i, 15554i, true);
    let var_4 = vec4<i32>(~firstLeadingBit(var_1.c.x), ~5810i, 0i, var_2.x);
    let var_5 = var_0.a.x;
    let var_6 = ~select(u_input.b, u_input.b, (_wgslsmith_mod_i32(22456i, -3108i) > max(var_2.x, var_2.x)) || var_0.a.x);
    let var_7 = !select(select(vec4<bool>(var_0.a.x, var_1.a.x == false, !var_0.a.x, var_1.a.x), vec4<bool>(!var_0.a.x, any(var_0.a), !var_1.a.x, var_0.a.x), false), vec4<bool>(_wgslsmith_f_op_f32(-1000f + global0[_wgslsmith_index_u32(0u, 8u)]) != _wgslsmith_f_op_f32(f32(-1f) * -1000f), true, false, var_0.a.x), !select(vec4<bool>(false, var_1.a.x, var_0.a.x, var_0.a.x), !vec4<bool>(true, false, var_1.a.x, false), !vec4<bool>(false, false, var_0.a.x, var_1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

