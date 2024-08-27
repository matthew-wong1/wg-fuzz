struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: bool;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: vec4<i32>) -> i32 {
    global1 = !(!all(arg_1));
    global0 = firstTrailingBit(abs(~_wgslsmith_clamp_i32(arg_2.x, 45393i, arg_2.x)));
    var var_0 = u_input.c;
    var var_1 = Struct_1(any(vec4<bool>(true, arg_1.x, true, arg_1.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-929f, -110f))), _wgslsmith_f_op_f32(step(484f, _wgslsmith_f_op_f32(f32(-1f) * -502f)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1412f, 781f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2278f, -503f), vec2<f32>(-1734f, -792f), vec2<bool>(arg_1.x, arg_1.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1394f, -482f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1010f, 3529f), vec2<f32>(-138f, -1135f), arg_1)), !arg_1.x)), any(!vec4<bool>(arg_1.x, arg_1.x, true, false))))), vec4<bool>(!arg_1.x == all(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true)), true, !arg_1.x, true), _wgslsmith_sub_i32(~u_input.b.x, -firstLeadingBit(min(arg_0, 1i))));
    var var_2 = vec3<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(select(~vec4<i32>(-1i, 2147483647i, arg_0, -2147483647i), vec4<i32>(arg_0, arg_0, var_1.d, -13992i), var_1.c)), vec4<i32>(1i, _wgslsmith_dot_vec4_i32(arg_2, arg_2 ^ arg_2), -_wgslsmith_add_i32(arg_0, var_1.d), ~(-86696i) & (var_1.d | arg_0))), arg_0, ~(-arg_2.x));
    return _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(_wgslsmith_mod_i32(1i, -33779i), firstTrailingBit(var_2.x), var_1.d, var_1.d) & arg_2), vec4<i32>(-1i) * -max(arg_2, ~arg_2));
}

fn func_2() -> vec3<bool> {
    global0 = _wgslsmith_add_i32(~1i, ~countOneBits(func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.b.x, 0i, -1i), vec4<i32>(0i, u_input.d, u_input.d, 39995i)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec4<i32>(u_input.b.x, 10851i, 38704i, 2147483647i))));
    global1 = true;
    return !vec3<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), false);
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: f32) -> f32 {
    let var_0 = arg_0.x;
    var var_1 = select(select(arg_0.wxx, vec3<bool>(~u_input.a > _wgslsmith_add_u32(6266u, u_input.c), select(false, true, true), (u_input.c > 769u) & arg_0.x), !select(arg_0.wwx, func_2(), arg_0.zzz)), !select(vec3<bool>(arg_0.x, true, var_0), vec3<bool>(arg_0.x, true, var_0), arg_0.zwx), true);
    global0 = u_input.b.x;
    var_1 = !select(select(arg_0.xzy, select(vec3<bool>(true, false, var_0), !arg_0.wzy, !var_0), vec3<bool>(arg_0.x, func_2().x, var_1.x)), vec3<bool>(true, true, false), select(!arg_0.zxy, vec3<bool>(arg_0.x, false, var_1.x), false));
    let var_2 = reverseBits(~abs(u_input.c)) > u_input.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2), arg_2)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-825f * 119f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(393f, -1000f), _wgslsmith_div_f32(-373f, -1047f), _wgslsmith_f_op_f32(select(-760f, _wgslsmith_f_op_f32(537f - -268f), true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-412f, _wgslsmith_f_op_f32(f32(-1f) * -1354f), _wgslsmith_f_op_f32(func_1(vec4<bool>(true, false, false, false), u_input.e, -220f)))), !(!(-4524i == u_input.e)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-245f, -521f, false))), _wgslsmith_div_f32(2015f, 1102f), -757f)), u_input.a >= ~firstTrailingBit(17775u)));
    let var_1 = Struct_1(1569f <= var_0.x, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2116f), _wgslsmith_f_op_f32(-var_0.x)), !vec4<bool>(!all(vec3<bool>(true, false, true)), true, true, all(vec3<bool>(true, true, false))), 0i);
    var var_2 = Struct_2(var_1);
    global0 = _wgslsmith_add_i32(~var_2.a.d, u_input.e);
    var var_3 = var_1;
    global0 = -1i;
    let var_4 = _wgslsmith_mult_u32(~reverseBits(u_input.a) << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 35728u | u_input.c, 0u, abs(4294967295u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.a, 35382u, u_input.a), vec4<u32>(u_input.c, 2383u, u_input.c, 4294967295u))) % 32u), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.c), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(129f, -1000f, 233f)), _wgslsmith_div_vec3_f32(var_0, var_0), vec3<bool>(var_1.a, var_3.a, var_1.c.x))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1258f), var_2.a.b.x, _wgslsmith_f_op_f32(func_1(vec4<bool>(true, var_3.a, false, var_3.a), 9451i, -1104f))))), var_1.b.x);
}

