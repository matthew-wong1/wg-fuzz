struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: bool,
    d: vec4<i32>,
}

struct Struct_5 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: array<u32, 24> = array<u32, 24>(9911u, 1u, 4294967295u, 1u, 9372u, 4294967295u, 50900u, 27704u, 58139u, 0u, 27480u, 0u, 775u, 4294967295u, 12008u, 14526u, 1u, 24745u, 4294967295u, 1u, 1526u, 42597u, 0u, 20012u);

var<private> global1: Struct_1 = Struct_1(-366f);

var<private> global2: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(10135u, 4294967295u, 0u, 36077u), vec4<u32>(1u, 4294967295u, 61632u, 32853u), vec4<u32>(1u, 60380u, 1u, 39780u), vec4<u32>(32658u, 31316u, 45065u, 4294967295u), vec4<u32>(4294967295u, 1u, 0u, 392u), vec4<u32>(8532u, 64048u, 1u, 6848u), vec4<u32>(0u, 0u, 58272u, 9016u), vec4<u32>(4294967295u, 67626u, 22315u, 3595u), vec4<u32>(39541u, 0u, 27618u, 1u), vec4<u32>(4294967295u, 1u, 36678u, 4294967295u), vec4<u32>(4294967295u, 12597u, 3684u, 45848u), vec4<u32>(0u, 20937u, 65334u, 30177u), vec4<u32>(4888u, 81u, 4294967295u, 4294967295u), vec4<u32>(0u, 1u, 4294967295u, 4294967295u), vec4<u32>(52852u, 0u, 88113u, 85372u), vec4<u32>(0u, 1u, 0u, 10370u), vec4<u32>(4294967295u, 49599u, 4294967295u, 67166u), vec4<u32>(0u, 21804u, 4294967295u, 39750u), vec4<u32>(4294967295u, 6032u, 4312u, 4294967295u), vec4<u32>(0u, 0u, 14382u, 4294967295u), vec4<u32>(4294967295u, 0u, 4294967295u, 54432u));

