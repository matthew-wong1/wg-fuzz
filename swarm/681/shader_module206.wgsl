struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec3<u32>, arg_3: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -262f), 114f) - arg_0)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0 + arg_0))), true));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, var_0, var_0)))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, arg_0, -648f), _wgslsmith_div_vec3_f32(vec3<f32>(var_0, arg_0, arg_0), _wgslsmith_div_vec3_f32(vec3<f32>(-540f, arg_0, arg_0), vec3<f32>(var_0, arg_0, var_0))), vec3<bool>(false, any(vec3<bool>(arg_3.x, arg_3.x, arg_3.x)), true)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1611f * -326f))), 1u, select(vec2<bool>(!arg_3.x, !arg_3.x == (u_input.c.x >= arg_1)), vec2<bool>(!(!arg_3.x), all(arg_3.xz)), !vec2<bool>(true, arg_3.x)));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2046f, var_1.a.x, var_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_1.b, 104f)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-315f, arg_0, var_1.b)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - 1874f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(613f * arg_0) * _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(abs(arg_0)))), var_1.b, countOneBits(1u), select(vec2<bool>(true, false), select(var_1.d, !vec2<bool>(var_1.d.x, true), vec2<bool>(all(vec2<bool>(var_1.d.x, arg_3.x)), !arg_3.x)), !(!(var_1.c < arg_1))));
    var var_2 = _wgslsmith_add_vec2_u32(countOneBits(~(~arg_2.yx)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, arg_1) ^ u_input.b.xz, _wgslsmith_clamp_vec2_u32(arg_2.yy, vec2<u32>(1u, 6494u), vec2<u32>(var_1.c, 41105u))) & vec2<u32>(_wgslsmith_mult_u32(u_input.a, arg_2.x & var_1.c), _wgslsmith_add_u32(arg_2.x, ~arg_1)));
    let var_3 = u_input.e.zxx;
    return arg_0;
}

fn func_2() -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1018f), -842f)), _wgslsmith_f_op_f32(f32(-1f) * -355f))), _wgslsmith_f_op_f32(349f - -436f)), 1395f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -813f)), 123f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(3027f + _wgslsmith_f_op_f32(f32(-1f) * -783f)), -565f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), var_0.x, _wgslsmith_f_op_f32(func_3(var_0.x, u_input.a, u_input.b, vec4<bool>(true, true, true, false))), _wgslsmith_f_op_f32(-var_0.x)) + vec4<f32>(-1000f, var_0.x, _wgslsmith_f_op_f32(var_0.x * -2070f), _wgslsmith_f_op_f32(var_0.x + -1494f)))));
    let var_1 = select(vec2<bool>(!any(vec3<bool>(true, false, false)), !any(select(vec2<bool>(true, false), vec2<bool>(false, false), false))), vec2<bool>(false, false), true);
    var var_2 = Struct_3(var_0.x);
    let var_3 = u_input.c >> (~vec3<u32>(~_wgslsmith_mod_u32(u_input.a, u_input.b.x), ~min(u_input.a, u_input.a), select(_wgslsmith_mod_u32(43200u, 57566u), 30642u, u_input.b.x != u_input.b.x)) % vec3<u32>(32u));
    return var_3.x;
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = max(-30203i, _wgslsmith_mod_i32(-(~4147i << (func_2() % 32u)), -12920i));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(979f, _wgslsmith_div_f32(-1075f, 576f))), _wgslsmith_f_op_f32(-arg_2.b))), ~reverseBits(68055u), ~countOneBits(countOneBits(u_input.c)), vec4<bool>(any(arg_2.d), true, arg_2.d.x, false))));
    var_0 = ~select(max(arg_1, arg_1), 0i, false);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.a.x, 1189f), _wgslsmith_f_op_f32(sign(936f))) * _wgslsmith_f_op_f32(exp2(var_1.a))) * _wgslsmith_f_op_f32(-542f - 1486f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1958f)));
    var_0 = 33166i;
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.x, 934f, -792f, 1583f) - vec4<f32>(867f, -675f, var_1.a, var_1.a))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec3<i32>(17216i, -2147483647i, u_input.e.x), u_input.d, Struct_1(vec3<f32>(542f, -568f, -2252f), -1449f, u_input.a, vec2<bool>(true, false)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(133f, 691f, -729f, 1006f)))))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-839f, _wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -400f), _wgslsmith_f_op_f32(-1000f - 976f)), 725f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-173f, 539f, 305f, -2028f) + vec4<f32>(-1115f, -1174f, -447f, 2209f))))))));
    let var_1 = abs(countOneBits(1u));
    var var_2 = max(1i, u_input.d);
    var_2 = 50375i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(-32190i), 0i, u_input.d, 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1005f)))));
}

