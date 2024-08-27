struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: bool) -> u32 {
    let var_0 = true;
    var var_1 = 52254u;
    var var_2 = u_input.a.x;
    let var_3 = 1148f;
    let var_4 = !(!var_0);
    return reverseBits(_wgslsmith_mod_u32(4294967295u, 79680u));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = Struct_1(~vec2<u32>(firstLeadingBit(func_3(Struct_1(arg_1.a, arg_1.a.x), vec2<u32>(19022u, 100128u), arg_1, false)), ~arg_1.b), 0u ^ ~_wgslsmith_mod_u32(1u, arg_1.b));
    let var_1 = arg_1;
    let var_2 = Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(min(firstTrailingBit(vec2<u32>(arg_1.b, arg_1.b)), var_0.a), var_1.a), ~_wgslsmith_add_u32(30644u, var_0.a.x)), _wgslsmith_dot_vec2_u32(max(_wgslsmith_mult_vec2_u32(~vec2<u32>(arg_1.b, 37397u), ~vec2<u32>(8228u, 3522u)), _wgslsmith_mult_vec2_u32(var_1.a, vec2<u32>(9053u, arg_1.a.x))), ~(arg_1.a | _wgslsmith_add_vec2_u32(var_0.a, vec2<u32>(var_1.a.x, u_input.b)))));
    let var_3 = 6018u;
    let var_4 = all(select(vec2<bool>(all(vec2<bool>(true, true)), any(vec2<bool>(false, false))), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false), any(vec2<bool>(true, false))), vec2<bool>(true, true), all(vec4<bool>(true, true, true, true))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1428f, arg_0) * vec2<f32>(arg_0, arg_0)), var_4))))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))))));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: bool) -> bool {
    var var_0 = arg_0;
    var var_1 = ~(-vec2<i32>(u_input.a.x, u_input.a.x));
    var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(1097f * 198f)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-964f, 1261f), -793f)) * 646f)));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(1f, arg_0))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-982f, 1144f, true)))), _wgslsmith_f_op_f32(sign(-1967f)))), _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(ceil(508f)), arg_0)), select(vec2<bool>(arg_3, _wgslsmith_mult_i32(14286i, arg_2) >= (i32(-1i) * -2147483647i)), select(select(vec2<bool>(true, arg_3), vec2<bool>(true, true), true), !vec2<bool>(arg_3, arg_3), select(any(vec4<bool>(arg_1, false, arg_1, arg_1)), all(vec2<bool>(true, true)), any(vec4<bool>(arg_1, arg_3, arg_3, arg_1)))), true)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec3<bool>(!func_1(Struct_1(vec2<u32>(u_input.b, 4294967295u), 9864u), true, u_input.a.x, false), true, true), vec3<bool>(false || (u_input.a.x >= u_input.a.x), all(vec3<bool>(true, false, false)), false), ((-2147483647i <= u_input.a.x) && true) & true);
    var var_1 = Struct_1(~vec2<u32>(1u & _wgslsmith_sub_u32(u_input.b, 55147u), ~(~0u)), 46193u);
    var var_2 = (func_3(Struct_1(var_1.a, 1u), var_1.a, Struct_1(~vec2<u32>(1u, 4849u), var_1.b), true) << (1u % 32u)) != u_input.b;
    var var_3 = select(-vec2<i32>(-abs(-50981i), 2147483647i), select(vec2<i32>(-6995i, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a) & _wgslsmith_add_i32(-1i, u_input.a.x)), abs(vec2<i32>(-1i) * -u_input.a), vec2<bool>(true, 0i > firstLeadingBit(u_input.a.x))), var_0.x);
    var var_4 = vec2<bool>(true, (abs(-var_3.x) < -23666i) && all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, var_0.x), select(true, var_0.x, var_0.x))));
    var var_5 = false;
    var var_6 = Struct_1(~var_1.a, _wgslsmith_clamp_u32(var_1.a.x, var_1.a.x, 4294967295u));
    let var_7 = var_1.a.x;
    let var_8 = _wgslsmith_f_op_f32(floor(730f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-_wgslsmith_clamp_i32(10273i, 0i, -1i), ~(-var_3.x), -(0i & u_input.a.x) | u_input.a.x), var_8);
}

