struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 7>;

var<private> global1: Struct_1;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool) -> u32 {
    var var_0 = arg_0;
    var var_1 = ~vec2<u32>(firstLeadingBit(arg_1.x), _wgslsmith_add_u32(~(~4294967295u), _wgslsmith_div_u32(4819u, 20501u)));
    var var_2 = (i32(-1i) * -(-var_0.b.x >> (arg_1.x % 32u))) > -_wgslsmith_mod_i32(1i, reverseBits(var_0.b.x));
    global0 = array<vec2<bool>, 7>();
    var var_3 = global1.b.x;
    return _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~19431u, 1u, arg_1.x, ~1u & var_1.x), vec4<u32>(~10942u, firstTrailingBit(abs(arg_1.x)), var_1.x, 40341u >> (countOneBits(15590u) % 32u))), max(select(_wgslsmith_div_vec4_u32(arg_1 | vec4<u32>(1u, 4294967295u, u_input.a, arg_1.x), _wgslsmith_mod_vec4_u32(arg_1, arg_1)), ~(arg_1 << (vec4<u32>(25436u, var_1.x, 0u, arg_1.x) % vec4<u32>(32u))), arg_2 && true), ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a, 55757u, 4294967295u), ~vec4<u32>(u_input.a, 0u, arg_1.x, arg_1.x))));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> i32 {
    let var_0 = 2147483647i;
    let var_1 = vec4<bool>(true, arg_1, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(min(462f, -1000f))))) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), -1000f))), func_3(arg_0, ~vec4<u32>(106239u, u_input.a, 4294967295u, 4294967295u), ~1u <= arg_2) < arg_2);
    global1 = arg_0;
    var var_2 = vec2<f32>(682f, 473f);
    var var_3 = vec3<i32>(max(_wgslsmith_mod_i32(firstLeadingBit(firstLeadingBit(var_0)), global1.b.x), -1072i), _wgslsmith_mod_i32(-2412i, firstLeadingBit(arg_0.b.x | ~1i)), 30676i);
    return _wgslsmith_div_i32(~(_wgslsmith_sub_i32(var_3.x, 39051i) | ((arg_0.b.x | 19193i) & -2147483647i)), abs(-17705i));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec2<bool>) -> Struct_1 {
    global1 = Struct_1(_wgslsmith_f_op_f32(round(global1.a)), global1.b);
    var var_0 = arg_0;
    var var_1 = vec4<i32>(-38995i << (firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_mult_u32(0u, 0u), u_input.a)) % 32u), -global1.b.x, ~global1.b.x, _wgslsmith_add_i32(global1.b.x, -1i));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(357f, arg_1, arg_1))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, global1.a, arg_1))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -769f, -734f) - vec3<f32>(global1.a, -1265f, -1141f))))), all(select(vec2<bool>(false, arg_2.x), global0[_wgslsmith_index_u32(24566u, 7u)], arg_2.x)) || true)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-507f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.a, -1000f))), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(min(1627f, global1.a)))))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1090f) - _wgslsmith_f_op_f32(1668f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(arg_1)))))), 314f, arg_1);
    return Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(507f, 1179f), _wgslsmith_f_op_f32(global1.a * -1418f))))), reverseBits(~(-global1.b)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = vec3<i32>(arg_2.b.x, arg_0.b.x, max(min(_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_2.b.x, arg_2.b.x, -12670i), min(vec3<i32>(1i, global1.b.x, -14730i), vec3<i32>(-53873i, 50696i, -2147483647i))), -min(arg_0.b.x, global1.b.x)), arg_0.b.x));
    global1 = Struct_1(-1420f, firstLeadingBit(var_0.zz ^ vec2<i32>(~4845i, firstTrailingBit(var_0.x))));
    global1 = func_4(_wgslsmith_sub_u32(210u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(16859u, 28091u, 1u), 1u & u_input.a, 28165u), _wgslsmith_div_u32(arg_3, u_input.a) << (firstTrailingBit(28874u) % 32u))), -932f, vec2<bool>(any(vec4<bool>(true, true, true, true)), func_2(Struct_1(arg_2.a, arg_0.b), all(vec2<bool>(false, false)), u_input.a) >= -2147483647i));
    let var_1 = select(~_wgslsmith_mod_vec3_i32(var_0, vec3<i32>(_wgslsmith_sub_i32(1i, arg_0.b.x), _wgslsmith_dot_vec2_i32(arg_2.b, vec2<i32>(global1.b.x, global1.b.x)), abs(global1.b.x))), var_0 ^ var_0, vec3<bool>(_wgslsmith_mod_u32(0u, arg_3) > (u_input.a | abs(57643u)), (_wgslsmith_f_op_f32(floor(890f)) <= _wgslsmith_f_op_f32(f32(-1f) * -421f)) | (true & (global1.a <= 501f)), true | ((u_input.a == arg_3) && true)));
    var var_2 = -1i;
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool, arg_3: vec2<f32>) -> Struct_1 {
    global1 = func_4(max(arg_1.x, u_input.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-292f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a * global1.a) * 140f)))), select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), firstLeadingBit(~vec4<u32>(arg_1.x, 0u, 4294967295u, 39527u))), 7u)], !(!vec2<bool>(arg_2, arg_2)), !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 70744u), vec2<u32>(arg_1.x, 15491u)), 7u)]));
    let var_0 = -17094i;
    let var_1 = arg_0;
    let var_2 = vec4<bool>(arg_2, true, any(select(select(select(vec4<bool>(arg_2, true, false, false), vec4<bool>(arg_2, false, arg_2, true), false), !vec4<bool>(arg_2, arg_2, false, true), all(vec3<bool>(arg_2, arg_2, arg_2))), !vec4<bool>(arg_2, true, arg_2, arg_2), false)), true);
    global0 = array<vec2<bool>, 7>();
    return Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-862f + arg_0.a))), func_4(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.x, u_input.a, u_input.a), countOneBits(vec3<u32>(96794u, arg_1.x, u_input.a))), 461f, vec2<bool>(true, true)).a)), -select(-vec2<i32>(-2147483647i, 27227i), _wgslsmith_add_vec2_i32(global1.b, arg_0.b | vec2<i32>(var_1.b.x, var_0)), vec2<bool>(true & arg_2, false)));
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = ~vec3<u32>(func_3(arg_1, ~vec4<u32>(u_input.a, u_input.a, 9626u, u_input.a), arg_0), max(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_3, arg_3), firstTrailingBit(vec3<u32>(5950u, u_input.a, u_input.a))), 4520u), 69791u);
    var var_1 = firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_0.x, 36660u), ~arg_3) << (_wgslsmith_add_u32(_wgslsmith_div_u32(97989u, u_input.a), ~36745u) % 32u), abs(~u_input.a), abs(~var_0.x), arg_3));
    var var_2 = ~(~firstLeadingBit(0u & _wgslsmith_sub_u32(arg_3, 4294967295u)));
    var_1 = vec4<u32>(reverseBits(~var_0.x), 22438u, 30102u, ~_wgslsmith_add_u32(var_0.x, var_1.x));
    var var_3 = min(var_1.x & ~4294967295u, u_input.a);
    return func_4(~_wgslsmith_add_u32(u_input.a, abs(~var_0.x)), -2109f, global0[_wgslsmith_index_u32(var_1.x, 7u)]);
}

