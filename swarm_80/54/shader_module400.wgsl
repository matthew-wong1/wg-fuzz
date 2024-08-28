struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: f32) -> vec2<u32> {
    global0 = Struct_1(global0.a);
    let var_0 = Struct_1(!(!vec2<bool>(true, !global0.a.x)));
    global0 = var_0;
    global0 = Struct_1(var_0.a);
    global0 = var_0;
    return _wgslsmith_mod_vec2_u32(max(vec2<u32>(~1u, ~arg_1), vec2<u32>(_wgslsmith_mod_u32(13023u, u_input.d), ~29069u)), vec2<u32>(0u, 0u)) << (firstTrailingBit(~(~(vec2<u32>(0u, 65634u) & vec2<u32>(4294967295u, arg_1)))) % vec2<u32>(32u));
}

fn func_3(arg_0: vec2<u32>) -> vec2<u32> {
    global0 = Struct_1(vec2<bool>(global0.a.x, all(vec4<bool>(true, global0.a.x, false, global0.a.x))));
    let var_0 = !global0.a;
    var var_1 = vec3<f32>(892f, -1938f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(615f + -486f) + _wgslsmith_f_op_f32(-837f - -601f)))));
    let var_2 = Struct_2(~(~(~(~arg_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.yy) - var_1.yx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.x, var_1.x))) * var_1.yy), select(vec2<bool>(false, var_0.x), !global0.a, true)))));
    var var_3 = false;
    return countOneBits(arg_0);
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(global0.a);
    var var_0 = true;
    var var_1 = _wgslsmith_dot_vec2_i32(abs(-vec2<i32>(u_input.c, 26893i)), (vec2<i32>(-1i) * -firstTrailingBit(vec2<i32>(-41594i, 2147483647i))) >> (~firstTrailingBit(func_2(vec3<i32>(2147483647i, -2147483647i, u_input.e), 44332u, -830f)) % vec2<u32>(32u)));
    var var_2 = Struct_2(min(func_3(vec2<u32>(u_input.b, 0u | u_input.d)), abs(vec2<u32>(~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(55405u, 1u, u_input.d), vec3<u32>(41544u, u_input.d, u_input.d))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1836f, -1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(957f, -509f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(244f, 1593f) - vec2<f32>(761f, -139f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(708f, 2682f), vec2<f32>(301f, -382f)))), !(!vec2<bool>(global0.a.x, global0.a.x))))));
    let var_3 = Struct_1(global0.a);
    return Struct_1(global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = Struct_1(vec2<bool>(all(vec3<bool>(global0.a.x, !global0.a.x, global0.a.x)), !any(!vec3<bool>(true, global0.a.x, true))));
    var_0 = func_1();
    var_0 = Struct_1(select(!vec2<bool>(all(vec4<bool>(true, var_0.a.x, var_0.a.x, global0.a.x)), true), vec2<bool>(true && all(vec2<bool>(var_0.a.x, true)), false), global0.a));
    global0 = Struct_1(!vec2<bool>(!all(vec3<bool>(var_0.a.x, var_0.a.x, true)), all(vec2<bool>(true, true))));
    let var_1 = countOneBits(vec4<i32>(u_input.a << (u_input.b % 32u), u_input.e, 17435i, u_input.e));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1f, 1f), var_1.ww, vec2<u32>(~1u, u_input.d), 68812u, vec4<f32>(1021f, -1696f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(758f, -854f)))), _wgslsmith_f_op_f32(617f + _wgslsmith_f_op_f32(floor(-1039f)))));
}

