struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(18593i, -1i), 1u, 50745u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0 - 577f))), _wgslsmith_f_op_f32(ceil(-258f))), arg_0));
    let var_1 = u_input.b.x;
    let var_2 = vec3<u32>(~2640u, ~var_1, 4294967295u);
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1876f) + vec2<f32>(var_0.x, 1220f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-401f, var_0.x), vec2<f32>(var_0.x, arg_0))), vec2<f32>(_wgslsmith_f_op_f32(var_0.x + arg_0), _wgslsmith_div_f32(var_0.x, arg_0)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, 1362f), vec2<f32>(arg_0, arg_0)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, 1475f)) * _wgslsmith_div_vec2_f32(vec2<f32>(1036f, -1999f), vec2<f32>(661f, arg_0))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-259f, 896f) * vec2<f32>(var_0.x, var_0.x)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0, -493f), vec2<f32>(var_0.x, -221f)))))));
    var var_3 = arg_3;
    return !((all(vec4<bool>(true, true, true, true)) && all(vec4<bool>(false, false, false, false))) | any(vec3<bool>(true, true, true)));
}

fn func_3() -> vec2<i32> {
    var var_0 = (abs(~(~global0.a.x)) < min(-_wgslsmith_sub_i32(38734i, 0i), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-40263i, global0.a.x), vec2<i32>(u_input.a.x, u_input.a.x)), _wgslsmith_mod_i32(-2147483647i, 9162i)))) != any(vec3<bool>(any(vec4<bool>(false, false, true, false)) & true, all(vec3<bool>(true, true, true)), false));
    let var_1 = all(vec3<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true)))), !(true | func_1(-991f, Struct_1(vec2<i32>(-2147483647i, -2147483647i), 0u, global0.b), global0.a.x, Struct_1(u_input.a.xz, u_input.b.x, global0.b))), true));
    var_0 = false;
    var var_2 = true;
    let var_3 = !vec4<bool>(global0.a.x < _wgslsmith_clamp_i32(-11335i, ~23225i, select(-1i, u_input.a.x, var_1)), !any(vec2<bool>(var_1, var_1)), false, 1u > abs(~u_input.c));
    return global0.a;
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    global0 = Struct_1(abs(-_wgslsmith_mult_vec2_i32(abs(u_input.a.xz), func_3())), ~10909u, u_input.b.x << ((global0.c | u_input.c) % 32u));
    let var_0 = u_input.a.x;
    var var_1 = true;
    var var_2 = _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(max(1863f, _wgslsmith_div_f32(arg_0.x, arg_0.x))))) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1069f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x)))), 1000f));
    var var_3 = Struct_1(vec2<i32>(var_0, -21274i), u_input.d << (~1u % 32u), 1u);
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(1084f)), _wgslsmith_f_op_f32(trunc(-716f)), -789f, -1000f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(452f, 1009f, -334f, 932f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 183f, -1620f, -496f) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-147f, -2164f, 117f, 871f)))))), vec4<bool>(any(vec2<bool>(true, false)), true, true, func_1(-765f, Struct_1(u_input.a.zx, u_input.c, u_input.c), _wgslsmith_dot_vec3_i32(vec3<i32>(-20471i, 1i, 3949i), u_input.a), Struct_1(vec2<i32>(global0.a.x, u_input.a.x), u_input.d, global0.c)))))));
    let x = u_input.a;
    s_output = StorageBuffer(13364i, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.x, 338f), _wgslsmith_f_op_f32(func_2(vec3<f32>(var_0.x, var_0.x, var_0.x))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-235f, 1350f))))))), var_0.zxz, var_0.zxy);
}

