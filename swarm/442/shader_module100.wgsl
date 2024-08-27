struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1440f, -754f, 2545f, 1347f))), vec4<f32>(1083f, -1105f, 1810f, -1536f), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), false))))), !all(vec3<bool>(true, true, true)));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(max(var_0.a, _wgslsmith_f_op_vec4_f32(-var_0.a))), var_0.b || true);
    let var_1 = select(select(vec4<bool>(!any(vec4<bool>(false, false, true, false)), false, var_0.b | false, all(vec2<bool>(true, true))), vec4<bool>(select(var_0.b & false, true, var_0.b), var_0.b, true, var_0.b), any(select(vec3<bool>(var_0.b, true, var_0.b), select(vec3<bool>(var_0.b, false, false), vec3<bool>(false, var_0.b, true), vec3<bool>(var_0.b, var_0.b, var_0.b)), true))), !vec4<bool>(true, !var_0.b, any(!vec3<bool>(false, false, var_0.b)), var_0.b), false);
    var var_2 = ~u_input.e.x;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-var_0.a))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_0.a.x, -1000f), _wgslsmith_f_op_f32(min(2211f, 1568f)), 620f, var_0.a.x)), vec4<bool>(!any(vec2<bool>(true, true)), false, true, false))), var_0.b);
    return _wgslsmith_mult_i32(u_input.d, u_input.d);
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * _wgslsmith_f_op_f32(210f + arg_0.x))))));
    var var_1 = select(_wgslsmith_clamp_vec3_i32(~(~(~u_input.b)), vec3<i32>(0i, ~func_3(), _wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, -1i, u_input.b.x), -u_input.b)), ~select(vec3<i32>(1i, 13636i, u_input.d), -u_input.b, vec3<bool>(true, true, true))), select(-(vec3<i32>(0i, 1i, u_input.d) ^ ~u_input.b), select(vec3<i32>(reverseBits(u_input.d), _wgslsmith_dot_vec3_i32(u_input.b, u_input.b), u_input.d), select(-vec3<i32>(0i, u_input.d, -2147483647i), select(u_input.b, u_input.b, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(true, false, true)), true), select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), true))), any(vec3<bool>(true, all(vec3<bool>(true, false, true)) & true, all(vec4<bool>(true, true, true, true)))));
    return 290f;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), arg_1)));
    let var_1 = arg_0;
    var var_2 = abs(-(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, -48578i, -2147483647i, u_input.b.x), vec4<i32>(u_input.d, 36887i, u_input.d, u_input.d)), firstLeadingBit(vec4<i32>(-28821i, u_input.b.x, u_input.b.x, u_input.d))) << (~u_input.e % vec4<u32>(32u))));
    let var_3 = _wgslsmith_f_op_f32(-1369f * -339f);
    let var_4 = Struct_1(vec4<f32>(-993f, -385f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-685f, 1130f))), -1000f), true);
    return Struct_1(arg_0.a, var_4.b);
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: bool) -> bool {
    let var_0 = func_4(Struct_1(vec4<f32>(arg_1, _wgslsmith_f_op_f32(min(-1028f, _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1138f, -459f, -1093f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1996f))))), _wgslsmith_div_u32(~1u, ~arg_0.x) >= u_input.a), arg_1);
    var var_1 = true;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)))), true);
    var var_3 = func_4(func_4(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_f_op_f32(abs(var_0.a.x)), arg_1, -1000f), !all(vec2<bool>(var_0.b, arg_2))), 1151f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_0.a.x, 1412f)))))));
    var_1 = true;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_div_f32(-326f, -176f), _wgslsmith_f_op_f32(-729f + 840f), -1000f) * vec4<f32>(_wgslsmith_div_f32(-1033f, -628f), -2153f, _wgslsmith_f_op_f32(-593f - -447f), -907f)))), false);
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_0.a)) * var_0.a))), select(true || var_0.b, true, func_1(vec4<u32>(max(4294967295u, 1u), 0u, u_input.e.x, u_input.a), -549f, var_0.b)));
    var_0 = func_4(func_4(func_4(func_4(Struct_1(vec4<f32>(-1286f, 587f, var_0.a.x, var_0.a.x), var_0.b), _wgslsmith_div_f32(-1072f, 1000f)), _wgslsmith_f_op_f32(step(113f, var_0.a.x))), -441f), -915f);
    let var_1 = _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(floor(var_0.a.x))));
    var var_2 = vec3<u32>(~(~u_input.a), 10630u, 1u);
    let var_3 = ~countOneBits(abs(u_input.d));
    let var_4 = any(select(!(!(!vec2<bool>(var_0.b, var_0.b))), vec2<bool>(true, true), !(!(!vec2<bool>(var_0.b, true)))));
    let var_5 = !(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.x, 1u, u_input.a, u_input.a), vec4<u32>(4294967295u, var_2.x, 33229u, 20375u))) >= abs(var_2.x));
    var_0 = func_4(func_4(Struct_1(var_0.a, var_0.b), var_0.a.x), _wgslsmith_f_op_f32(-var_1));
    let x = u_input.a;
    s_output = StorageBuffer(4141u, _wgslsmith_mod_u32(4294967295u, 2370u >> (var_2.x % 32u)), countOneBits(7666u));
}

