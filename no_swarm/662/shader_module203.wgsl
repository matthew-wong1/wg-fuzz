struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: Struct_1 = Struct_1(false, false, true, vec2<u32>(26076u, 16465u), 1560i);

var<private> global2: array<bool, 10> = array<bool, 10>(false, false, true, false, false, true, false, true, true, false);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> f32 {
    var var_0 = Struct_1(false, !any(vec4<bool>(false, arg_1, false, global2[_wgslsmith_index_u32(u_input.a.x, 10u)])) & any(select(vec2<bool>(true, true), vec2<bool>(true, arg_1), all(global0.xx))), arg_1, vec2<u32>(4294967295u, select(_wgslsmith_add_u32(24060u & u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, 1u, 18173u)), countOneBits(61201u), true)), _wgslsmith_dot_vec2_i32(~(~vec2<i32>(arg_0.e, arg_0.e)), vec2<i32>(global1.e, reverseBits(arg_0.e))));
    var_0 = Struct_1(any(!(!vec2<bool>(global0.x, global1.a))), any(!(!select(vec4<bool>(true, arg_1, arg_0.c, global2[_wgslsmith_index_u32(69587u, 10u)]), vec4<bool>(false, arg_0.c, true, false), vec4<bool>(arg_0.b, false, global1.c, var_0.a)))), true, ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, global1.d.x), select(vec2<u32>(var_0.d.x, 3285u), global1.d, global0.xy))), _wgslsmith_div_i32(-_wgslsmith_mult_i32(reverseBits(global1.e), firstLeadingBit(arg_0.e)), 1i << (global1.d.x % 32u)));
    global0 = vec3<bool>(any(select(!vec4<bool>(arg_0.c, true, arg_1, var_0.a), !vec4<bool>(true, arg_0.a, false, arg_1), select(select(vec4<bool>(true, true, var_0.a, global0.x), vec4<bool>(var_0.b, var_0.b, false, true), global2[_wgslsmith_index_u32(64743u, 10u)]), !vec4<bool>(global0.x, var_0.b, global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global0.x), vec4<bool>(true, global1.a, true, true)))), all(vec3<bool>(any(!vec4<bool>(false, var_0.a, true, global1.c)), global1.b, global2[_wgslsmith_index_u32(1u, 10u)])), (global1.e == -_wgslsmith_sub_i32(0i, 4625i)) | all(!(!vec4<bool>(false, var_0.b, global2[_wgslsmith_index_u32(18112u, 10u)], global2[_wgslsmith_index_u32(1u, 10u)]))));
    var var_1 = reverseBits(~abs(~u_input.a.x));
    let var_2 = any(!select(select(select(vec3<bool>(true, arg_0.c, true), vec3<bool>(true, false, global2[_wgslsmith_index_u32(49272u, 10u)]), vec3<bool>(false, false, true)), vec3<bool>(false, false, global1.a), any(vec3<bool>(false, global1.b, false))), select(vec3<bool>(global2[_wgslsmith_index_u32(53101u, 10u)], true, true), !vec3<bool>(global1.b, false, true), vec3<bool>(false, global0.x, true)), any(global0.zx)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1806f))) + -597f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(221f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -170f))) + 1000f));
}

fn func_2(arg_0: Struct_1) -> bool {
    global1 = Struct_1(false, true, !arg_0.b || (_wgslsmith_f_op_f32(-617f - _wgslsmith_f_op_f32(f32(-1f) * -343f)) >= _wgslsmith_div_f32(-689f, _wgslsmith_f_op_f32(func_3(arg_0, true)))), _wgslsmith_div_vec2_u32(vec2<u32>(56265u, global1.d.x), global1.d), 1i);
    var var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(~(~1u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, _wgslsmith_sub_u32(30782u, u_input.a.x)), vec2<u32>(6638u, ~u_input.a.x))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, 1u), select(24442u, 0u, false)), abs(~vec2<u32>(arg_0.d.x, 52105u)), vec2<u32>(1u, _wgslsmith_add_u32(1u, 1u))));
    var var_1 = arg_0;
    let var_2 = Struct_1(true, global1.c, true, vec2<u32>(~_wgslsmith_mult_u32(~u_input.a.x, arg_0.d.x), _wgslsmith_add_u32(48600u, ~u_input.a.x) & 1u), arg_0.e);
    var var_3 = arg_0;
    return true;
}

