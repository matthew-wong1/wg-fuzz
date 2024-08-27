struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10>;

var<private> global1: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false));

var<private> global2: array<vec2<bool>, 26> = array<vec2<bool>, 26>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_4) -> f32 {
    global2 = array<vec2<bool>, 26>();
    let var_0 = global0[_wgslsmith_index_u32(44988u << (~(u_input.b >> (arg_0.e % 32u)) % 32u), 10u)];
    global1 = array<vec3<bool>, 10>();
    var var_1 = Struct_4(vec3<f32>(arg_0.a.x, -1321f, arg_0.a.x), global1[_wgslsmith_index_u32(0u, 10u)], 0u, vec3<i32>(u_input.c.x, firstLeadingBit(_wgslsmith_mult_i32(~arg_0.d.x, 2147483647i)), i32(-1i) * -41189i), min(~arg_0.e, abs(~firstTrailingBit(arg_0.e))));
    var var_2 = u_input.a ^ ~(~_wgslsmith_sub_vec4_i32(vec4<i32>(-376i, -1i, 2147483647i, 18257i), u_input.a));
    return 758f;
}

fn func_2() -> bool {
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_4(vec3<f32>(-965f, -678f, -336f), vec3<bool>(global0[_wgslsmith_index_u32(40210u, 10u)], global0[_wgslsmith_index_u32(var_0, 10u)], true), 1u, vec3<i32>(u_input.a.x, 9736i, u_input.c.x), 0u))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(326f + 746f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-128f, 736f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-586f, 872f) + vec2<f32>(721f, 571f)))), vec2<f32>(1f, 1f)));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(368f - 1044f), -120f);
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
    global2 = array<vec2<bool>, 26>();
    return !global0[_wgslsmith_index_u32(u_input.b, 10u)];
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> bool {
    global2 = array<vec2<bool>, 26>();
    let var_0 = !(!select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)] | global0[_wgslsmith_index_u32(4294967295u, 10u)], any(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_1, 10u)], false, global0[_wgslsmith_index_u32(arg_1, 10u)])), !global0[_wgslsmith_index_u32(arg_1, 10u)], func_2()), vec4<bool>(global0[_wgslsmith_index_u32(firstLeadingBit(arg_1), 10u)], !global0[_wgslsmith_index_u32(4294967295u, 10u)], any(global2[_wgslsmith_index_u32(61162u, 26u)]), select(false, false, global0[_wgslsmith_index_u32(arg_1, 10u)])), vec4<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(arg_1, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(17764u, 10u)], false)), false && global0[_wgslsmith_index_u32(arg_1, 10u)], !global0[_wgslsmith_index_u32(23261u, 10u)], !global0[_wgslsmith_index_u32(u_input.b, 10u)])));
    let var_1 = _wgslsmith_f_op_f32(max(arg_0.a, -1808f));
    var var_2 = Struct_2(arg_0);
    var var_3 = false;
    return any(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], true && all(select(global1[_wgslsmith_index_u32(14944u, 10u)], var_0.xyx, global0[_wgslsmith_index_u32(95400u, 10u)])), var_0.x || (u_input.a.x > (u_input.a.x << (arg_1 % 32u))), false));
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    let var_0 = Struct_3(vec2<bool>(all(select(select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], true, global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(58087u, 10u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], arg_0.b.x, global0[_wgslsmith_index_u32(arg_0.e, 10u)], arg_0.b.x), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, true)), !vec4<bool>(arg_0.b.x, true, true, arg_0.b.x), u_input.b >= 1u)), false), firstTrailingBit(vec2<u32>(u_input.b, 1u)), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.a.x - 2328f), _wgslsmith_f_op_f32(arg_0.a.x * -765f))), _wgslsmith_div_f32(-255f, _wgslsmith_div_f32(-2274f, arg_0.a.x))))));
    global1 = array<vec3<bool>, 10>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1115f, arg_0.a.x)));
    var var_2 = select(!(!vec3<bool>(2147483647i <= arg_0.d.x, arg_0.b.x == true, true)), !(!select(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, 4294967295u), 10u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(41150u, 0u), 10u)], select(vec3<bool>(true, global0[_wgslsmith_index_u32(5665u, 10u)], true), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 10u)], false), global0[_wgslsmith_index_u32(arg_0.e, 10u)]))), !(!vec3<bool>(arg_0.b.x, arg_0.b.x, !var_0.a.x)));
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -501f) + _wgslsmith_f_op_f32(f32(-1f) * -565f)), 1674f)), vec3<f32>(-1000f, var_0.c.a, _wgslsmith_f_op_f32(select(3108f, var_0.c.a, any(vec2<bool>(false, true))))), select(global1[_wgslsmith_index_u32(firstTrailingBit(var_0.b.x), 10u)], vec3<bool>(func_1(Struct_1(1892f), abs(u_input.b)), true, var_0.a.x), all(arg_0.b))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -974f))));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec2<f32>) -> Struct_4 {
    var var_0 = arg_0;
    var var_1 = arg_0;
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(749f, 658f, 1749f, 156f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a, arg_0.a.a, 462f, var_0.a.a)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.x, var_1.a.a, var_0.a.a, 1809f), vec4<f32>(arg_2.x, 1065f, -882f, var_0.a.a))))), vec4<f32>(var_1.a.a, 496f, _wgslsmith_f_op_f32(-565f * -407f), _wgslsmith_f_op_f32(select(173f, var_1.a.a, global0[_wgslsmith_index_u32(u_input.b, 10u)])))), !(!vec4<bool>(arg_1, arg_1, false, false)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a.a)) * -347f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a)), _wgslsmith_f_op_f32(max(var_0.a.a, _wgslsmith_div_f32(-1141f, var_1.a.a))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_2.x)), _wgslsmith_f_op_f32(ceil(-1352f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1485f, var_1.a.a, arg_2.x, arg_2.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a, var_0.a.a, 352f, 166f))))));
    var var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_2.wzx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-183f, 2192f, arg_2.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_2.zyw, var_2.xwy, arg_1)) + _wgslsmith_f_op_vec3_f32(select(var_2.wwx, var_2.wyy, global1[_wgslsmith_index_u32(9787u, 10u)]))))), global1[_wgslsmith_index_u32(1u, 10u)], 1u, ~vec3<i32>(24348i, u_input.c.x, u_input.a.x), ~(select(reverseBits(4294967295u), ~50287u, u_input.b >= u_input.b) & 4294967295u));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1855f * _wgslsmith_f_op_f32(func_3(Struct_4(var_3.a, vec3<bool>(var_3.b.x, global0[_wgslsmith_index_u32(var_3.e, 10u)], false), 24610u, var_3.d, u_input.b)))) + -1836f));
    return Struct_4(_wgslsmith_f_op_vec3_f32(var_2.wyx - _wgslsmith_f_op_vec3_f32(-var_2.zyy)), vec3<bool>(var_3.b.x, var_3.a.x >= _wgslsmith_div_f32(var_3.a.x, 716f), any(var_3.b.zz)), ~firstTrailingBit(9456u), firstTrailingBit(min(u_input.c, firstLeadingBit(var_3.d))), _wgslsmith_add_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_3.c, 1u), vec3<u32>(var_3.e, var_3.e, 8506u))), 61911u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], false, false)) & global0[_wgslsmith_index_u32(u_input.b, 10u)], any(vec3<bool>(false, true, false)), true, global0[_wgslsmith_index_u32(~abs(24824u), 10u)] & true);
    let var_1 = true;
    var var_2 = func_5(func_4(Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(598f, -138f, 648f)), vec3<bool>(func_1(Struct_1(-315f), u_input.b), !var_0.x, true), 4294967295u, _wgslsmith_clamp_vec3_i32(countOneBits(u_input.a.xwy), u_input.c, vec3<i32>(-54552i, 2147483647i, 0i)), ~abs(u_input.b))), all(vec4<bool>(all(select(vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.b, 10u)], true), false)), -52077i > abs(u_input.c.x), u_input.a.x > u_input.a.x, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1073f, 1338f)), _wgslsmith_div_vec2_f32(vec2<f32>(-922f, 1130f), vec2<f32>(-121f, 1000f)), vec2<bool>(var_0.x, false))))));
    let var_3 = 43219i;
    var var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x))))), var_2.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_clamp_i32(13899i, ~2147483647i, ~(-2147483647i)), -21694i), u_input.a, _wgslsmith_add_i32(abs(~1i), _wgslsmith_div_i32(-_wgslsmith_sub_i32(var_3, -50444i), reverseBits(min(-23902i, var_3)))), func_5(func_4(Struct_4(var_2.a, !global1[_wgslsmith_index_u32(var_2.e, 10u)], _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_2.c, 45150u, u_input.b), vec4<u32>(9730u, u_input.b, u_input.b, 19279u)), var_2.d, 40755u)), var_2.b.x, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(var_2.a.yz, _wgslsmith_f_op_vec2_f32(-var_2.a.zz))))).c, 1u);
}

