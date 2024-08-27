struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: f32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(1000f, 1000f), vec2<f32>(921f, 1038f), vec2<f32>(397f, 311f), vec2<f32>(1000f, -1000f), vec2<f32>(-1405f, -735f), vec2<f32>(-1000f, -527f), vec2<f32>(-1236f, -1000f));

var<private> global1: Struct_2;

var<private> global2: array<vec3<i32>, 10> = array<vec3<i32>, 10>(vec3<i32>(0i, 2147483647i, i32(-2147483648)), vec3<i32>(-1i, -19320i, 0i), vec3<i32>(0i, i32(-2147483648), 16610i), vec3<i32>(18919i, -30480i, -9459i), vec3<i32>(0i, -53899i, i32(-2147483648)), vec3<i32>(2147483647i, -44304i, 1i), vec3<i32>(-1i, -1i, 2147483647i), vec3<i32>(600i, i32(-2147483648), 1i), vec3<i32>(1i, 41455i, 0i), vec3<i32>(11245i, -1i, -1i));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<i32>) -> vec2<u32> {
    global2 = array<vec3<i32>, 10>();
    global0 = array<vec2<f32>, 7>();
    let var_0 = Struct_1(vec2<u32>(_wgslsmith_mod_u32(24616u, u_input.b.x), reverseBits(1u | _wgslsmith_sub_u32(u_input.b.x, 4294967295u))), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.yz, _wgslsmith_mod_vec2_u32(u_input.b.xy, vec2<u32>(global1.a, 73294u))), abs(~(u_input.b.yy << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-591f, 691f, true)) * _wgslsmith_f_op_f32(-350f + -572f)))), _wgslsmith_f_op_f32(floor(-1482f)), any(vec2<bool>(false, false)) && true)), u_input.a, 1000f);
    var var_1 = Struct_1(vec2<u32>(u_input.b.x, (26881u & global1.a) >> (1u % 32u)) ^ select(u_input.b.xx, vec2<u32>(0u, ~4294967295u), !select(vec2<bool>(false, true), vec2<bool>(true, false), true)), _wgslsmith_clamp_vec2_u32(~u_input.b.yx, u_input.b.zz, var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.c + _wgslsmith_div_f32(var_0.e, 1111f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(572f))))), u_input.a, _wgslsmith_f_op_f32(-var_0.e));
    var var_2 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(min(vec4<i32>(-1i) * -vec4<i32>(0i, 0i, 23323i, -1i), select(vec4<i32>(0i, arg_0.x, -1i, -2147483647i), vec4<i32>(arg_0.x, 0i, u_input.a, var_0.d), true)), min(vec4<i32>(-u_input.a, 1i, ~(-1i), _wgslsmith_sub_i32(u_input.a, arg_0.x)), vec4<i32>(14274i, -1i, 0i, -12123i))), -_wgslsmith_mult_vec4_i32(~(vec4<i32>(1i, 11930i, 30950i, 1i) & vec4<i32>(-25337i, -2147483647i, arg_0.x, var_0.d)), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 5531i, var_1.d, 0i), vec4<i32>(-1i, var_0.d, -19870i, var_1.d)), -vec4<i32>(-2147483647i, 1i, 2147483647i, arg_0.x))), -_wgslsmith_mod_vec4_i32(-(~vec4<i32>(33726i, var_1.d, var_0.d, var_0.d)), -(vec4<i32>(25101i, var_1.d, 1i, -12628i) ^ vec4<i32>(var_1.d, -38258i, var_0.d, arg_0.x))));
    return var_1.b;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec3<f32>) -> vec3<bool> {
    let var_0 = -_wgslsmith_div_i32(6701i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a, u_input.a) ^ arg_0.x, -max(55682i, u_input.a)));
    global1 = Struct_2(86271u);
    var var_1 = Struct_1(~(vec2<u32>(65519u, 11772u) | ~u_input.b.yx) | abs(select(func_3(arg_0.zx), vec2<u32>(global1.a, arg_1.a), vec2<bool>(true, true))), vec2<u32>(0u, 73938u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1526f, arg_2.x)) - _wgslsmith_f_op_f32(min(arg_2.x, arg_2.x))) - -181f), arg_2.x), min(-33439i, i32(-1i) * -40973i), _wgslsmith_f_op_f32(floor(arg_2.x)));
    return vec3<bool>(!all(vec2<bool>(true, true)), all(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false))) != all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), any(vec4<bool>(false, false, true, true)))), any(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), true))));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: f32) -> Struct_4 {
    let var_0 = ~(~(~firstTrailingBit(u_input.b.x) ^ _wgslsmith_clamp_u32(79485u, firstLeadingBit(53204u), 45892u << (global1.a % 32u))));
    var var_1 = Struct_1(vec2<u32>(4294967295u, 1u) ^ ~_wgslsmith_mult_vec2_u32(~u_input.b.xz, ~u_input.b.zz), u_input.b.xy, arg_3, _wgslsmith_dot_vec3_i32(select(vec3<i32>(-2753i, u_input.a, 0i), global2[_wgslsmith_index_u32(u_input.b.x, 10u)], arg_0) >> (u_input.b % vec3<u32>(32u)), global2[_wgslsmith_index_u32(var_0, 10u)] & _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -24283i, -2147483647i), vec3<i32>(u_input.a, -29828i, 0i))) >> (abs(36224u) % 32u), _wgslsmith_f_op_f32(round(arg_3)));
    var var_2 = Struct_3(var_1.d, vec2<i32>(max(0i, u_input.a), ~(-(~u_input.a))), var_0, Struct_2(max(~_wgslsmith_dot_vec2_u32(var_1.b, vec2<u32>(u_input.b.x, 51691u)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, var_1.a.x), ~u_input.b.yy))));
    let var_3 = _wgslsmith_f_op_f32(ceil(-270f));
    let var_4 = Struct_4(var_2.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.zx) - arg_2.yy))));
    return Struct_4(var_4.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(384f, var_3)), vec2<f32>(212f, _wgslsmith_f_op_f32(-arg_2.x))))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4) -> vec3<bool> {
    global2 = array<vec3<i32>, 10>();
    var var_0 = vec4<u32>(func_4(false, !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(arg_1.b.x)), _wgslsmith_f_op_f32(floor(-1527f)), -385f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x) + vec3<f32>(arg_1.b.x, -496f, 1000f)) - vec3<f32>(2163f, -534f, arg_1.b.x))), _wgslsmith_f_op_f32(-arg_1.b.x)).a.a, global1.a >> ((7064u ^ (~u_input.b.x ^ _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(1u, u_input.b.x, 80363u)))) % 32u), 1u, _wgslsmith_mod_u32(_wgslsmith_add_u32(~_wgslsmith_div_u32(global1.a, arg_0.d.a), ~arg_0.c | _wgslsmith_sub_u32(u_input.b.x, arg_1.a.a)), arg_0.d.a));
    var var_1 = arg_1.b.x;
    var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.b.x)));
    var var_2 = 7298i;
    return select(select(select(vec3<bool>(any(vec2<bool>(false, false)), true, any(vec2<bool>(false, true))), vec3<bool>(u_input.a >= -2147483647i, all(vec3<bool>(false, false, true)), true), true), vec3<bool>(all(vec3<bool>(true, false, false)), any(vec2<bool>(true, true)), all(vec3<bool>(true, true, true))), any(select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), func_2(global2[_wgslsmith_index_u32(arg_1.a.a, 10u)], arg_1.a, vec3<f32>(-747f, -924f, arg_1.b.x)).yx, arg_1.b.x != arg_1.b.x))), vec3<bool>(true, any(!func_2(vec3<i32>(-1i, -18352i, u_input.a), Struct_2(11026u), vec3<f32>(-680f, 1000f, 268f))), !select(false, any(vec4<bool>(true, false, true, false)), true)), false);
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3) -> vec4<bool> {
    let var_0 = func_5(arg_1, func_4(any(func_2(vec3<i32>(arg_1.a, -54842i, arg_1.b.x), arg_1.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, -1000f)))), vec4<bool>(true, all(vec2<bool>(true, true)), true, !any(vec4<bool>(true, false, false, true))), vec3<f32>(-483f, arg_0.x, _wgslsmith_f_op_f32(max(261f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), arg_0.x));
    var var_1 = !(!func_2(global2[_wgslsmith_index_u32(89777u, 10u)], func_4(all(vec2<bool>(var_0.x, false)), vec4<bool>(false, true, var_0.x, var_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-406f, 491f, -1122f) - vec3<f32>(226f, -248f, 2187f)), _wgslsmith_f_op_f32(arg_0.x - arg_0.x)).a, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 161f, arg_0.x))))).x);
    var_1 = false;
    let var_2 = arg_1;
    var var_3 = Struct_1((vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), ~u_input.b.x) >> (~(vec2<u32>(u_input.b.x, 28816u) ^ u_input.b.yx) % vec2<u32>(32u))) ^ (vec2<u32>(u_input.b.x, ~arg_1.c) >> (_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.yz, vec2<u32>(global1.a, 0u)), u_input.b.xz) % vec2<u32>(32u))), ~(~u_input.b.zz), 247f, _wgslsmith_mod_i32(-16098i, 1172i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1575f, arg_0.x)) - arg_0.x));
    return vec4<bool>(var_3.e >= -122f, !all(var_0), 0u < _wgslsmith_div_u32(_wgslsmith_div_u32(abs(var_2.c), 4294967295u), ~_wgslsmith_add_u32(27673u, 1u)), any(vec4<bool>(all(vec4<bool>(true, var_0.x, false, false)), true, var_0.x, -5590i >= var_2.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 7>();
    var var_0 = select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, any(func_1(global0[_wgslsmith_index_u32(global1.a, 7u)], Struct_3(0i, vec2<i32>(0i, 2147483647i), u_input.b.x, Struct_2(8531u))))), vec3<bool>(true, true, false & all(vec4<bool>(true, true, true, true))), any(vec4<bool>(true, false, true, true))), vec3<bool>(false, true | !func_1(vec2<f32>(-451f, 1045f), Struct_3(26049i, vec2<i32>(24373i, u_input.a), 4533u, Struct_2(46867u))).x, select(all(vec2<bool>(true, true)), true, (u_input.a <= u_input.a) && true)));
    var var_1 = Struct_3(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.a, -1i), ~(~(~vec2<i32>(1i, u_input.a)))), vec2<i32>(1i, max(select(1i, 22662i, true), 0i >> (_wgslsmith_sub_u32(0u, global1.a) % 32u))), _wgslsmith_dot_vec3_u32(~vec3<u32>(global1.a, _wgslsmith_dot_vec3_u32(u_input.b, u_input.b), u_input.b.x), select(~firstTrailingBit(vec3<u32>(0u, global1.a, u_input.b.x)), u_input.b, !vec3<bool>(true, var_0.x, true))), func_4(!(!var_0.x), vec4<bool>(var_0.x, var_0.x, !func_1(vec2<f32>(500f, -434f), Struct_3(u_input.a, vec2<i32>(-35236i, 2147483647i), u_input.b.x, Struct_2(25729u))).x, !var_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(492f, -1952f, 193f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-776f, -1143f, 200f))))), 1314f).a);
    var var_2 = select(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(min(4294967295u, 67612u), _wgslsmith_mod_u32(reverseBits(global1.a), ~global1.a)), ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(global1.a, var_1.c), ~4294967295u)), 10u)], vec3<i32>(0i, 0i >> (u_input.b.x % 32u), -33857i), vec3<bool>(func_2(vec3<i32>(var_1.a, var_1.b.x, firstLeadingBit(var_1.a)), Struct_2(var_1.c), vec3<f32>(594f, _wgslsmith_f_op_f32(floor(1091f)), -635f)).x, var_0.x, all(!(!vec3<bool>(false, true, var_0.x)))));
    var_0 = !(!(!(!(!vec3<bool>(var_0.x, var_0.x, var_0.x)))));
    let var_3 = select(~_wgslsmith_sub_vec2_u32(u_input.b.xx, vec2<u32>(firstLeadingBit(u_input.b.x), _wgslsmith_clamp_u32(4294967295u, 4294967295u, global1.a))), select(select(vec2<u32>(4294967295u, max(53864u, 29731u)), _wgslsmith_div_vec2_u32(func_3(vec2<i32>(u_input.a, var_2.x)), u_input.b.zx ^ vec2<u32>(global1.a, var_1.d.a)), !vec2<bool>(var_0.x, true)), ~u_input.b.xx, all(vec4<bool>(var_0.x, var_1.b.x >= var_2.x, all(vec3<bool>(true, false, var_0.x)), true))), var_0.yx);
    let var_4 = var_1.d;
    var var_5 = Struct_1(_wgslsmith_add_vec2_u32(u_input.b.zy, vec2<u32>(~0u, var_3.x)), _wgslsmith_add_vec2_u32(firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 0u), u_input.b.zz)), firstTrailingBit(~u_input.b.yz)) ^ ~vec2<u32>(7384u, ~4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -638f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(350f)) - -699f) + _wgslsmith_f_op_f32(trunc(-1196f)))), 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -1951f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(440f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 604f) * 1326f))));
    let var_6 = firstLeadingBit(-1i);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(var_2.x, var_1.a)) >> (~abs(84931u) % 32u)), select((-1i ^ var_2.x) << (~63777u % 32u), var_6, all(vec4<bool>(true, false, -1i >= var_2.x, var_0.x && false))), ~var_2.zz, 53274u, vec3<f32>(var_5.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.c - var_5.c))), _wgslsmith_f_op_f32(ceil(var_5.c))));
}

