struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec2<f32>,
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: i32, arg_3: bool) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(229f, _wgslsmith_f_op_f32(min(456f, 1551f)))))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-907f))))));
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_2(countOneBits(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 29317u, u_input.a), vec3<u32>(u_input.a, 33642u, u_input.a)), u_input.a, 4294967295u)), vec3<bool>(true, true, true), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(true, false), vec3<u32>(u_input.a, u_input.a, 4294967295u), -12046i, false))) * 1f)));
    var_0 = Struct_2(var_0.a & var_0.a, var_0.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.a, _wgslsmith_f_op_f32(floor(419f))))), var_0.c);
    var var_1 = Struct_2(var_0.a, vec3<bool>(!(!any(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x))), var_0.b.x, any(!vec2<bool>(var_0.b.x, var_0.b.x))), Struct_1(906f), var_0.d);
    var_1 = Struct_2(_wgslsmith_sub_vec3_u32(var_1.a, reverseBits(vec3<u32>(var_0.a.x & var_1.a.x, _wgslsmith_mod_u32(4294967295u, 1u), u_input.a))), select(!var_0.b, !select(var_1.b, !var_0.b, !var_0.b.x), select(!var_1.b, select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), var_1.b)), var_0.c, var_0.c);
    var_0 = Struct_2(select(~vec3<u32>(_wgslsmith_clamp_u32(58900u, var_1.a.x, var_1.a.x), var_1.a.x, 69620u), ~(var_1.a ^ vec3<u32>(var_1.a.x, 4294967295u, 1u)) ^ var_1.a, vec3<bool>(true, any(!vec4<bool>(var_0.b.x, var_0.b.x, var_1.b.x, false)), var_0.b.x)), !select(select(!var_1.b, var_0.b, select(vec3<bool>(true, var_1.b.x, false), vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x), var_0.b)), !vec3<bool>(var_1.b.x, var_1.b.x, var_0.b.x), var_1.b), Struct_1(-2281f), Struct_1(var_0.d.a));
    return !var_0.b.zx;
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = true;
    var_0 = !select(any(func_2()), !all(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, func_2().x)));
    var_0 = select(all(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), !func_2().x, true);
    var_0 = !any(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), false));
    var_0 = true;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-932f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.a, _wgslsmith_f_op_f32(arg_0.a - arg_0.a), true)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(vec2<bool>(false, false), vec3<u32>(4294967295u, 50857u, u_input.a), 0i, true)), 1530f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1353f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1296f * -466f) - _wgslsmith_f_op_f32(sign(-584f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(860f))))), vec2<f32>(_wgslsmith_f_op_f32(-1412f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1143f, 1203f)))), 1369f), vec2<bool>(true, true)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-984f - _wgslsmith_f_op_f32(-var_0.x))))));
    var var_2 = ~(abs(_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(71913u, u_input.a, 70284u)), vec3<u32>(u_input.a, u_input.a, 28267u))) | ~vec3<u32>(~32077u, 49893u, ~1u));
    let var_3 = true;
    var var_4 = !var_3;
    let var_5 = !any(vec2<bool>(var_3 && var_3, !(!var_3)));
    var_1 = _wgslsmith_f_op_f32(var_0.x * var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))), var_5))), var_2.yz, _wgslsmith_f_op_f32(f32(-1f) * -357f), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -110f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.x, var_0.x)))));
}

