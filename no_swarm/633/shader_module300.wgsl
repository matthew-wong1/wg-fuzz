struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: f32 = -1663f;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> vec2<bool> {
    var var_0 = ~abs(-(~u_input.a.x & -40134i));
    return !(!vec2<bool>(true, _wgslsmith_f_op_f32(-1117f - -497f) != _wgslsmith_f_op_f32(exp2(global0.x))));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(1i, _wgslsmith_clamp_i32(-4369i, u_input.a.x, u_input.a.x) | -1i, _wgslsmith_div_i32(21217i, -u_input.a.x)), (1i & ~u_input.a.x) ^ ~(~0i)));
    let var_1 = select(select(!select(!vec3<bool>(true, arg_0, arg_0), !vec3<bool>(arg_0, arg_0, false), true), vec3<bool>(true && (u_input.a.x >= u_input.a.x), arg_0, arg_0), !arg_0), !(!(!vec3<bool>(arg_0, arg_0, true))), vec3<bool>(!(arg_0 & func_2().x), (-u_input.a.x >= u_input.a.x) & arg_0, !select(all(vec3<bool>(arg_0, arg_0, arg_0)), false, arg_0)));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global0.zyy)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1140f - 1000f) * _wgslsmith_f_op_f32(ceil(-1738f))), -770f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * -585f))), vec3<f32>(-1347f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global0.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 386f))))), !vec3<bool>(func_2().x | false, select(var_1.x, 768f < global0.x, false), !(!arg_0))));
    var var_3 = _wgslsmith_f_op_f32(floor(1213f));
    var var_4 = (reverseBits(u_input.a.x) == _wgslsmith_div_i32(firstTrailingBit(-2147483647i), 0i | u_input.a.x)) | true;
    return 1u;
}

fn func_1() -> u32 {
    var var_0 = select(select(select(func_2(), vec2<bool>(false, true), func_2()), func_2(), true), select(vec2<bool>(true, true), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), false), func_2(), any(vec3<bool>(true, true, true))), true), !func_2());
    var var_1 = reverseBits(_wgslsmith_add_u32(_wgslsmith_div_u32(61775u << (func_3(var_0.x) % 32u), ~reverseBits(107097u)), ~82185u));
    var_1 = 1u;
    let var_2 = vec4<i32>(1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(~u_input.a.xzw, vec3<i32>(1i, u_input.a.x, 1i)), ~(~u_input.a.x)) ^ -_wgslsmith_mult_i32(1i, -1i >> (1u % 32u)), ~_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), i32(-1i) * -u_input.a.x), firstLeadingBit(-(~13708i)));
    var var_3 = -1000f;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -1435f;
    let var_0 = ~(vec4<u32>(~_wgslsmith_mult_u32(1u, 4294967295u), select(_wgslsmith_sub_u32(30754u, 1u), 6914u, true), firstLeadingBit(_wgslsmith_add_u32(53316u, 1u)), _wgslsmith_div_u32(func_1(), ~33898u)) ^ (vec4<u32>(~6545u, ~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 60022u, 24960u), vec3<u32>(4294967295u, 137857u, 4294967295u)), 4294967295u) & vec4<u32>(1u, 1u, 4294967295u, 16693u)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(global0.x - -1630f), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(round(global0.x)))))));
    let var_2 = Struct_1(true, ~_wgslsmith_div_u32(~var_0.x, 1u), global0.yzy, vec2<bool>(false, !(max(u_input.a.x, u_input.a.x) < _wgslsmith_dot_vec4_i32(u_input.a, u_input.a))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1267f)) * _wgslsmith_f_op_f32(619f - _wgslsmith_f_op_f32(-global0.x)));
    let var_3 = vec4<bool>(var_2.a, var_2.b < _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x ^ var_2.b, _wgslsmith_add_u32(var_2.b, 4294967295u), 0u), var_0.www), true, any(select(vec4<bool>(var_2.a, func_2().x, true, all(var_2.d)), select(!vec4<bool>(var_2.d.x, var_2.a, var_2.d.x, var_2.d.x), select(vec4<bool>(false, false, false, false), vec4<bool>(var_2.a, var_2.d.x, true, true), vec4<bool>(var_2.d.x, var_2.a, false, var_2.a)), true), vec4<bool>(false, var_2.d.x, 381f >= var_2.c.x, true))));
    let var_4 = vec2<bool>(var_3.x, var_3.x);
    var var_5 = firstLeadingBit(firstTrailingBit(32202u));
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.a.x, u_input.a.x), u_input.a.x, var_2.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1754f)) + -882f), -516f, var_4.x)))), u_input.a.x);
}

