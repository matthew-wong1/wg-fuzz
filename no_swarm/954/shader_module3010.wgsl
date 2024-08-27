struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: vec3<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<f32, 2> = array<f32, 2>(-368f, -1023f);

var<private> global2: array<f32, 27> = array<f32, 27>(478f, -161f, 1274f, 730f, 385f, 1851f, 533f, -1089f, -1000f, 354f, 142f, -152f, -523f, -1000f, 1433f, 1000f, 2063f, 131f, 1024f, 1187f, -1235f, -533f, 478f, -824f, 760f, 334f, 1157f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>) -> vec3<f32> {
    let var_0 = Struct_2(Struct_1(vec2<bool>(arg_1, arg_0.a.x), -47764i, u_input.a.x, arg_0.e, arg_0.d), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.e, -639f, global1[_wgslsmith_index_u32(5271u, 2u)]))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-720f, arg_0.e, 627f) - vec3<f32>(-966f, 1000f, global1[_wgslsmith_index_u32(arg_2.x, 2u)])))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1313f, -277f), global1[_wgslsmith_index_u32(arg_2.x, 2u)], -917f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-447f, 541f) * vec2<f32>(global2[_wgslsmith_index_u32(70798u, 27u)], -160f))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(3991u, 27u)]))), global1[_wgslsmith_index_u32(4294967295u, 2u)]))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1565f, global2[_wgslsmith_index_u32(9043u, 27u)], 198f, 774f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1838f, -1275f, global1[_wgslsmith_index_u32(arg_2.x, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)]) * vec4<f32>(var_0.d.x, -1000f, global2[_wgslsmith_index_u32(u_input.b, 27u)], 827f)))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.e, -1032f, -1557f, arg_0.d))))));
    var var_2 = reverseBits(1u);
    var_2 = reverseBits(~0u);
    global0 = u_input.a;
    return var_1.zzy;
}

fn func_2() -> u32 {
    let var_0 = vec3<u32>(u_input.c, u_input.b & ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 21884u), _wgslsmith_sub_vec2_u32(vec2<u32>(41439u, 0u), vec2<u32>(26120u, u_input.c))), 1u);
    global0 = vec4<i32>(global0.x, 1i, ~2147483647i, ~reverseBits(global0.x)) | -u_input.a;
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(690f, global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(var_0.x, 2u)])) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 2u)], -210f, global2[_wgslsmith_index_u32(66863u, 27u)]))), vec3<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(u_input.c, 2u)]), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(10283u, var_0.x, 49191u), 2u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 27u)])))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec2<bool>(false, false), -66718i, -1047i, 1635f, global2[_wgslsmith_index_u32(u_input.c, 27u)]), true, vec2<u32>(var_0.x, 16894u))))), global2[_wgslsmith_index_u32(0u, 27u)], select(vec3<bool>(_wgslsmith_f_op_f32(min(1779f, global1[_wgslsmith_index_u32(42007u, 2u)])) > _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 27u)]), true, u_input.b != firstLeadingBit(0u)), !(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true)), any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)))), false);
    global1 = array<f32, 2>();
    global0 = u_input.a;
    return ~(~_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.c, _wgslsmith_mod_u32(var_0.x, 58521u)), 78290u, 1u));
}

fn func_1() -> vec4<bool> {
    let var_0 = u_input.a;
    var var_1 = (((i32(-1i) * -1i) & global0.x) << (0u % 32u)) < global0.x;
    var var_2 = Struct_1(select(vec2<bool>(global2[_wgslsmith_index_u32(func_2(), 27u)] < -1072f, true), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false))), var_0.x >= 0i), i32(-1i) * -u_input.a.x, u_input.a.x << (u_input.b % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1246f) - 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -757f) + _wgslsmith_f_op_f32(min(-1169f, global1[_wgslsmith_index_u32(1u, 2u)]))));
    global1 = array<f32, 2>();
    var_2 = Struct_1(!var_2.a, reverseBits(select(u_input.a.x, var_0.x, (true || var_2.a.x) | true)), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d)), global2[_wgslsmith_index_u32(u_input.b, 27u)]);
    return select(!select(vec4<bool>(var_2.a.x, false, true, true), !(!vec4<bool>(true, var_2.a.x, true, var_2.a.x)), vec4<bool>(true, false, false, all(vec4<bool>(true, true, true, true)))), select(select(select(!vec4<bool>(var_2.a.x, var_2.a.x, true, var_2.a.x), vec4<bool>(true, var_2.a.x, var_2.a.x, true), true), select(!vec4<bool>(true, var_2.a.x, var_2.a.x, var_2.a.x), select(vec4<bool>(var_2.a.x, true, var_2.a.x, true), vec4<bool>(true, true, true, var_2.a.x), false), true), any(select(vec2<bool>(var_2.a.x, true), var_2.a, var_2.a.x))), vec4<bool>(!any(vec4<bool>(var_2.a.x, false, var_2.a.x, true)), !var_2.a.x, var_2.a.x, var_2.a.x), var_2.a.x), !(!select(var_2.a.x && true, !var_2.a.x, any(vec3<bool>(var_2.a.x, var_2.a.x, false)))));
}

