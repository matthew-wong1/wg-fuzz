struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec2<f32> = vec2<f32>(-2336f, 970f);

var<private> global2: vec3<f32> = vec3<f32>(-713f, -1213f, 915f);

var<private> global3: array<i32, 26> = array<i32, 26>(15106i, i32(-2147483648), i32(-2147483648), -1i, -17332i, 8663i, 57968i, 54240i, i32(-2147483648), i32(-2147483648), 2147483647i, -37325i, 1i, -1i, -16481i, 0i, 22319i, -1i, i32(-2147483648), 1i, 2147483647i, 51106i, 2147483647i, 0i, 2481i, i32(-2147483648));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: vec4<u32>) -> u32 {
    global2 = _wgslsmith_f_op_vec3_f32(-global0.yzw);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + 104f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + global0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))));
    var var_1 = -1398f;
    let var_2 = Struct_2(vec4<bool>(true, _wgslsmith_dot_vec2_u32(~u_input.a.yy, vec2<u32>(u_input.a.x, 52227u)) > u_input.b, arg_0.a.x, false), any(arg_0.a.yz), -14608i, global2.x, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_f32(417f + -432f), _wgslsmith_f_op_f32(step(304f, global0.x)))), min(~_wgslsmith_add_u32(1u, 20944u), arg_2.x), _wgslsmith_f_op_vec3_f32(-global0.ywz)));
    var var_3 = Struct_4(select(vec3<bool>((arg_0.a.x != true) || (var_2.e.c.x == var_2.d), abs(63813u) != _wgslsmith_dot_vec4_u32(arg_2, arg_2), true), vec3<bool>(false, arg_0.a.x, any(!vec4<bool>(false, true, var_2.a.x, var_2.a.x))), select(select(arg_0.a, !vec3<bool>(false, arg_0.a.x, var_2.a.x), !vec3<bool>(arg_0.a.x, arg_0.a.x, true)), !arg_0.a, vec3<bool>(true | arg_0.a.x, true, !var_2.b))));
    return ~var_2.e.b;
}

fn func_2() -> Struct_1 {
    global3 = array<i32, 26>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1331f), _wgslsmith_div_f32(global0.x, global2.x), global1.x, _wgslsmith_f_op_f32(floor(-664f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global0.x, global1.x, 1000f) * vec4<f32>(global2.x, global1.x, global1.x, global2.x)))))), ~_wgslsmith_mod_u32(4294967295u, 56288u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-211f, 1048f, _wgslsmith_f_op_f32(-global1.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-996f, global0.x, 114f)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a), ~var_0.b, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.x, var_0.a.x, 1000f))));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-273f * global0.x)))), _wgslsmith_f_op_f32(-2577f - 257f));
    var var_2 = _wgslsmith_add_u32(abs(43925u), ~func_3(Struct_4(vec3<bool>(true, true, true)), global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, u_input.a.x), 26u)], vec4<u32>(0u, _wgslsmith_mult_u32(1u, var_1.b), u_input.a.x, firstTrailingBit(var_1.b))));
    return var_0;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: f32) -> Struct_4 {
    var var_0 = ~_wgslsmith_mod_u32(u_input.b, select(u_input.b, ~_wgslsmith_clamp_u32(32488u, 4294967295u, 110549u), arg_1.a.x));
    var var_1 = 5284i;
    var var_2 = -2147483647i;
    var_0 = 72933u;
    var var_3 = Struct_2(select(vec4<bool>(true, all(vec4<bool>(arg_1.a.x, false, true, arg_1.a.x)), true, ~global3[_wgslsmith_index_u32(u_input.a.x, 26u)] >= 1i), arg_1.a, !arg_1.a), false, arg_1.c, -2027f, Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-995f, arg_2.x, 1f, arg_3), _wgslsmith_f_op_vec4_f32(arg_1.e.a * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.x, arg_2.x, 931f, -1558f)))))), ~36510u, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.d, 832f, -260f), arg_2) - vec3<f32>(arg_1.e.a.x, arg_1.e.a.x, -126f))))));
    return Struct_4(select(var_3.a.yxw, !(!select(vec3<bool>(false, false, arg_1.a.x), var_3.a.zzz, arg_1.b)), any(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 26u)] >= arg_1.c, all(arg_1.a.wz), true, true))));
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: f32, arg_3: vec3<f32>) -> Struct_4 {
    var var_0 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_1, func_2().b >> (_wgslsmith_dot_vec3_u32(vec3<u32>(2609u, u_input.b, arg_1), vec3<u32>(arg_1, arg_1, 0u)) % 32u)), ~firstLeadingBit(14194u)), abs(arg_1), _wgslsmith_div_u32(countOneBits(32367u), _wgslsmith_sub_u32(10394u, 0u)));
    var_0 = vec3<u32>(_wgslsmith_mod_u32(~(~arg_1), _wgslsmith_mod_u32(1u, u_input.a.x)), ~46316u, ~(~(~4294967295u))) >> (_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(~37264u << (arg_1 % 32u), 20749u ^ firstTrailingBit(arg_1), _wgslsmith_div_u32(1u, _wgslsmith_sub_u32(56371u, 17730u)))) % vec3<u32>(32u));
    var var_1 = arg_0.a.x;
    var_0 = vec3<u32>(0u, countOneBits(~u_input.b), arg_1) | vec3<u32>(4294967295u, 0u, ~_wgslsmith_clamp_u32(min(61171u, 4294967295u), ~1u, min(1u, 54640u)));
    global1 = global0.wx;
    return arg_0;
}