fn func_1(arg_0: bool) -> vec4<bool> {
    var var_0 = Struct_1(!func_2(Struct_1(any(vec4<bool>(true, global0.x, false, false)), true && arg_0, false, ~vec2<u32>(46491u, 54923u), select(8194i, global1.e, true))), func_2(Struct_1(!(!arg_0), global0.x, false, vec2<u32>(~18595u, firstLeadingBit(5053u)), global1.e)), false, _wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(u_input.a.x, global1.d.x)) & vec2<u32>(17767u, ~18828u), u_input.a, vec2<u32>(global1.d.x, _wgslsmith_clamp_u32(global1.d.x, global1.d.x, 31459u) >> (~u_input.a.x % 32u))), select(-countOneBits(reverseBits(global1.e)), firstLeadingBit(_wgslsmith_dot_vec4_i32(select(vec4<i32>(global1.e, 0i, global1.e, 2147483647i), vec4<i32>(global1.e, -24177i, global1.e, global1.e), vec4<bool>(global1.b, arg_0, true, false)), vec4<i32>(global1.e, -2147483647i, global1.e, 21261i))), all(select(select(vec4<bool>(arg_0, false, false, false), vec4<bool>(global2[_wgslsmith_index_u32(1u, 10u)], global0.x, true, true), vec4<bool>(arg_0, global1.c, false, false)), vec4<bool>(false, global2[_wgslsmith_index_u32(global1.d.x, 10u)], global2[_wgslsmith_index_u32(34050u, 10u)], true), all(vec4<bool>(arg_0, true, false, global2[_wgslsmith_index_u32(u_input.a.x, 10u)]))))));
    global1 = Struct_1(global1.a, !(!global0.x || func_2(Struct_1(false, false, arg_0, var_0.d, var_0.e))) && select(any(select(vec2<bool>(global1.b, global1.c), vec2<bool>(true, false), false)), false, all(!vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 10u)], global0.x))), all(vec3<bool>(true && (false && var_0.c), false, !global2[_wgslsmith_index_u32(firstLeadingBit(12210u), 10u)])), global1.d, -var_0.e);
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-595f + -1016f)))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(694f, 1103f), _wgslsmith_f_op_f32(f32(-1f) * -522f), true)))));
    global2 = array<bool, 10>();
    let var_2 = Struct_1(true, ((~4294967295u ^ _wgslsmith_clamp_u32(global1.d.x, 1u, 74776u)) | ~(~u_input.a.x)) == _wgslsmith_div_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.d.x, global1.d.x, global1.d.x), vec3<u32>(global1.d.x, 18240u, 38076u)) >> (global1.d.x % 32u)), global0.x, vec2<u32>(~(~global1.d.x), u_input.a.x & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_0.d.x, 0u, 91810u), ~vec4<u32>(4294967295u, var_0.d.x, var_0.d.x, global1.d.x))), countOneBits(reverseBits(var_0.e)));
    return !(!vec4<bool>(false | all(vec3<bool>(true, true, true)), !(var_2.a & global2[_wgslsmith_index_u32(var_0.d.x, 10u)]), global2[_wgslsmith_index_u32(global1.d.x, 10u)], false));
}

fn func_4(arg_0: vec4<bool>) -> vec2<u32> {
    global1 = Struct_1(!arg_0.x, true, func_2(Struct_1(true, global2[_wgslsmith_index_u32(1u, 10u)], global1.c, vec2<u32>(4294967295u, global1.d.x), _wgslsmith_dot_vec2_i32(vec2<i32>(39260i, 3785i), _wgslsmith_div_vec2_i32(vec2<i32>(-9755i, -515i), vec2<i32>(-5757i, global1.e))))), min(~u_input.a, max(vec2<u32>(u_input.a.x, u_input.a.x), max(u_input.a, u_input.a)) | abs(u_input.a)), ~1i);
    var var_0 = _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(select(0u, global1.d.x, true), max(9721u, global1.d.x), global1.d.x), vec3<u32>(33285u, u_input.a.x, u_input.a.x) | ~vec3<u32>(66824u, u_input.a.x, global1.d.x)), vec3<u32>(u_input.a.x ^ ~49820u, global1.d.x, ~(~u_input.a.x))) >> (~vec3<u32>(global1.d.x, abs(u_input.a.x) << (firstTrailingBit(u_input.a.x) % 32u), 0u) % vec3<u32>(32u));
    global1 = Struct_1(global1.b, true, false, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x) & _wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(3934u, global1.d.x)), vec2<u32>(1u, 42842u)), -firstTrailingBit(global1.e));
    global2 = array<bool, 10>();
    let var_1 = min(0u, var_0.x);
    return global1.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!(true | !any(vec4<bool>(global2[_wgslsmith_index_u32(66268u, 10u)], false, global2[_wgslsmith_index_u32(0u, 10u)], global0.x))), !(~_wgslsmith_mod_u32(0u, global1.d.x) <= _wgslsmith_dot_vec4_u32(~vec4<u32>(global1.d.x, 45235u, 67249u, 33866u), vec4<u32>(4294967295u, 0u, 50781u, 4294967295u))), all(vec2<bool>(global1.e != global1.e, _wgslsmith_f_op_f32(trunc(-478f)) != _wgslsmith_f_op_f32(select(3004f, -560f, global2[_wgslsmith_index_u32(0u, 10u)])))), ~vec2<u32>(~global1.d.x, _wgslsmith_mod_u32(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, 4294967295u), vec3<u32>(60704u, 49555u, global1.d.x)))), 0i);
    let var_1 = global1.a;
    var var_2 = Struct_1(global2[_wgslsmith_index_u32(~(firstTrailingBit(_wgslsmith_mult_u32(u_input.a.x, 28215u)) | ~var_0.d.x), 10u)], global0.x, var_0.b, func_4(!select(!vec4<bool>(false, false, global2[_wgslsmith_index_u32(54269u, 10u)], true), func_1(false), !vec4<bool>(false, false, global1.a, false))), -_wgslsmith_div_i32(-2147483647i, max(global1.e, abs(global1.e))));
    global1 = Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a.x, ~_wgslsmith_add_u32(17821u, 110679u)), max(~4294967295u, _wgslsmith_mult_u32(u_input.a.x, var_0.d.x) << (12363u % 32u))), 10u)], -1i <= (-select(var_2.e, -2147483647i, true) | ~max(global1.e, global1.e)), true, ~var_0.d, -(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.e, global1.e, 1i, -20884i), vec4<i32>(var_2.e, 10675i, 2147483647i, 0i)), 1i) ^ global1.e));
    global2 = array<bool, 10>();
    global2 = array<bool, 10>();
    var_2 = Struct_1(any(!func_1(all(vec3<bool>(global2[_wgslsmith_index_u32(89647u, 10u)], true, false))).yz), all(!vec3<bool>(true, true, var_0.e < 1i)), true, _wgslsmith_clamp_vec2_u32(abs(var_2.d), var_0.d, ~(~global1.d)), ~_wgslsmith_clamp_i32(~1i, ~global1.e, var_2.e) >> (~0u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

