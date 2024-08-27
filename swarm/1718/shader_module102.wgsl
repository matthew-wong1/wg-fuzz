struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_1, 20>();
    var var_0 = ~(~(~abs(~vec4<u32>(u_input.b, 25938u, u_input.b, 4294967295u))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.x, 4294967295u), 20u)];
    let var_2 = 12666u;
    let var_3 = !(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)));
    return Struct_1(1u);
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-289f, 1000f, -1400f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-3686f, -1316f, 806f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(449f, 1000f, -1000f))))), select(vec3<bool>(false, true, u_input.b == u_input.b), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false))))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) * vec4<f32>(543f, var_0.x, var_0.x, -1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -213f, var_0.x))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -628f, -170f, 1093f)), vec4<f32>(var_0.x, var_0.x, 916f, var_0.x), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(round(var_0.x)))))), vec4<f32>(458f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1414f + 1099f) + _wgslsmith_f_op_f32(var_0.x * 1353f)))), var_0.x, _wgslsmith_f_op_f32(-284f - 2116f)));
    global0 = array<Struct_1, 20>();
    let var_2 = _wgslsmith_f_op_f32(214f + var_1.x);
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_1.zyz + var_1.wxx), vec3<f32>(var_2, _wgslsmith_f_op_f32(round(var_0.x)), 2982f), !(-1047f < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_0.x, 1399f)))))));
    return -625f;
}

fn func_1(arg_0: i32) -> u32 {
    global0 = array<Struct_1, 20>();
    var var_0 = vec2<bool>(all(vec4<bool>(true, false, (arg_0 <= -2147483647i) & true, !(-2147483647i < arg_0))), all(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, true), vec2<bool>(true, true))));
    let var_1 = func_2();
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * -1863f))));
    let var_3 = ~arg_0;
    return ~((u_input.a.x >> (97902u % 32u)) >> (var_1.a % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 20>();
    var var_0 = _wgslsmith_div_u32(u_input.a.x, max(_wgslsmith_mod_u32(1u, ~func_1(-2147483647i)), 32834u));
    var var_1 = Struct_1(4294967295u);
    var_0 = 67621u;
    var_1 = func_2();
    global0 = array<Struct_1, 20>();
    var_0 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~(~min(~vec4<u32>(8741u, var_1.a, var_1.a, 35129u), countOneBits(vec4<u32>(u_input.b, u_input.a.x, var_1.a, 0u)))));
}