fn func_1() -> u32 {
    let var_0 = func_5(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x))), Struct_2(vec4<bool>(true, global1.x > global0.x, any(vec2<bool>(false, false)), true), false, ~2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -1449f), func_2()), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0.xyz), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 386f, global0.x) + _wgslsmith_f_op_vec3_f32(step(global0.wxx, vec3<f32>(global0.x, -178f, 1939f)))), false)), _wgslsmith_f_op_f32(517f - -616f)), 50172u, -1000f, global0.xzx);
    global3 = array<i32, 26>();
    let var_1 = var_0.a.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(-global0.wyw);
    global3 = array<i32, 26>();
    return ~(~select(u_input.a.x, firstLeadingBit(~42350u), true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(ceil(global0.xw));
    var var_0 = u_input.b < ~8353u;
    var var_1 = select(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(63654u, 26u)], 0i, 2147483647i, global3[_wgslsmith_index_u32(u_input.a.x, 26u)]) ^ vec4<i32>(-48334i, 0i, global3[_wgslsmith_index_u32(1u, 26u)], -2147483647i), vec4<i32>(global3[_wgslsmith_index_u32(u_input.b, 26u)], -2147483647i, 1i, -21614i) << (vec4<u32>(u_input.a.x, 1u, 0u, 24839u) % vec4<u32>(32u))), abs(firstLeadingBit(vec4<i32>(2147483647i, 718i, global3[_wgslsmith_index_u32(51767u, 26u)], -1i)))) & vec4<i32>(1i, 1i, _wgslsmith_sub_i32(i32(-1i) * -11561i, 50209i), global3[_wgslsmith_index_u32(u_input.a.x, 26u)]), vec4<i32>(-(~10876i), global3[_wgslsmith_index_u32(0u, 26u)], 0i, abs(_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(~0u, 26u)], 2147483647i))), select(vec4<bool>(true, true, true, true), vec4<bool>(!all(vec2<bool>(true, true)), 45420u <= _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, 23986u), vec4<u32>(4294967295u, u_input.a.x, u_input.b, 1u)), 86258u <= func_1(), true), !vec4<bool>(false, func_5(Struct_4(vec3<bool>(true, true, true)), u_input.a.x, global1.x, global0.xyx).a.x, true, true)));
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.x * -1504f)))), vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1015f + 216f)))), 1223f));
    global0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, global2.x, -655f, 351f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-274f, 1000f, -1000f, global1.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1168f, global0.x, 623f, -129f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1216f, global0.x, global0.x, global1.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1616f, global2.x, -1170f, -1000f), vec4<f32>(-1449f, -376f, var_2.x, global0.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1757f, -875f, global2.x, global2.x)))))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.x, global1.x, 1499f, global0.x))), func_2().a))), abs(0u), global0.wxw);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec4<i32>(var_1.x | var_1.x, ~(i32(-1i) * -global3[_wgslsmith_index_u32(var_3.b, 26u)]), reverseBits(global3[_wgslsmith_index_u32(22115u << (u_input.b % 32u), 26u)] & _wgslsmith_dot_vec3_i32(vec3<i32>(-4841i, -2147483647i, global3[_wgslsmith_index_u32(0u, 26u)]), var_1.wyz)), _wgslsmith_mod_i32(abs(var_1.x), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_3.b, var_3.b, var_3.b, 1u), vec4<u32>(1u, u_input.a.x, var_3.b, 6616u)), 26u)])), var_1.yy);
}