fn func_4(arg_0: i32, arg_1: vec4<bool>) -> bool {
    let var_0 = reverseBits(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, _wgslsmith_add_u32(0u, 16486u), u_input.c, abs(49519u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u))));
    var var_1 = any(vec2<bool>(false, arg_1.x)) && any(vec3<bool>(arg_1.x, all(arg_1.zxw), true));
    let var_2 = 0i;
    global0 = -(~reverseBits(reverseBits(u_input.a) << (vec4<u32>(1u, var_0.x, 4294967295u, var_0.x) % vec4<u32>(32u))));
    global2 = array<f32, 27>();
    return 1430f <= _wgslsmith_f_op_f32(-1934f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(4543u, 27u)])))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~var_0.x, 2u)] - global2[_wgslsmith_index_u32(~1u, 27u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-1i);
    let var_1 = global0.x;
    var var_2 = abs(_wgslsmith_mod_i32(-43018i, ~global0.x)) | _wgslsmith_mult_i32(~1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(67389i, 30356i, global0.x, 16298i), _wgslsmith_add_vec4_i32(-vec4<i32>(global0.x, u_input.a.x, global0.x, 20693i), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.a.x, u_input.a.x, -2147483647i), u_input.a))));
    var_0 = u_input.a.x;
    var var_3 = vec3<bool>(func_4(~(-40240i), func_1()), true, func_1().x);
    let var_4 = Struct_2(Struct_1(select(vec2<bool>(!var_3.x, var_3.x), vec2<bool>(u_input.a.x > 2147483647i, u_input.b == 1u), select(vec2<bool>(var_3.x, var_3.x), !var_3.yz, all(vec4<bool>(var_3.x, false, true, var_3.x)))), firstTrailingBit(u_input.a.x) << ((_wgslsmith_dot_vec3_u32(vec3<u32>(15076u, 0u, 33809u), vec3<u32>(u_input.c, 99363u, u_input.c)) << (_wgslsmith_sub_u32(u_input.c, 0u) % 32u)) % 32u), -19639i, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.c), vec3<u32>(u_input.c, 20149u, u_input.b), vec3<u32>(u_input.c, 4294967295u, u_input.c)), select(vec3<u32>(u_input.b, u_input.b, 30970u), vec3<u32>(u_input.c, 21835u, u_input.b), vec3<bool>(var_3.x, var_3.x, false))), 2u)]), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(333f, 911f))), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec2<bool>(true, true), i32(-1i) * -23488i, -13438i, global2[_wgslsmith_index_u32(u_input.c, 27u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-506f, 787f, var_3.x)))), any(select(select(vec3<bool>(true, var_3.x, true), vec3<bool>(var_3.x, true, false), var_3.x), vec3<bool>(var_3.x, var_3.x, false), vec3<bool>(var_3.x, true, var_3.x))), min(vec2<u32>(~u_input.b, 0u), ~(vec2<u32>(61038u, u_input.b) << (vec2<u32>(9033u, 0u) % vec2<u32>(32u)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(select(55015u, 108196u, var_3.x), 27u)], _wgslsmith_f_op_f32(f32(-1f) * -895f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(48716u, 27u)] - -575f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, -488f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.c, 2u)], global2[_wgslsmith_index_u32(u_input.c, 27u)])))))));
    let var_5 = -2147483647i;
    var var_6 = abs(~(select(reverseBits(vec3<u32>(u_input.c, 1u, u_input.b)), ~vec3<u32>(u_input.c, 68579u, u_input.c), var_3.x | true) << (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(25939u, 39902u, u_input.b, u_input.b), vec4<u32>(u_input.b, 1u, 6937u, 12006u)), ~4294967295u, ~u_input.b) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 2u)], 1502f, global2[_wgslsmith_index_u32(36314u, 27u)], global2[_wgslsmith_index_u32(21094u, 27u)])) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-665f, 356f, global2[_wgslsmith_index_u32(var_6.x, 27u)], 1139f)))))), u_input.b);
}

