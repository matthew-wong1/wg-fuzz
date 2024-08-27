struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> i32 {
    let var_0 = _wgslsmith_mult_u32(abs(1u), ~(u_input.a & abs(_wgslsmith_mult_u32(arg_1, 4294967295u))));
    let var_1 = 0u;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.a)))), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a), -1231f))));
    var var_3 = all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    let var_4 = 499f;
    return -2147483647i;
}

fn func_4(arg_0: i32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-906f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, -761f)) - -2133f))), i32(-1i) * -abs(-arg_0));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a + var_0.a))), -(_wgslsmith_dot_vec3_i32(u_input.b.yyx, ~u_input.b.xxy) | -2147483647i));
    var_1 = Struct_1(var_0.a, _wgslsmith_dot_vec4_i32(reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, arg_0, var_0.b, var_0.b), u_input.b, min(vec4<i32>(1i, -2147483647i, 18040i, arg_0), u_input.b))), vec4<i32>(max(-1i, 2147483647i), _wgslsmith_add_i32(_wgslsmith_mod_i32(arg_0, -12749i), ~var_1.b), i32(-1i) * -1i, ~_wgslsmith_add_i32(43451i, var_0.b))));
    var_0 = Struct_1(587f, _wgslsmith_clamp_i32(min(17513i, arg_0), -26033i, -1i));
    var var_2 = u_input.b.yx;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a * var_1.a))))), _wgslsmith_f_op_f32(-217f + _wgslsmith_f_op_f32(328f * _wgslsmith_f_op_f32(-var_0.a)))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(-func_3(arg_2, 21833u))) + -231f), arg_2.b);
    let var_1 = !(!vec4<bool>(true, select(any(vec2<bool>(true, true)), true, true), true, _wgslsmith_mod_u32(u_input.c, u_input.c) > _wgslsmith_div_u32(arg_3, arg_3)));
    var var_2 = Struct_1(288f, u_input.b.x);
    let var_3 = var_1;
    let var_4 = var_1.x;
    return u_input.c;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(22007u, 1u, 0u), vec3<u32>(u_input.c, u_input.a, u_input.a))), vec2<u32>(1u, 1u)) >> (max(_wgslsmith_mod_vec2_u32((vec2<u32>(u_input.c, u_input.c) | vec2<u32>(64011u, u_input.c)) ^ countOneBits(vec2<u32>(0u, u_input.a)), ~select(vec2<u32>(35138u, u_input.a), vec2<u32>(1u, u_input.c), vec2<bool>(true, true))), abs(vec2<u32>(u_input.a, 20386u)) & ~(vec2<u32>(59387u, 14265u) & vec2<u32>(u_input.c, u_input.a))) % vec2<u32>(32u));
    let var_1 = true;
    let var_2 = Struct_1(-1000f, -2147483647i);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(178f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.a, 1000f))) - _wgslsmith_f_op_f32(1f + -1109f))) - var_2.a);
    var var_4 = firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(~37341u, _wgslsmith_mod_u32(~var_0.x, u_input.c), _wgslsmith_add_u32(u_input.c, var_0.x) >> (var_0.x % 32u)), _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(0u, 69715u, var_0.x) ^ vec3<u32>(55453u, 2798u, u_input.a)), vec3<u32>(~u_input.a, _wgslsmith_clamp_u32(33477u, 103041u, u_input.c), u_input.c)), ~vec3<u32>(func_2(var_2.b, var_2, var_2, u_input.a), var_0.x, firstLeadingBit(var_0.x))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(763f, -724f), var_2.a) - -1271f)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(-38544i, ~(-25838i)) & select(-u_input.b.x, reverseBits(16909i), true), 2147483647i << (firstLeadingBit(u_input.a) % 32u), 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!all(vec2<bool>(true, true)));
    let var_1 = func_1();
    let var_2 = true;
    let var_3 = _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 43197u), select(vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.c, 1u), false)), ~(~vec2<u32>(u_input.c, 51618u)), _wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(u_input.c, u_input.a)), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 58113u), vec2<u32>(u_input.a, u_input.a)))), ~vec2<u32>(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(69477u, 49776u, u_input.a, 25173u), vec4<u32>(u_input.a, 32952u, u_input.c, u_input.a))), reverseBits(0u)));
    var var_4 = ~_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a, _wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, 0u, u_input.c), var_3 ^ u_input.c)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_3, var_3, 1u) ^ vec4<u32>(4294967295u, 0u, 1u, var_3), vec4<u32>(u_input.a, u_input.c, 43934u, u_input.a)));
    let var_5 = Struct_1(var_1.a, abs(~1i));
    let var_6 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.a, _wgslsmith_f_op_f32(abs(336f)), _wgslsmith_f_op_f32(min(var_1.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_5.a), var_5.a)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_5.a), var_5.a, all(!vec3<bool>(var_2, false, true))))));
    let var_7 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(select(~_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(24120u, 24051u)), ~vec2<u32>(var_3, 0u)), ~(abs(vec2<u32>(120245u, u_input.c)) ^ ~vec2<u32>(1u, var_3)), !vec2<bool>(true, var_0)));
}

