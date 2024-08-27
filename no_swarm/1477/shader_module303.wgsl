struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    var var_0 = false;
    let var_1 = Struct_1(all(vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), !any(vec2<bool>(true, false)))));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-358f))))), _wgslsmith_f_op_f32(trunc(208f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(4181f)) - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(324f, -1074f))))));
    var var_3 = -41138i;
    var var_4 = Struct_1(any(!select(select(vec4<bool>(true, true, false, var_1.a), vec4<bool>(var_1.a, var_1.a, false, var_1.a), vec4<bool>(false, false, var_1.a, var_1.a)), !vec4<bool>(true, false, var_1.a, true), !vec4<bool>(var_1.a, false, var_1.a, var_1.a))));
    return false;
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<bool>(all(!vec3<bool>(u_input.b.x < 7810i, true, true)), !func_3());
    let var_1 = false;
    let var_2 = vec2<f32>(-465f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(267f, 1137f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-913f + -237f))))));
    let var_3 = Struct_1(all(select(select(!vec4<bool>(var_1, false, true, true), select(vec4<bool>(true, false, false, var_0.x), vec4<bool>(false, var_0.x, true, false), true), var_1), select(vec4<bool>(true, false, var_1, true), select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_1), false), vec4<bool>(true, var_1, false, true)), firstTrailingBit(10668u) >= u_input.d.x)));
    var var_4 = var_3;
    return var_3;
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    var var_1 = vec2<u32>(u_input.e.x, 1u);
    var_0 = Struct_1(true);
    var var_2 = _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(max(u_input.e.x, 1u >> (0u % 32u)), select(select(1u, 98123u, var_0.a), 0u, true), var_1.x), firstTrailingBit(~vec3<u32>(4294967295u, var_1.x, var_1.x))), ~select(max(vec3<u32>(u_input.d.x, var_1.x, 0u) | vec3<u32>(1u, u_input.d.x, 35822u), firstTrailingBit(vec3<u32>(u_input.c, var_1.x, 0u))), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.c, var_1.x), vec3<u32>(u_input.e.x, 69361u, 1u)) << (~vec3<u32>(0u, 0u, var_1.x) % vec3<u32>(32u)), vec3<bool>(true, var_0.a, func_2().a)));
    let var_3 = reverseBits(_wgslsmith_sub_vec3_u32(~min(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, var_2.x, 0u), vec3<u32>(var_1.x, var_2.x, 1u)), vec3<u32>(u_input.d.x, var_1.x, 10017u)), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(0u, 40188u, 0u)), vec3<u32>(~u_input.e.x, ~10105u, ~42684u))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -656f)))) >= 437f);
    let var_2 = Struct_1(true);
    var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(select(select(2743u, u_input.c, true), 0u, false || var_1.a) >> (~abs(60748u) % 32u), 1u), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, _wgslsmith_f_op_f32(floor(-548f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1096f, -1496f)), select(select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(true, false), vec2<bool>(var_1.a, false)), vec2<bool>(true, true), select(vec2<bool>(var_2.a, true), vec2<bool>(var_1.a, var_1.a), false)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1172f, -823f, 935f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-916f, -471f, 760f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(574f, -1740f, 1105f)))))), u_input.e);
}

