struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -44104i;

var<private> global1: array<vec2<bool>, 21> = array<vec2<bool>, 21>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global2: array<i32, 15>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>) -> f32 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0, -262f)) + _wgslsmith_f_op_f32(arg_0 * 652f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + -682f), arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(2567f, arg_0, arg_0, -1222f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(arg_0, arg_0)), _wgslsmith_f_op_f32(1595f - arg_0), arg_0, _wgslsmith_f_op_f32(-arg_0))))));
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_2(arg_0: u32, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = true;
    let var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-227f + _wgslsmith_f_op_f32(1588f + -1082f))), 1986f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-144f, vec4<bool>(var_0, true, arg_1.x, true)))), _wgslsmith_f_op_f32(f32(-1f) * -517f));
    let var_2 = ~firstLeadingBit(u_input.e.xx);
    var var_3 = 1u;
    var var_4 = Struct_1(!select(vec2<bool>(true, any(arg_1)), !(!vec2<bool>(false, var_0)), any(!global1[_wgslsmith_index_u32(4294967295u, 21u)])), select(global1[_wgslsmith_index_u32(~(~4294967295u), 21u)], vec2<bool>(any(vec2<bool>(false, arg_1.x)), arg_1.x), false));
    return Struct_1(select(vec2<bool>(false, arg_1.x), !select(!arg_1.zy, !arg_1.zx, true), global1[_wgslsmith_index_u32(var_2.x, 21u)]), var_4.b);
}

fn func_1() -> vec4<bool> {
    var var_0 = u_input.a;
    global1 = array<vec2<bool>, 21>();
    var var_1 = func_2(var_0.x, vec3<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(470f, -334f, false)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(867f + 1745f)), true, true));
    var var_2 = var_0.x;
    global0 = 12566i;
    return vec4<bool>(var_1.a.x & !var_1.b.x, !(!(var_0.x > u_input.a.x) | var_1.b.x), false, var_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<bool>(true, !all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false)))), select(vec2<bool>(true, all(func_1())), vec2<bool>(false, true), true));
    global1 = array<vec2<bool>, 21>();
    var var_1 = u_input.c;
    let var_2 = ~countOneBits(select(~(~vec2<i32>(global2[_wgslsmith_index_u32(u_input.d, 15u)], u_input.c)), firstTrailingBit(-vec2<i32>(1654i, 3748i)), !func_2(1u, vec3<bool>(var_0.a.x, var_0.b.x, true)).b));
    var var_3 = -(vec3<i32>(-1i) * -abs(abs(vec3<i32>(u_input.c, var_2.x, -1i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(684f, 1281f, -854f))))) * vec3<f32>(-1963f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1599f), -536f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-291f, -227f, false))))), -1i);
}

