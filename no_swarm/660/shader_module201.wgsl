struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<u32>,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_5, 10>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> Struct_4 {
    let var_0 = vec2<f32>(473f, 491f);
    global0 = true;
    global1 = array<Struct_5, 10>();
    global0 = !arg_0.x;
    global1 = array<Struct_5, 10>();
    return Struct_4(Struct_2(arg_0), Struct_3(arg_0.wx));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> vec3<f32> {
    global1 = array<Struct_5, 10>();
    global1 = array<Struct_5, 10>();
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_2.a + _wgslsmith_f_op_f32(f32(-1f) * -721f)), _wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(step(-2584f, _wgslsmith_f_op_f32(step(1502f, _wgslsmith_div_f32(-215f, arg_0)))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_5) -> StorageBuffer {
    var var_0 = all(arg_1.a);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(629f * 379f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -948f), _wgslsmith_f_op_f32(select(-1237f, -431f, arg_1.a.x))))));
    global1 = array<Struct_5, 10>();
    let var_2 = _wgslsmith_clamp_vec4_u32(~(~(~u_input.b)), ~(~vec4<u32>(29005u, u_input.d.x, ~arg_0.x, _wgslsmith_mod_u32(arg_0.x, 39698u))), u_input.b & u_input.b);
    let var_3 = -1145f;
    return StorageBuffer(1182f, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(-var_3), true, Struct_1(1000f, true, var_2.wyy, vec2<i32>(16024i, -43530i), true))), vec3<f32>(_wgslsmith_f_op_f32(var_3 * -421f), _wgslsmith_f_op_f32(1428f * 895f), -1643f), !(arg_1.a.x == true))), _wgslsmith_f_op_vec3_f32(func_3(-1832f, !(!arg_1.a.x), Struct_1(1521f, false, countOneBits(u_input.b.wxx), vec2<i32>(u_input.e.x, u_input.a.x), true))), !select(vec3<bool>(arg_1.a.x, false, true), func_1(vec4<bool>(true, arg_1.a.x, arg_1.a.x, arg_1.a.x), var_2.x).a.a.xxx, arg_1.a))), arg_0.x, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<bool>(true, any(vec4<bool>(true, true, true, true)) || select(select(false, false, true), true, false), !any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false))), 54390i < u_input.e.x), 4294967295u);
    global0 = var_0.a.a.x;
    var var_1 = var_0.b;
    var_1 = Struct_3(vec2<bool>(all(var_0.a.a.xxx), var_0.a.a.x));
    var var_2 = all(select(!select(var_0.a.a, select(var_0.a.a, vec4<bool>(var_1.a.x, var_0.a.a.x, var_0.b.a.x, false), vec4<bool>(var_1.a.x, var_0.b.a.x, var_0.b.a.x, true)), var_1.a.x), vec4<bool>(~u_input.d.x < u_input.b.x, all(select(var_0.a.a, vec4<bool>(var_0.a.a.x, var_1.a.x, var_1.a.x, var_0.a.a.x), vec4<bool>(var_1.a.x, var_0.b.a.x, var_0.b.a.x, true))), true, u_input.b.x >= u_input.c), select(vec4<bool>(true, true, all(vec2<bool>(var_0.b.a.x, var_0.b.a.x)), var_1.a.x), var_0.a.a, var_1.a.x)));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(879f, 282f)), -678f), _wgslsmith_f_op_f32(f32(-1f) * -1037f), -283f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(856f - 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -915f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -514f))))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f))));
    var_1 = Struct_3(vec2<bool>(var_0.b.a.x, u_input.a.x == (-2147483647i << (0u % 32u))));
    global0 = any(func_1(func_1(!(!var_0.a.a), ~1u).a.a, 5873u).a.a);
    var var_4 = vec4<f32>(-1236f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_3.x)) + 1385f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -2148f))));
    let x = u_input.a;
    s_output = func_2(vec2<u32>(29118u, _wgslsmith_div_u32(~(~u_input.b.x), u_input.d.x)), global1[_wgslsmith_index_u32((u_input.b.x ^ ~u_input.d.x) ^ ~max(4294967295u, 57268u), 10u)]);
}