fn func_7(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-586f, arg_0.a, arg_0.a, arg_0.a))))))))));
    var var_1 = vec2<bool>(true, true);
    var var_2 = ~arg_0.b.x;
    var var_3 = func_5(Struct_1(-1000f, -global1.b), vec2<u32>(u_input.a, u_input.a) >> ((_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(u_input.a, 27281u)) >> (select(firstLeadingBit(vec2<u32>(u_input.a, 40128u)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 70445u), vec2<u32>(69432u, 4294967295u)), var_1.x && true) % vec2<u32>(32u))) % vec2<u32>(32u)), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_0.wy + var_0.yy))), vec2<f32>(749f, _wgslsmith_div_f32(global1.a, global1.a)))) - var_0.yw));
    var_1 = !select(vec2<bool>(var_1.x, true), vec2<bool>(true, _wgslsmith_f_op_f32(-234f + 1142f) <= _wgslsmith_f_op_f32(step(var_3.a, 182f))), select(!select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, true), vec2<bool>(true, true)), global0[_wgslsmith_index_u32(select(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 11717u)), !var_1.x), 7u)], any(global0[_wgslsmith_index_u32(1u, 7u)])));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) * _wgslsmith_f_op_f32(min(-562f, global1.a))), ~firstLeadingBit(var_3.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(!any(vec2<bool>(true, false)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.a)) + _wgslsmith_f_op_f32(step(global1.a, global1.a))), global1.b), func_5(func_1(Struct_1(738f, vec2<i32>(1474i, 2996i)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1556f, 498f), vec2<f32>(-1000f, global1.a), false)), Struct_1(-1000f, global1.b), max(37701u, u_input.a)), ~vec2<u32>(u_input.a, u_input.a), !any(vec4<bool>(true, true, false, false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2427f, global1.a))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, global1.a)))), _wgslsmith_sub_u32(~u_input.a, u_input.a)));
    global1 = func_6(any(!vec4<bool>(true, false, 368f < global1.a, all(vec3<bool>(true, false, false)))), Struct_1(global1.a, var_0.b), Struct_1(_wgslsmith_f_op_f32(step(1074f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.a, -880f)) * global1.a))), vec2<i32>(-1i) * -var_0.b), 4294967295u);
    let var_1 = Struct_1(-1253f, abs(~(-vec2<i32>(var_0.b.x, var_0.b.x))));
    var var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(u_input.a, 0u)), ~vec2<u32>(u_input.a, u_input.a)), max(vec2<u32>(62963u, u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 30719u), vec2<u32>(4294967295u, 4294967295u)))), 46834u | u_input.a), vec2<u32>(abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(35403u, u_input.a, u_input.a, 20699u), vec4<u32>(12757u, 0u, u_input.a, u_input.a))), u_input.a), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, u_input.a), select(vec2<u32>(87321u, u_input.a), vec2<u32>(4294967295u, u_input.a), vec2<bool>(true, true))), ~_wgslsmith_div_vec2_u32(vec2<u32>(25947u, u_input.a), vec2<u32>(u_input.a, u_input.a))) >> (vec2<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(4294967295u, u_input.a, 0u)), vec3<u32>(1u, 1u, 25982u)), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(27244u, 0u, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, 76284u, u_input.a)))) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(min(~(firstLeadingBit(vec2<u32>(var_2.x, u_input.a)) | min(vec2<u32>(u_input.a, 73238u), vec2<u32>(7518u, var_2.x))), countOneBits(vec2<u32>(var_2.x, var_2.x)) << (vec2<u32>(~17076u, select(1u, 2531u, true)) % vec2<u32>(32u))), vec3<u32>(~_wgslsmith_mod_u32(54676u, u_input.a), _wgslsmith_sub_u32(_wgslsmith_add_u32(29433u, u_input.a), u_input.a), var_2.x | 1u) >> (vec3<u32>(func_3(var_1, ~vec4<u32>(1u, 70669u, 0u, var_2.x), true), 32301u, 4745u << (~u_input.a % 32u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1213f, -220f, -197f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(859f, var_0.a, 935f), vec3<f32>(547f, 937f, var_1.a)))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-329f, global1.a, -838f)), vec3<f32>(var_0.a, -241f, var_0.a))))));
}

