struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: i32) -> f32 {
    return 313f;
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, ~1u, max(firstLeadingBit(1u), min(0u, 1u))), ~select(vec3<u32>(14252u, 13117u, 0u), vec3<u32>(51365u, 0u, 1u), false) ^ abs(~vec3<u32>(109583u, 1u, 1u))), vec3<u32>(1u, 1u, 1u));
    var var_1 = 872f;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(970f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1507f) - _wgslsmith_div_f32(534f, 602f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1921f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -543f) - _wgslsmith_f_op_f32(-453f + -284f))))));
    var_2 = vec2<f32>(var_2.x, var_2.x);
    let var_3 = _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(15883i, 56353i, 1i, 1i) | vec4<i32>(-8202i, u_input.a.x, u_input.a.x, u_input.a.x), firstTrailingBit(vec4<i32>(1i, u_input.a.x, 2147483647i, 42372i)))), u_input.a.x) <= -26586i;
    return 4294967295u;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-601f + -762f)), -1000f), _wgslsmith_f_op_f32(func_2(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), firstLeadingBit(4294967295u), -12057i))));
    var var_1 = vec4<u32>(1u, (1u >> (1u % 32u)) >> (_wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(1u, 0u, 4294967295u)), vec3<u32>(func_3(), min(4294967295u, 12185u), 1u)) % 32u), ~(~1u), 1u);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a.x - 629f), -1512f) - _wgslsmith_f_op_f32(floor(-1509f)))));
    var var_1 = arg_0;
    var var_2 = -(~vec4<i32>(u_input.a.x, u_input.a.x, firstTrailingBit(_wgslsmith_div_i32(1i, 2147483647i)), -u_input.a.x));
    let var_3 = -275f;
    let var_4 = min(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 10523u), abs(vec2<u32>(878u, 29539u))), 84394u) >= _wgslsmith_dot_vec3_u32(vec3<u32>(9128u, 24962u, ~24376u), vec3<u32>(1u, 1u, 1u));
    return func_1();
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> StorageBuffer {
    var var_0 = select(vec4<bool>(all(select(vec3<bool>(arg_3, arg_3, false), vec3<bool>(arg_3, arg_3, false), vec3<bool>(false, arg_1, true))) | (true | !arg_3), arg_1 & arg_1, all(!(!vec4<bool>(arg_3, arg_3, false, false))), arg_1), !(!vec4<bool>(arg_3, !arg_1, false, arg_1 & arg_3)), vec4<bool>(!(!arg_3 || (arg_1 | false)), select(all(select(vec3<bool>(arg_3, arg_1, arg_1), vec3<bool>(false, arg_1, false), vec3<bool>(true, true, arg_3))), all(!vec4<bool>(false, arg_1, arg_1, arg_1)), any(vec4<bool>(false, arg_1, arg_1, true))), true, all(vec4<bool>(false, false, !arg_1, all(vec4<bool>(true, arg_3, arg_1, arg_1))))));
    var var_1 = ~(~u_input.a);
    var var_2 = true;
    let var_3 = var_1.x;
    let var_4 = _wgslsmith_mult_vec2_u32(~vec2<u32>(87823u, ~(~81294u)), _wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 1u), select(vec2<u32>(1u, 1u), firstTrailingBit(~vec2<u32>(42771u, 4294967295u)), arg_1)));
    return StorageBuffer(firstLeadingBit(var_4.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(reverseBits(u_input.a.x), u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec3_i32(firstLeadingBit(~vec3<i32>(u_input.a.x, u_input.a.x, -29473i)), ~vec3<i32>(-2147483647i, -2147483647i, u_input.a.x))));
    let x = u_input.a;
    s_output = func_5(func_4(func_1(), func_1()), all(vec2<bool>(true, true)) && true, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-736f, 410f), vec2<f32>(1690f, -1150f)))), false);
}

