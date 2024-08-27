struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: u32) -> vec2<bool> {
    return select(vec2<bool>(all(vec2<bool>(true, true)), false), vec2<bool>(true, true), vec2<bool>(any(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true))), !(!select(true, false, true))));
}

fn func_2(arg_0: f32) -> vec4<i32> {
    let var_0 = !(!any(func_3(Struct_3(vec2<f32>(global0.x, global0.x), vec4<f32>(458f, 763f, -418f, arg_0)), -257f, ~u_input.a.x)));
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(-5340i, 3660i << (_wgslsmith_dot_vec2_u32(vec2<u32>(12928u, 0u), min(u_input.a.zz, vec2<u32>(4294967295u, u_input.a.x))) % 32u)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -12113i, -2147483647i, 3945i) >> (u_input.a % vec4<u32>(32u)), ~vec4<i32>(-1i, -13765i, -40991i, -17641i)) ^ (_wgslsmith_mult_i32(6775i, _wgslsmith_sub_i32(-16447i, -1i)) & (_wgslsmith_dot_vec2_i32(vec2<i32>(45857i, 2147483647i), vec2<i32>(26491i, 1i)) | 2147483647i)));
    var var_2 = vec3<f32>(-847f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - arg_0), global0.x), _wgslsmith_f_op_f32(min(-979f, _wgslsmith_f_op_f32(select(global0.x, 1430f, true)))));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -391f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1210f + _wgslsmith_f_op_f32(-var_2.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(f32(-1f) * -1348f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-350f - -1183f) * _wgslsmith_f_op_f32(f32(-1f) * -1138f)), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-global0.x), var_0 || var_0))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(142f, global0.x, global0.x)))), vec3<f32>(-695f, var_3.x, _wgslsmith_f_op_f32(997f + var_3.x)))));
    return _wgslsmith_mod_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(-var_1, 0i, countOneBits(839i), max(var_1, var_1)), _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(var_1, var_1, var_1, var_1)), reverseBits(vec4<i32>(-10507i, -30057i, -67738i, 1i)))), vec4<i32>(-70799i, var_1, -reverseBits(var_1), ~var_1));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(arg_1.c.x, 986f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.x + 687f))))));
    let var_1 = vec2<u32>(arg_0.x, arg_0.x);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var_2 = _wgslsmith_f_op_f32(floor(1f));
    var var_3 = arg_1.a.x;
    return arg_1.b;
}

fn func_1() -> Struct_1 {
    var var_0 = func_4((u_input.a | u_input.a) >> (~(~(u_input.a | vec4<u32>(u_input.a.x, 101164u, u_input.a.x, u_input.a.x))) % vec4<u32>(32u)), Struct_2(func_2(global0.x) >> (~u_input.a % vec4<u32>(32u)), Struct_1(any(vec4<bool>(true, true, true, true)), max(57929u, ~u_input.a.x)), vec3<f32>(1628f, global0.x, _wgslsmith_f_op_f32(sign(global0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-141f, global0.x)))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-305f, global0.x) * vec2<f32>(1608f, -1483f))))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1222f)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, global0.x)))), vec2<bool>(true, true)))));
    let var_1 = select(vec3<bool>(all(vec2<bool>(true, var_0.a == var_0.a)), all(!vec4<bool>(false, var_0.a, true, true)), false || (firstTrailingBit(13744i) == _wgslsmith_dot_vec2_i32(vec2<i32>(-15414i, 2090i), vec2<i32>(-9759i, -1i)))), !select(vec3<bool>(true, true, all(vec4<bool>(var_0.a, var_0.a, var_0.a, true))), vec3<bool>(var_0.a, var_0.b < u_input.a.x, false), !select(vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(true, var_0.a, var_0.a))), vec3<bool>(true, true, true));
    return func_4(select(vec4<u32>(var_0.b, 1u, ~var_0.b >> (min(u_input.a.x, 3758u) % 32u), u_input.a.x), ~(~vec4<u32>(1u, 0u, u_input.a.x, 0u)), false), Struct_2(-(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 2147483647i, -2147483647i, 6808i)), func_4(u_input.a, Struct_2(abs(vec4<i32>(-60757i, -544i, 21832i, 18510i)), func_4(vec4<u32>(4294967295u, 31315u, 111751u, 1u), Struct_2(vec4<i32>(-13429i, 1i, 0i, -1i), Struct_1(true, u_input.a.x), vec3<f32>(602f, global0.x, -742f)), vec2<f32>(global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, 541f, -256f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, 716f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 152f) + vec2<f32>(global0.x, 558f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(774f, global0.x, global0.x))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, global0.x, -708f)))) - vec3<f32>(_wgslsmith_f_op_f32(global0.x * 102f), _wgslsmith_f_op_f32(exp2(global0.x)), -1963f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -171f), _wgslsmith_f_op_f32(sign(-1297f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(675f, global0.x), vec2<f32>(global0.x, global0.x))))))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(389f * _wgslsmith_f_op_f32(global0.x - -2152f)), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1959f, global0.x) + vec2<f32>(global0.x, -432f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-788f, 480f) + vec2<f32>(global0.x, -242f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))))));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1175f - _wgslsmith_f_op_f32(global0.x + global0.x))), 268f));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(247f - global0.x) * -568f), _wgslsmith_f_op_f32(round(global0.x)));
    var var_1 = ~vec2<u32>(~(_wgslsmith_clamp_u32(1u, var_0.b, var_0.b) | ~var_0.b), 29948u);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1108f, -706f) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(ceil(1050f)), _wgslsmith_f_op_f32(-global0.x))))));
    var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, 705f, global0.x))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(248f, -1042f, var_2.x)), vec3<f32>(var_2.x, -1091f, -458f)))), vec3<f32>(-942f, 1896f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.x)) + _wgslsmith_f_op_f32(min(579f, -1613f)))), true)));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-356f, _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(489f, -1668f)), _wgslsmith_div_vec2_f32(var_2.yz, vec2<f32>(global0.x, global0.x)))) - _wgslsmith_f_op_vec2_f32(-var_2.xx)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-582f, -1122f), var_2.xy)))) + var_2.zy));
    let x = u_input.a;
    s_output = StorageBuffer(-45193i, vec4<i32>(-1i) * -(vec4<i32>(-1i) * -vec4<i32>(-1i, 0i, 2727i, -1i)));
}

