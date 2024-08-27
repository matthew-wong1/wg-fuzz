struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = -_wgslsmith_clamp_i32(u_input.a.x, max(-17470i, _wgslsmith_sub_i32(u_input.a.x & u_input.b.x, ~arg_0)), _wgslsmith_mod_i32(1i, _wgslsmith_add_i32(arg_0 >> (u_input.c % 32u), u_input.b.x)));
    let var_1 = abs(max(abs(~max(1i, -1i)), ~arg_0));
    let var_2 = !(arg_1 == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1, arg_1)))));
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1865f), -143f) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1706f, arg_1), _wgslsmith_div_f32(arg_1, arg_1), u_input.d < u_input.c))) - arg_1)));
    var var_4 = -u_input.b;
    return arg_2;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = Struct_1(!arg_1.a || arg_1.a);
    let var_1 = vec2<u32>(~(~max(0u, _wgslsmith_mult_u32(0u, 0u))), ~u_input.d);
    var var_2 = -1607f;
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(463f, 1157f, 240f) + vec3<f32>(-1268f, -298f, 931f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(478f, -1088f, -1625f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(150f, -1087f, -1000f))))))));
    let var_4 = func_2(-1i, 1000f, arg_2.a);
    return vec2<bool>(select(arg_2.a.a, any(select(select(vec3<bool>(arg_2.a.a, var_4.a, arg_1.a), vec3<bool>(var_0.a, var_0.a, arg_1.a), vec3<bool>(var_4.a, arg_0, true)), vec3<bool>(var_4.a, false, var_4.a), select(vec3<bool>(arg_1.a, arg_0, false), vec3<bool>(arg_1.a, false, arg_2.a.a), true))), !var_0.a), var_0.a);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(true);
    var var_1 = u_input.d;
    var var_2 = select(vec2<bool>(!(_wgslsmith_f_op_f32(sign(297f)) >= _wgslsmith_f_op_f32(-1110f + 878f)), false), !vec2<bool>(select(var_0.a, var_0.a, var_0.a) && true, any(select(vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(false, var_0.a, true)))), !select(vec2<bool>(true, true), func_3(true, func_2(-73549i, -461f, Struct_1(var_0.a)), Struct_2(Struct_1(var_0.a), 77573u)), vec2<bool>(var_0.a && var_0.a, var_0.a)));
    var_1 = u_input.c;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-206f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-249f + 1000f), _wgslsmith_f_op_f32(abs(-1068f))), u_input.b.x == _wgslsmith_add_i32(-1570i, u_input.a.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1309f)), 459f)))));
    return func_2(max(u_input.a.x, 1i), _wgslsmith_f_op_f32(340f - -1944f), func_2(1i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(112f, 482f, true)) * _wgslsmith_f_op_f32(select(287f, -353f, true))))), func_2(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(56556i, -2147483647i, u_input.b.x), u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1371f + 606f) + _wgslsmith_f_op_f32(select(-408f, -391f, false))), Struct_1(func_3(var_2.x, Struct_1(var_2.x), Struct_2(Struct_1(var_2.x), u_input.c)).x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(832f - 403f), _wgslsmith_f_op_f32(floor(-299f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1936f) * -1000f))), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(686f * -266f) + _wgslsmith_f_op_f32(f32(-1f) * -214f)), false || all(vec4<bool>(var_0.a, true, false, var_0.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-490f * _wgslsmith_f_op_f32(step(500f, -1833f))) + _wgslsmith_f_op_f32(-526f - -595f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1398f - -344f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