var<private> global3: array<i32, 16> = array<i32, 16>(39259i, i32(-2147483648), 1i, 3844i, -21062i, -12529i, -1i, i32(-2147483648), 0i, 0i, -44091i, 17175i, -25155i, -3340i, 20917i, -18897i);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: vec3<f32>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(min(~(global0[_wgslsmith_index_u32(4294967295u, 24u)] >> (1u % 32u)), _wgslsmith_sub_u32(~1u, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)])), ~global0[_wgslsmith_index_u32(43358u, 24u)], 3231u), 24u)] & 8054u)), 24u)];
    global0 = array<u32, 24>();
    let var_1 = ~reverseBits(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(13878u, 24u)], global0[_wgslsmith_index_u32(85172u, 24u)]), vec2<u32>(4294967295u, 23030u)), ~vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], 0u) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)], 0u))), 24u)]);
    global3 = array<i32, 16>();
    let var_2 = vec4<bool>(arg_1.a, all(select(select(vec3<bool>(arg_0.a, arg_2.x, false), select(vec3<bool>(false, arg_2.x, arg_0.a), arg_2, false), !vec3<bool>(arg_2.x, false, arg_2.x)), vec3<bool>(var_1 < 4294967295u, true, true), arg_0.a)), any(select(vec4<bool>(true, select(arg_2.x, arg_1.a, true), true, any(arg_2.xx)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, arg_0.a, true), vec4<bool>(true, true, true, true)))), arg_2.x);
    return var_1;
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: bool, arg_3: f32) -> vec2<f32> {
    var var_0 = any(select(vec2<bool>((false && arg_2) || arg_0.x, !any(vec2<bool>(arg_0.x, arg_1))), arg_0.yx, arg_1));
    var var_1 = select(abs(u_input.a), vec4<i32>(0i, ~u_input.a.x, ~(-2147483647i), u_input.a.x >> (select(4294967295u, abs(0u), arg_0.x) % 32u)), -615f >= global1.a);
    let var_2 = Struct_4(global3[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52406u, 24u)], 24u)], 24u)]), 24u)] & (func_3(Struct_3(false), Struct_3(false), vec3<bool>(false, false, arg_1), vec3<f32>(arg_3, 1109f, global1.a)) >> (1u % 32u)), 16u)], _wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(0u, 24u)] & _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], 24u)], 4294967295u, global0[_wgslsmith_index_u32(1u, 24u)]), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(763u, 36678u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], 24u)], 24u)], 4294967295u)), vec2<u32>(1u, 1u))) & 1u, !arg_1, vec4<i32>(u_input.a.x, -(~_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(var_1.x, -2147483647i, u_input.a.x, -62538i))), _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36317u, 24u)], 16u)], global3[_wgslsmith_index_u32(1u, 16u)], 7802i), vec4<i32>(var_1.x, var_1.x, u_input.a.x, u_input.a.x)), max(-1i, -2147483647i)), var_1.x), -reverseBits(var_1.x)));
    global1 = Struct_1(arg_3);
    let var_3 = _wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(46144u, 24u)], 27394u);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, global1.a))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(131f, arg_3) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, -102f))))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-536f, arg_3))), vec2<f32>(721f, 1300f)))));
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_4 {
    global2 = array<vec4<u32>, 21>();
    var var_0 = abs(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-26099i, 1i, 29346i) ^ vec3<i32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 16u)], -2147483647i, 0i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -38583i, 1i), ~u_input.a.xzz)), 2147483647i, -2147483647i));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1463f - -1000f), -1546f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(vec4<bool>(false, false, true, true), false, false, 292f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(337f, global1.a) * vec2<f32>(arg_1, arg_1)))) - vec2<f32>(_wgslsmith_f_op_f32(220f * -2314f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(794f, -1149f)), arg_1))));
    var var_2 = false;
    global2 = array<vec4<u32>, 21>();
    return Struct_4(var_0.x, 40145u, !((_wgslsmith_mult_u32(arg_0, arg_0) >= min(33575u, global0[_wgslsmith_index_u32(1u, 24u)])) || !(arg_0 >= 0u)), u_input.a);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec4<f32>) -> Struct_1 {
    global0 = array<u32, 24>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-global1.a), arg_2.x);
    let var_1 = Struct_5(12083u, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_2.xx)))))));
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(!(!vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x)), false, any(arg_1.yy), 1f)).x + _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_2.x, global1.a))))));
    let var_2 = Struct_5(_wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(1u, arg_0.b)), vec2<f32>(-231f, -153f));
    return Struct_1(-1499f);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    global2 = array<vec4<u32>, 21>();
    global1 = Struct_1(_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(sign(arg_1.a)))))));
    global0 = array<u32, 24>();
    var var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(21006u, 24u)], 0u & ~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)]), ~abs(~global0[_wgslsmith_index_u32(arg_0.x, 24u)])), reverseBits(~(~arg_0)) ^ _wgslsmith_clamp_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], 66618u, arg_0.x), _wgslsmith_add_vec3_u32(~arg_0, arg_0 ^ arg_0), _wgslsmith_div_vec3_u32(arg_0, ~vec3<u32>(1u, 1u, 0u))), arg_0);
    let var_1 = Struct_3(any(vec4<bool>(false, all(vec4<bool>(true, true, true, true)), true, !any(vec3<bool>(true, false, false)))));
    return func_4(Struct_4(i32(-1i) * -18160i, countOneBits(func_3(var_1, var_1, select(vec3<bool>(true, var_1.a, var_1.a), vec3<bool>(var_1.a, true, var_1.a), true), vec3<f32>(arg_1.a, -530f, global1.a))), true, u_input.a), select(vec3<bool>(!(var_1.a & false), true, var_1.a), select(select(select(vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(false, false, var_1.a), false), select(vec3<bool>(false, var_1.a, var_1.a), vec3<bool>(true, var_1.a, var_1.a), vec3<bool>(false, var_1.a, true)), !vec3<bool>(var_1.a, false, var_1.a)), vec3<bool>(var_1.a, true, var_0.x < arg_0.x), !(!vec3<bool>(var_1.a, false, false))), !(global3[_wgslsmith_index_u32(1u, 16u)] < ~(-13505i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-928f, arg_1.a, global1.a, arg_1.a))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, 564f, 610f, arg_1.a)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, 508f, -457f, 607f) * vec4<f32>(-1400f, arg_1.a, 1000f, -1345f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1734f, 1215f, -103f, global1.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, arg_1.a, global1.a, -1281f) * vec4<f32>(global1.a, arg_1.a, 1184f, arg_1.a)), !vec4<bool>(true, var_1.a, var_1.a, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 21>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.a), -925f))))));
    let var_1 = _wgslsmith_f_op_f32(821f - var_0);
    let var_2 = u_input.a.zxx;
    global1 = func_5(min(vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], global0[_wgslsmith_index_u32(select(~global0[_wgslsmith_index_u32(1u, 24u)], _wgslsmith_add_u32(0u, global0[_wgslsmith_index_u32(24455u, 24u)]), true), 24u)]), _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 4294967295u, global0[_wgslsmith_index_u32(1u, 24u)]), select(vec3<u32>(global0[_wgslsmith_index_u32(10490u, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17911u, 24u)], 24u)]), _wgslsmith_add_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(179265u, 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28439u, 24u)], 24u)], 24u)], 24u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], global0[_wgslsmith_index_u32(1u, 24u)], 4294967295u)), any(vec4<bool>(false, false, true, false))))), func_4(func_1(global0[_wgslsmith_index_u32(1u, 24u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(661f - var_1))), vec3<bool>(false, false, all(vec4<bool>(true, false, true, false)) || true), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-578f, var_1, 124f, var_0) + vec4<f32>(954f, var_0, -299f, -399f))), vec4<f32>(var_1, _wgslsmith_f_op_f32(global1.a * var_1), _wgslsmith_f_op_f32(ceil(-385f)), _wgslsmith_f_op_f32(-1378f + -159f))))));
    var var_3 = Struct_2(true, func_4(Struct_4(u_input.a.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], 1u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26544u, 24u)], 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16191u, 24u)], 24u)])), global0[_wgslsmith_index_u32(51115u ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)]), (var_2.x == var_2.x) & (32018u <= global0[_wgslsmith_index_u32(0u, 24u)]), u_input.a), !vec3<bool>(false, true, all(vec3<bool>(false, true, false))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -187f), _wgslsmith_f_op_f32(global1.a - -1000f), func_5(vec3<u32>(global0[_wgslsmith_index_u32(68101u, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(95853u, 24u)], 24u)], 61644u), func_4(Struct_4(-1i, global0[_wgslsmith_index_u32(0u, 24u)], true, u_input.a), vec3<bool>(false, false, false), vec4<f32>(-317f, global1.a, 341f, -906f))).a, _wgslsmith_f_op_f32(abs(336f)))), 1u, ~(~_wgslsmith_add_u32(1u, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)], 24u)], 24u)]), 24u)])));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-1i));
}

