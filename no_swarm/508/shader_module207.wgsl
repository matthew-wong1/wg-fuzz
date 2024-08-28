struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<bool>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
    c: f32,
}

struct Struct_5 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
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

var<private> global0: array<vec2<bool>, 31>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_5, arg_1: Struct_4) -> u32 {
    global0 = array<vec2<bool>, 31>();
    return 1u;
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> f32 {
    let var_0 = any(arg_1.b);
    var var_1 = 2147483647i | u_input.c.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.a.b), _wgslsmith_f_op_f32(arg_1.a.b + 1246f))), _wgslsmith_f_op_f32(select(1000f, -1912f, false)), _wgslsmith_f_op_f32(ceil(600f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_3.a.b, arg_3.a.b, arg_3.a.d))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.a.d, 1947f, arg_1.a.d)))))), vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_1.a.b)), _wgslsmith_f_op_f32(f32(-1f) * -425f), arg_3.a.b)));
    var var_3 = _wgslsmith_mod_i32(min(_wgslsmith_add_i32(abs(1i), -firstLeadingBit(1i)), arg_0), -51138i);
    var var_4 = Struct_3(all(select(arg_1.b, vec4<bool>(!arg_1.b.x, true, !arg_1.a.c.x, false), !select(vec4<bool>(arg_1.b.x, true, true, arg_3.a.c.x), arg_1.b, false))), ~firstLeadingBit(1u), all(!select(vec3<bool>(false, arg_1.b.x, var_0), select(arg_3.a.c, vec3<bool>(false, true, arg_3.a.c.x), vec3<bool>(arg_1.b.x, var_0, arg_1.a.c.x)), !var_0)));
    return 222f;
}

fn func_1() -> vec3<f32> {
    let var_0 = any(!select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), true));
    let var_1 = u_input.c.x;
    global0 = array<vec2<bool>, 31>();
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -462f);
    return _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(trunc(208f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(608f - -951f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_sub_i32(-23301i, 20981i), Struct_2(Struct_1(u_input.c.x, -770f, vec3<bool>(var_0, var_0, var_0), -1001f, u_input.c.x), vec4<bool>(false, var_0, true, true)), func_2(Struct_5(1480f, 1000f), Struct_4(vec2<f32>(-422f, -1000f), 668f, 369f)), Struct_2(Struct_1(-49895i, 445f, vec3<bool>(true, var_0, var_0), -1733f, -1i), vec4<bool>(var_0, false, true, var_0))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1669f + -704f), _wgslsmith_f_op_f32(1002f - 336f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-803f * 1628f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-608f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -2007f))) * _wgslsmith_f_op_f32(select(1f, -2357f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1087f)) - _wgslsmith_f_op_f32(955f * 1314f)) * _wgslsmith_f_op_f32(-382f + _wgslsmith_f_op_f32(441f - 702f)))));
    var_0 = _wgslsmith_f_op_vec3_f32(func_1());
    let var_1 = vec4<bool>(any(vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))) - 1113f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - _wgslsmith_f_op_f32(max(1538f, _wgslsmith_f_op_f32(f32(-1f) * -1646f)))), any(vec3<bool>(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)) <= _wgslsmith_f_op_f32(select(-910f, -1000f, false)), true, true)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true)) & true);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-352f - var_0.x) - _wgslsmith_f_op_f32(f32(-1f) * -307f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) + -665f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(exp2(var_0.x)))));
    var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1334f, 1300f, var_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -421f, -118f) * vec3<f32>(-1417f, var_0.x, 1401f)), select(var_1.zzz, vec3<bool>(var_1.x, false, var_1.x), var_1.zzz))))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(~1u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(52208u, u_input.b.x), vec2<u32>(u_input.b.x, 71030u))), vec3<u32>(u_input.b.x, 25331u, 17137u) ^ select(vec3<u32>(u_input.a, u_input.a, 72769u), vec3<u32>(u_input.b.x, u_input.a, 19581u), false)), var_1.x));
}

