struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 8> = array<vec2<bool>, 8>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global1: vec2<f32> = vec2<f32>(118f, 519f);

var<private> global2: i32 = 2147483647i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<f32>) -> bool {
    return !(!(0i == u_input.e));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: i32) -> f32 {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(-1919f + _wgslsmith_f_op_f32(-805f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(1000f * 721f))))));
    var var_1 = var_0;
    var var_2 = 772f;
    let var_3 = arg_0;
    let var_4 = true;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_0.a))))));
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: vec2<f32>) -> bool {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2));
    var var_0 = Struct_1(~vec2<u32>(u_input.a, 8145u), ~abs(arg_1.a.a.b));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-263f, global1.x)))), _wgslsmith_sub_u32(u_input.d.x, var_0.a.x) ^ firstLeadingBit(u_input.a), ~var_0.b)));
    var var_2 = ~_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(var_0.a.x, arg_1.a.c.a.x), arg_1.b.xz | vec2<u32>(var_0.a.x, arg_1.b.x)), ~vec2<u32>(~arg_1.a.c.a.x, 1u));
    var var_3 = arg_1.a.b.x || true;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, -652f) - 600f));
    let var_1 = u_input.d.x;
    let var_2 = select(select(!vec4<bool>(true, func_1(Struct_3(Struct_1(u_input.d, -2147483647i), vec3<bool>(true, true, false), Struct_1(vec2<u32>(1u, 52643u), u_input.b)), vec4<f32>(-336f, global1.x, var_0.a, -1404f)), true, any(vec4<bool>(true, true, true, true))), vec4<bool>(select(true, true, true), false, true || (var_0.a > global1.x), true), (select(true, false, false) || true) & !func_2(var_0.a, Struct_4(Struct_3(Struct_1(u_input.d, u_input.e), vec3<bool>(true, false, false), Struct_1(vec2<u32>(57197u, 92224u), -2147483647i)), vec3<u32>(0u, u_input.c, var_1)), vec2<f32>(-2174f, -983f))), vec4<bool>(true, true & select(var_0.a == global1.x, var_0.a != global1.x, false), !(!any(vec4<bool>(true, true, true, false))), select(true, true, true) && any(vec3<bool>(true, true, true))), !func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(265f, 642f)), Struct_4(Struct_3(Struct_1(vec2<u32>(var_1, var_1), -14970i), vec3<bool>(true, true, false), Struct_1(vec2<u32>(var_1, var_1), u_input.e)), ~vec3<u32>(1u, var_1, 1u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(982f, var_0.a))));
    var var_3 = Struct_5(-1439f);
    var var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1937f, 413f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-989f, 368f)), select(var_2.yz, vec2<bool>(var_2.x, false), var_2.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, 570f)))))));
}

