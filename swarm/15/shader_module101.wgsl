struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -592f;

var<private> global1: Struct_1;

var<private> global2: vec4<u32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<u32>) -> vec4<f32> {
    global1 = Struct_1(_wgslsmith_dot_vec3_u32(arg_0, ~(~arg_0)), _wgslsmith_add_i32(u_input.c, (u_input.c >> (_wgslsmith_add_u32(u_input.a, global1.a) % 32u)) << (_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, 58693u), arg_0.x ^ global2.x, firstLeadingBit(arg_0.x)) % 32u)), 587f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-361f, global1.d)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(649f, -1000f)))) - -1117f), _wgslsmith_f_op_f32(select(global1.c, -1000f, true))));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.d, 108f, 1769f, global1.e))), vec4<f32>(-626f, global1.c, global1.d, 3000f)))));
    var var_1 = global2.yxz;
    let var_2 = vec3<u32>(global1.a, ~1u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(firstTrailingBit(~1u), ~(arg_0.x << (arg_0.x % 32u))), ~_wgslsmith_div_u32(u_input.a, _wgslsmith_clamp_u32(0u, var_1.x, 4294967295u))));
    var var_3 = false;
    return vec4<f32>(_wgslsmith_f_op_f32(global1.e + _wgslsmith_f_op_f32(var_0.x * -521f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2553f, 325f)) * global1.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1636f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, -1000f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1126f + -1028f)))), -792f));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<f32>) -> vec4<u32> {
    global2 = abs(_wgslsmith_sub_vec4_u32(vec4<u32>(61012u, 1u, 31378u, global1.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(global2.x, global1.a, global2.x, u_input.b), vec4<u32>(7073u, 0u, global1.a, global2.x), vec4<u32>(90016u, 9158u, 1u, global1.a))) & _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, global2.x, global2.x), min(vec4<u32>(global2.x, u_input.a, global2.x, 34955u), vec4<u32>(4294967295u, 4294967295u, 33690u, u_input.a)))) ^ select(reverseBits(vec4<u32>(4294967295u, u_input.a, global2.x, global1.a) << (vec4<u32>(global1.a, 38881u, 24747u, u_input.b) % vec4<u32>(32u))), ~(~(~vec4<u32>(u_input.b, global2.x, global2.x, 4294967295u))), select(vec4<bool>(all(vec4<bool>(false, true, false, true)), any(vec3<bool>(true, false, false)), false, all(vec3<bool>(false, false, false))), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false), true), true));
    global2 = select(vec4<u32>(~(~0u), ~min(~u_input.a, _wgslsmith_mult_u32(u_input.a, u_input.b)), abs(u_input.a), ~4294967295u), (_wgslsmith_clamp_vec4_u32(~vec4<u32>(global2.x, 11062u, global1.a, global2.x), ~vec4<u32>(1u, u_input.b, 4294967295u, global2.x), vec4<u32>(1u, 1u, global1.a, 0u)) | vec4<u32>(~global2.x, _wgslsmith_div_u32(u_input.b, 1917u), u_input.a, 1u)) | ~(~vec4<u32>(u_input.a, 0u, u_input.b, global2.x)), false);
    let var_0 = ~(-82163i);
    var var_1 = global2.ww;
    global0 = -831f;
    return ~_wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(~vec4<u32>(global1.a, var_1.x, var_1.x, var_1.x), vec4<u32>(43614u, var_1.x, 0u, 45020u) & vec4<u32>(46167u, 65439u, 57221u, 58261u)), vec4<u32>(4294967295u, ~_wgslsmith_mult_u32(1u, 5324u), 81235u, ~global1.a >> (50873u % 32u)));
}

