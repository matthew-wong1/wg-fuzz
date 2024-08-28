struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 1>;

var<private> global1: vec3<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = select(select(select(vec4<bool>(false, 1u < u_input.c.x, true, any(vec4<bool>(false, false, false, false))), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))), vec4<bool>(any(!(!global0[_wgslsmith_index_u32(global1.x, 1u)])), true & (~1361u < u_input.e.x), ~global1.x != firstLeadingBit(~u_input.c.x), 17661i == (_wgslsmith_add_i32(5195i, u_input.a.x) & -u_input.a.x)), any(vec4<bool>(true, true, true, true)));
    let var_1 = 392f;
    let var_2 = u_input.b.x;
    var var_3 = Struct_1(4294967295u);
    global0 = array<vec3<bool>, 1>();
    return u_input.e.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    return _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(firstTrailingBit(_wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(43901u, u_input.e.x, 1u))) & u_input.c, ~(~u_input.e.zzw)), vec3<u32>(1u >> (arg_0.a % 32u), func_3(), global1.x));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> f32 {
    global1 = abs(firstTrailingBit(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(select(u_input.e.zxy, u_input.e.yyx, true), vec3<u32>(arg_0, arg_0, 33529u)), _wgslsmith_mult_vec3_u32(func_2(arg_1, arg_1), u_input.e.ywy))));
    var var_0 = vec4<f32>(-1000f, -1645f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(213f, 1000f))))))), -440f);
    global0 = array<vec3<bool>, 1>();
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(~(~_wgslsmith_div_u32(arg_1.a, 4294967295u)), func_3()), select(global1.x, 25893u, true));
    var_1 = _wgslsmith_add_u32(global1.x, arg_0);
    return _wgslsmith_f_op_f32(min(-175f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)))))))));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_1(~(~(~firstTrailingBit(0u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.x, -414f, true)) * arg_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f + arg_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), _wgslsmith_f_op_f32(sign(566f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-115f)))), _wgslsmith_f_op_f32(exp2(arg_1.x))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1869f, arg_1.x, 1000f, -1156f) + vec4<f32>(arg_1.x, -257f, 1107f, arg_1.x))) * vec4<f32>(arg_1.x, -215f, 1034f, _wgslsmith_f_op_f32(1045f + arg_1.x))), vec4<f32>(_wgslsmith_f_op_f32(sign(arg_1.x)), arg_1.x, _wgslsmith_f_op_f32(select(501f, _wgslsmith_f_op_f32(arg_1.x * arg_1.x), true)), 1000f))));
    let var_2 = -253f;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1229f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(62845u, Struct_1(arg_2.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_1.x, -1662f)), arg_1.x)))));
    var var_4 = vec2<bool>(-1361f >= var_2, select(!all(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, arg_2.x), 1u)]), all(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
    return Struct_1(294u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(8873i, vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.e.x, Struct_1(9785u)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(707f + 551f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1310f - -582f), 822f)))), vec2<u32>(u_input.e.x, ~global1.x), ~67157u ^ _wgslsmith_add_u32(53582u, u_input.e.x));
    global1 = ~((vec3<u32>(u_input.c.x, ~var_0.a, u_input.c.x) & _wgslsmith_add_vec3_u32(vec3<u32>(global1.x, 1u, global1.x) ^ vec3<u32>(global1.x, 110018u, 0u), abs(u_input.e.yyy))) & (~(~u_input.e.zxx) >> (u_input.c % vec3<u32>(32u))));
    var var_1 = u_input.c;
    var_0 = func_4(-16772i, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1448f)), _wgslsmith_f_op_f32(320f - -341f))), -1751f))), global1.xx, min(~1u, var_0.a));
    let var_2 = abs(-vec3<i32>(29120i, ~u_input.b.x, u_input.b.x));
    var var_3 = !vec3<bool>(all(vec3<bool>(any(vec2<bool>(false, false)), true, any(vec4<bool>(false, true, true, true)))), false, select(u_input.d.x, u_input.a.x | var_2.x, true) < _wgslsmith_div_i32(1108i, ~(-3713i)));
    let var_4 = select(vec4<bool>(!var_3.x, true, true, !(all(var_3.yz) || !var_3.x)), select(vec4<bool>(any(var_3.yx), 1i > var_2.x, var_3.x, any(select(vec4<bool>(true, false, var_3.x, var_3.x), vec4<bool>(false, false, var_3.x, false), vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x)))), vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -477f) < _wgslsmith_f_op_f32(func_1(var_0.a, Struct_1(0u))), false, any(vec2<bool>(true, var_3.x)), (var_2.x | var_2.x) > 19258i), any(vec3<bool>(true, global1.x >= 4294967295u, true))), !any(select(var_3.xz, select(vec2<bool>(false, var_3.x), var_3.xz, var_3.xx), all(vec4<bool>(true, false, false, var_3.x)))));
    var var_5 = ~(~global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(~8714u, ~vec4<i32>(-1i, _wgslsmith_mod_i32(u_input.d.x, var_2.x) ^ 1i, ~_wgslsmith_clamp_i32(var_2.x, var_2.x, u_input.b.x), u_input.a.x), reverseBits(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, u_input.a.x, 0i), vec4<i32>(39033i, u_input.d.x, u_input.a.x, -2147483647i) & u_input.d), min(2147483647i, max(u_input.b.x, u_input.b.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, var_2.x), vec2<i32>(u_input.a.x, -16213i)), ~firstLeadingBit(1i))));
}

