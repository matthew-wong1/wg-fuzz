struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    var var_0 = Struct_2(vec3<bool>(!(true != select(false, true, true)), true, (~(-31460i) > firstTrailingBit(-21442i)) == (true | any(vec2<bool>(true, false)))));
    var_0 = Struct_2(vec3<bool>(true, !(37780u >= firstLeadingBit(global0[_wgslsmith_index_u32(18440u, 5u)])), select(any(select(var_0.a.zy, vec2<bool>(var_0.a.x, var_0.a.x), vec2<bool>(false, var_0.a.x))), false, all(select(vec4<bool>(false, true, var_0.a.x, false), vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, false, false, var_0.a.x))))));
    var var_1 = select(!vec4<bool>(any(vec2<bool>(var_0.a.x, var_0.a.x)), true, var_0.a.x, !all(vec2<bool>(var_0.a.x, var_0.a.x))), !select(!vec4<bool>(var_0.a.x, true, false, true), vec4<bool>(any(vec4<bool>(false, false, var_0.a.x, var_0.a.x)), var_0.a.x & var_0.a.x, true, true), select(select(vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), vec4<bool>(true, var_0.a.x, true, false), vec4<bool>(false, var_0.a.x, true, false)), select(vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x), vec4<bool>(false, var_0.a.x, true, true), true), vec4<bool>(true, true, var_0.a.x, true))), true);
    let var_2 = 2638u;
    let var_3 = vec2<f32>(1f, 1f);
    return -1000f;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-306f, arg_2) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1470f, -1000f), vec2<f32>(arg_2, 1401f))))))));
    let var_1 = 0u;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(503f, -1000f), vec2<f32>(arg_2, arg_2)), _wgslsmith_f_op_vec2_f32(vec2<f32>(350f, var_0.x) * vec2<f32>(arg_2, 106f)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))))))));
    var var_3 = 16341i;
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(982f, -668f, -323f), vec3<f32>(-678f, 2605f, -767f))), vec3<f32>(var_2.x, -1236f, _wgslsmith_f_op_f32(-arg_2)))), vec3<f32>(930f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
    return _wgslsmith_f_op_f32(step(var_2.x, var_2.x));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2(~vec2<u32>(1u, u_input.e), firstLeadingBit(u_input.c.x), 689f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1376f * 1000f), 488f)));
    var var_1 = reverseBits(0u);
    var_1 = min(countOneBits(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~12499u, 5u)], 5u)], 5u)] & min(1u, _wgslsmith_mod_u32(u_input.b, global0[_wgslsmith_index_u32(0u, 5u)]))), _wgslsmith_dot_vec2_u32(u_input.c, ~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 25617u, u_input.e), vec3<u32>(u_input.b, 18175u, 14739u)), global0[_wgslsmith_index_u32(7728u, 5u)])));
    let var_2 = Struct_2(select(select(!(!vec3<bool>(arg_1.x, true, false)), arg_1, arg_1), select(select(arg_1, vec3<bool>(arg_0, true, arg_0), !vec3<bool>(false, false, arg_1.x)), select(vec3<bool>(true, arg_0, arg_1.x), !vec3<bool>(false, arg_0, false), select(vec3<bool>(false, true, true), arg_1, true)), !all(arg_1.yz)), !all(!arg_1)));
    var_1 = select(u_input.c.x, ~(4294967295u & u_input.c.x), false);
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2262f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(133f + -470f) - _wgslsmith_f_op_f32(step(-636f, 1669f))), vec3<bool>(true, true, true)) && true;
    global0 = array<u32, 5>();
    let var_1 = _wgslsmith_f_op_f32(-246f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(u_input.c >> ((vec2<u32>(global0[_wgslsmith_index_u32(u_input.e, 5u)], 92253u) >> (vec2<u32>(global0[_wgslsmith_index_u32(10050u, 5u)], u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_mod_u32(~3982u, min(global0[_wgslsmith_index_u32(5785u, 5u)], 49765u)), _wgslsmith_f_op_f32(f32(-1f) * -319f))))));
    let var_2 = Struct_2(vec3<bool>(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(min(369f, var_1))) < _wgslsmith_f_op_f32(-var_1), true));
    let var_3 = select(select(select(!vec4<bool>(var_2.a.x, false, false, var_2.a.x), !(!vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, false)), var_2.a.x), vec4<bool>(!all(vec2<bool>(var_2.a.x, var_2.a.x)), select(true, var_2.a.x, any(vec3<bool>(true, false, var_2.a.x))), !var_2.a.x, !func_1(true, vec3<bool>(var_2.a.x, true, var_2.a.x))), true), !vec4<bool>(true, !var_2.a.x == (var_2.a.x & var_2.a.x), var_2.a.x, all(select(vec4<bool>(true, var_2.a.x, false, false), vec4<bool>(var_2.a.x, false, true, var_2.a.x), vec4<bool>(false, false, var_2.a.x, false)))), !(false && var_2.a.x));
    var var_4 = var_2;
    global0 = array<u32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(9537i, vec2<u32>(~(u_input.e & 76040u), abs(u_input.c.x)) | u_input.c);
}

