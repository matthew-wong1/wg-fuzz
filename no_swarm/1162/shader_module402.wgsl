struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    return ~vec2<i32>(~abs(-48653i) << (u_input.a.x % 32u), 42809i);
}

fn func_4(arg_0: Struct_4, arg_1: f32) -> bool {
    var var_0 = Struct_2(vec4<i32>(2147483647i, ~26777i, arg_0.a.x, -(~arg_0.a.x)), 0u);
    var_0 = Struct_2(var_0.a, ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 77693u, var_0.b, var_0.b), vec4<u32>(var_0.b, var_0.b, 37347u, u_input.a.x)), min(vec4<u32>(u_input.a.x, var_0.b, 0u, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 5902u, 64907u))), ~(u_input.a.x ^ 68387u)));
    let var_1 = Struct_4(((vec2<i32>(var_0.a.x, 0i) | var_0.a.xy) >> (u_input.a.xy % vec2<u32>(32u))) | -vec2<i32>(_wgslsmith_sub_i32(arg_0.a.x, arg_0.a.x), 0i));
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1, arg_1, arg_1), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1, 149f, 152f))))) - vec3<f32>(_wgslsmith_f_op_f32(-285f * 1108f), _wgslsmith_f_op_f32(f32(-1f) * -813f), -597f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, arg_1, 1137f))))))));
    var var_3 = var_2.yx;
    return select(firstLeadingBit(u_input.a.x) != _wgslsmith_sub_u32(0u, ~_wgslsmith_div_u32(42748u, var_0.b)), !(!all(vec4<bool>(false, true, false, true))), true);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 1509f) - 1504f) - 1212f), _wgslsmith_f_op_f32(f32(-1f) * -286f));
    let var_1 = _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(18872i, max(-1i, -3663i), _wgslsmith_clamp_i32(8266i, 7170i, 2147483647i))), ~1i), i32(-1i) * -(max(2147483647i, 0i) >> (1u % 32u)));
    var var_2 = !(!func_4(Struct_4(func_3(Struct_1(vec4<bool>(false, false, true, false), vec2<i32>(1i, -1i), vec3<f32>(var_0, 1652f, -852f)))), 430f));
    var_2 = !(!(true && (true && (var_0 <= 305f))));
    var_2 = !any(select(vec4<bool>(all(vec2<bool>(true, false)), true, any(vec2<bool>(true, false)), true), vec4<bool>(true, true, true, true), false));
    return Struct_1(vec4<bool>((_wgslsmith_dot_vec3_u32(u_input.a, u_input.a) << (u_input.a.x % 32u)) >= min(u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(4294967295u, 1u, 4294967295u))), all(vec4<bool>(false, true, any(vec2<bool>(true, true)), u_input.a.x > 44017u)), all(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), true), max(-vec2<i32>(-66346i, var_1) >> ((u_input.a.zz ^ u_input.a.zx) % vec2<u32>(32u)), ~vec2<i32>(var_1, 1i)) ^ -abs(~vec2<i32>(var_1, var_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0))), var_0) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-var_0), var_0, _wgslsmith_div_f32(var_0, 1426f))))));
}

fn func_1() -> Struct_3 {
    var var_0 = func_2();
    var var_1 = var_0.a.x;
    var_0 = Struct_1(!vec4<bool>(true, select(all(vec3<bool>(false, var_0.a.x, var_0.a.x)), true, any(var_0.a)), (var_0.b.x >= 21438i) & var_0.a.x, any(vec2<bool>(true, true))), var_0.b, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -710f, 333f), var_0.c))))));
    var var_2 = var_0.a.x;
    let var_3 = vec2<bool>(u_input.a.x != select(u_input.a.x, max(_wgslsmith_mod_u32(4294967295u, u_input.a.x), _wgslsmith_dot_vec3_u32(u_input.a, u_input.a)), any(vec3<bool>(var_0.a.x, true, true)) || any(var_0.a.xw)), false);
    return Struct_3(select(var_0.a.xxy, var_0.a.wyw, func_2().a.xzw), var_0.a.yzy);
}

fn func_5(arg_0: Struct_3) -> i32 {
    var var_0 = vec2<f32>(-254f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1038f + 869f), _wgslsmith_f_op_f32(select(-262f, -1325f, true))))))));
    let var_1 = Struct_1(vec4<bool>(all(func_2().a.yyz) && true, arg_0.a.x, arg_0.a.x, select(arg_0.a.x, func_1().a.x, arg_0.b.x)), -vec2<i32>(1i, 1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-936f, _wgslsmith_f_op_f32(min(-1000f, var_0.x)), _wgslsmith_f_op_f32(ceil(-1000f))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), 849f, var_0.x)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-var_1.c.xy);
    var var_3 = var_2.x;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_1.c.zz))))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(var_2, _wgslsmith_f_op_vec2_f32(vec2<f32>(902f, var_1.c.x) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1339f, var_2.x), var_2, false))), select(select(var_1.a.xy, arg_0.a.yx, vec2<bool>(arg_0.b.x, true)), select(vec2<bool>(false, arg_0.a.x), vec2<bool>(var_1.a.x, arg_0.a.x), arg_0.b.x), vec2<bool>(true, true)))))));
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -((func_5(func_1()) | 1i) ^ func_5(func_1()));
    let var_1 = Struct_4(abs(vec2<i32>(firstTrailingBit(1i), 1i)));
    var var_2 = select(vec2<bool>(!any(vec4<bool>(true, true, true, true)), any(select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), select(true, false, true)))), vec2<bool>(false, !any(vec2<bool>(true, true))), ((_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x) <= 1u) | false) & any(select(vec3<bool>(true, true, true), func_2().a.yww, false)));
    var var_3 = var_1;
    let var_4 = func_1();
    let var_5 = Struct_2(~vec4<i32>(2147483647i, abs(firstTrailingBit(var_3.a.x)), 1i, var_1.a.x), _wgslsmith_dot_vec2_u32(select(select(~u_input.a.xy, _wgslsmith_add_vec2_u32(u_input.a.yx, vec2<u32>(u_input.a.x, u_input.a.x)), var_4.a.zz), vec2<u32>(826u, u_input.a.x), any(func_2().a.xy)), select(u_input.a.zx, u_input.a.xy, func_1().b.xy)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(var_3.a.x, -(56426i ^ var_3.a.x)), ~vec3<i32>(abs(var_5.a.x << (12456u % 32u)), -13577i, ~(~var_5.a.x)));
}

