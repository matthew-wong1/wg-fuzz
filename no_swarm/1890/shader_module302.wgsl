struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: bool) -> bool {
    let var_0 = ~27561i >> (1u % 32u);
    var var_1 = ~vec3<u32>(abs(countOneBits(~arg_0.x)), abs(~(~68260u)), 1u);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1726f, 1577f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -682f)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -295f));
    var var_4 = vec3<f32>(109f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(489f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(929f - _wgslsmith_f_op_f32(498f * 2104f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -326f)))))));
    return any(select(!select(vec4<bool>(false, arg_1, true, false), !vec4<bool>(false, true, true, arg_1), 1501f < var_4.x), vec4<bool>(true, true, true, true & all(vec4<bool>(arg_1, true, arg_1, false))), arg_1));
}

fn func_2() -> f32 {
    var var_0 = Struct_1(select(!vec3<bool>(true, true, any(vec4<bool>(false, true, false, true))), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(false, !func_3(vec4<u32>(u_input.a, u_input.a, u_input.b, u_input.b), false), false)));
    let var_1 = Struct_2(~(-vec3<i32>(-1264i, -u_input.c, u_input.d & u_input.c)), Struct_1(var_0.a), _wgslsmith_clamp_u32(1u, select(firstLeadingBit(select(u_input.a, 12668u, true)), ~4294967295u << (u_input.b % 32u), all(vec4<bool>(true, true, false, var_0.a.x))), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(25774u, u_input.a, 17414u, u_input.b) | vec4<u32>(u_input.b, 0u, 1u, 3534u), max(vec4<u32>(u_input.b, u_input.a, 99843u, 48769u), vec4<u32>(u_input.a, u_input.a, 38258u, 47099u))))));
    var_0 = Struct_1(vec3<bool>(!var_0.a.x, true, var_0.a.x));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(max(445f, -217f)), Struct_1(var_1.b.a), 876f);
    var var_3 = ~(~(-6167i));
    return var_2.a;
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: i32, arg_3: u32) -> StorageBuffer {
    let var_0 = Struct_1(vec3<bool>(true, _wgslsmith_f_op_f32(step(1035f, _wgslsmith_f_op_f32(arg_1.x - -286f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - arg_1.x) * _wgslsmith_f_op_f32(-arg_1.x)), true));
    var var_1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + arg_1.x), -207f), Struct_1(!vec3<bool>(8079i > arg_2, true, true)), arg_1.x);
    var var_2 = reverseBits(max(vec3<i32>(i32(-1i) * -7908i, ~1i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, -37709i, 2147483647i, u_input.c), vec4<i32>(2098i, u_input.d, u_input.c, -35299i), false), ~vec4<i32>(-10790i, 0i, arg_2, -30052i))), vec3<i32>(arg_2, arg_2 >> (39405u % 32u), u_input.d)));
    var_1 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.x * var_1.c), var_1.a, !(0u == arg_3))), var_0, arg_1.x);
    let var_3 = Struct_2(-vec3<i32>(_wgslsmith_add_i32(i32(-1i) * -17424i, ~var_2.x), var_2.x, ~abs(arg_2)), var_1.b, ~1u);
    return StorageBuffer(vec3<u32>(var_3.c, _wgslsmith_add_u32(21699u, ~arg_0 >> (_wgslsmith_mult_u32(var_3.c, u_input.a) % 32u)), ~var_3.c >> (_wgslsmith_dot_vec3_u32(vec3<u32>(15418u, arg_0, var_3.c), vec3<u32>(1u, 4294967295u, var_3.c) | vec3<u32>(var_3.c, 13717u, var_3.c)) % 32u)), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    let var_1 = _wgslsmith_add_i32(-2147483647i | _wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.c, 1i), vec3<i32>(u_input.d, 22310i, -1i), vec3<i32>(u_input.c, 11316i, -2655i)), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, u_input.c, 2147483647i), vec3<i32>(2147483647i, u_input.d, 1i), vec3<i32>(1i, 42705i, u_input.c)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.d, u_input.c, u_input.d)), true)), 2147483647i);
    var var_2 = -countOneBits(countOneBits(vec4<i32>(-2147483647i, u_input.c, ~(-39137i), -u_input.d)));
    var_2 = vec4<i32>(firstLeadingBit(var_1), -37900i, ~(~firstTrailingBit(u_input.c)), var_1);
    var var_3 = 52730u ^ _wgslsmith_sub_u32(~(~0u), _wgslsmith_clamp_u32(~var_0, abs(u_input.b), var_0) | u_input.b);
    let x = u_input.a;
    s_output = func_1(~(~21035u), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1821f, -715f, -134f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(531f - 141f) + _wgslsmith_f_op_f32(step(1226f, 943f)))))), -_wgslsmith_dot_vec3_i32(abs(max(var_2.wxw, vec3<i32>(1i, var_2.x, 1i))), var_2.zyz), var_0);
}