fn func_2() -> Struct_1 {
    global2 = select(vec4<u32>(global2.x, countOneBits(global2.x), _wgslsmith_sub_u32(11123u, select(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 40197u, 4294967295u, global1.a), vec4<u32>(4294967295u, u_input.b, global2.x, u_input.b)), global1.a, true)), ~_wgslsmith_dot_vec2_u32(global2.xz, global2.ww)), reverseBits(func_4(vec4<i32>(-42577i, 15351i, 0i, 43131i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(global2.xxy))))), select(any(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), all(vec4<bool>(true, true, false, false)))), !(!select(true, true, true)), true));
    global1 = Struct_1(u_input.b, 2147483647i, global1.d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-850f, _wgslsmith_div_f32(global1.e, 1610f))) * _wgslsmith_f_op_f32(max(-526f, _wgslsmith_div_f32(-217f, global1.e)))), -910f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.e))));
    global2 = ~(~(~_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(global2.x, global2.x, global1.a, u_input.b)), min(vec4<u32>(1u, u_input.a, global2.x, global1.a), vec4<u32>(4294967295u, global1.a, 63585u, global2.x)))));
    var var_0 = Struct_1(~global1.a, abs(u_input.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-954f + global1.c))) - -1041f), _wgslsmith_f_op_f32(round(global1.c)), global1.d);
    global2 = ~abs(vec4<u32>(1u, 1u, _wgslsmith_clamp_u32(global2.x, _wgslsmith_mult_u32(1u, 51365u), countOneBits(2694u)), ~1u));
    return Struct_1(u_input.a, 1i, global1.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(990f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -798f), _wgslsmith_f_op_f32(trunc(795f)), true)))), -829f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c, 1030f) - _wgslsmith_f_op_f32(floor(101f))))));
}

fn func_5(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = arg_1.yy;
    global2 = vec4<u32>(11832u, 0u << (countOneBits(17056u) % 32u), u_input.a ^ u_input.b, global1.a << (arg_3.a % 32u));
    var var_1 = Struct_1(firstLeadingBit(firstLeadingBit(73630u)), arg_3.b, arg_2.e, -608f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.d))) * global1.d), arg_2.c));
    var var_2 = arg_2.e;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.e));
    return global2.x;
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_1(func_5(all(vec4<bool>(true, true, all(vec4<bool>(true, false, true, false)), global1.d < global1.e)), vec3<bool>(!any(vec4<bool>(false, true, true, true)), false, true), func_2(), Struct_1(global1.a, min(~0i, firstTrailingBit(-2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-664f, global1.d)), global1.d, global1.e)), 1i, _wgslsmith_f_op_vec4_f32(func_3(max(abs(global2.zyz | vec3<u32>(global1.a, global2.x, 13691u)), _wgslsmith_add_vec3_u32(~vec3<u32>(28150u, u_input.b, global1.a), ~vec3<u32>(u_input.b, global1.a, global1.a))))).x, global1.e, -316f);
    var var_1 = func_2();
    var var_2 = Struct_1(~(u_input.b ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(28728u, 0u, 1u, 0u), vec4<u32>(global1.a, u_input.b, 4294967295u, 15418u))), _wgslsmith_sub_i32(-_wgslsmith_sub_i32(-2147483647i & global1.b, -1i), 10410i), 1053f, _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -535f), true)), var_1.e);
    let var_3 = Struct_1(firstLeadingBit(~var_2.a), _wgslsmith_clamp_i32(-2147483647i, var_2.b, _wgslsmith_clamp_i32(-var_0.b, _wgslsmith_add_i32(u_input.c, 19774i), -44815i)), -1066f, 854f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c * -250f), _wgslsmith_f_op_f32(trunc(-1083f))))));
    let var_4 = Struct_1(var_1.a, 41244i, global1.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.c, _wgslsmith_f_op_f32(global1.e + 565f))), -251f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d + _wgslsmith_f_op_f32(var_2.e - var_1.d)) - _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global1.a, var_1.a, 42868u), vec3<u32>(2858u, var_3.a, 31108u)), ~global2.zyy, vec3<u32>(21728u, 1u, var_3.a) ^ global2.yxy))).x));
    return StorageBuffer(_wgslsmith_dot_vec4_i32(vec4<i32>((i32(-1i) * -2147483647i) | var_0.b, 0i, 2147483647i, func_2().b), ~firstTrailingBit(abs(vec4<i32>(var_1.b, -2147483647i, global1.b, 25042i)))), var_1.c, ~(vec4<u32>(func_4(vec4<i32>(var_0.b, var_1.b, var_1.b, var_1.b), vec4<f32>(733f, 1354f, global1.e, 2528f)).x, global1.a, ~u_input.b, ~u_input.a) ^ vec4<u32>(_wgslsmith_sub_u32(var_3.a, 69836u), ~var_4.a, _wgslsmith_clamp_u32(var_3.a, 4294967295u, 20639u), ~global2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

