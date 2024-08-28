struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<bool>) -> f32 {
    let var_0 = vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x | _wgslsmith_sub_u32(0u >> (_wgslsmith_div_u32(21050u, u_input.a.x) % 32u), ~u_input.a.x), 7u)], true, select(any(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], arg_1.x, arg_1.x), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], false, global0[_wgslsmith_index_u32(73557u, 7u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 7u)], true))), true, global0[_wgslsmith_index_u32(select(0u, min(u_input.a.x, u_input.a.x), true), 7u)]) != true, arg_1.x & any(select(!vec4<bool>(arg_1.x, global0[_wgslsmith_index_u32(0u, 7u)], true, global0[_wgslsmith_index_u32(4294967295u, 7u)]), !vec4<bool>(false, true, arg_1.x, true), !vec4<bool>(false, arg_1.x, arg_1.x, true))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x - 978f)))));
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    global0 = array<bool, 7>();
    let var_0 = arg_0.a;
    var var_1 = var_0;
    let var_2 = !vec2<bool>(!arg_0.a.a, true);
    let var_3 = -41175i;
    return vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1165f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2360f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(451f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-176f)))) + -140f), -514f);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_2 {
    global0 = array<bool, 7>();
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1130f - -1072f), _wgslsmith_f_op_f32(ceil(647f)), _wgslsmith_f_op_f32(-967f - -1000f), _wgslsmith_f_op_f32(907f + 1313f)) - vec4<f32>(_wgslsmith_f_op_f32(func_2(vec2<f32>(2083f, 137f), vec2<bool>(false, false))), -1853f, -105f, _wgslsmith_f_op_f32(f32(-1f) * -1279f)))), _wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(-1558i >= arg_2.x)))), !select(select(vec4<bool>(false, false, arg_0.a.a, true), !vec4<bool>(arg_1.a, global0[_wgslsmith_index_u32(46036u, 7u)], true, false), arg_1.a), !(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 7u)], arg_0.a.a, true, false)), !select(vec4<bool>(arg_1.a, true, true, false), vec4<bool>(true, arg_0.a.a, arg_1.a, arg_1.a), arg_0.a.a))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-var_0.x))) * _wgslsmith_f_op_f32(ceil(-2204f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -422f))) - -2168f))), 2486f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-484f)) * -540f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1177f + 151f) - _wgslsmith_f_op_f32(f32(-1f) * -425f)) * _wgslsmith_f_op_f32(func_2(var_0.ww, select(vec2<bool>(false, arg_0.a.a), vec2<bool>(arg_0.a.a, true), true))))), 2310f);
    var var_2 = all(!(!select(!vec4<bool>(arg_1.a, true, arg_0.a.a, arg_1.a), select(vec4<bool>(true, false, true, arg_0.a.a), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], arg_1.a, arg_1.a, arg_1.a), true), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], true, arg_1.a, false))));
    var_2 = any(vec3<bool>(!global0[_wgslsmith_index_u32(u_input.a.x, 7u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -349f) - _wgslsmith_f_op_f32(-var_0.x)) < var_0.x, global0[_wgslsmith_index_u32(0u, 7u)]));
    return Struct_2(Struct_1(4294967295u >= _wgslsmith_div_u32(firstTrailingBit(76666u), firstLeadingBit(8988u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_2(Struct_1(global0[_wgslsmith_index_u32(~(~31475u), 7u)])), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1527u, u_input.a.x), 7u)]), select(-vec2<i32>(1i, 1i), min(vec2<i32>(-1i) * -vec2<i32>(-2147483647i, 0i), min(vec2<i32>(-24291i, 2147483647i), -vec2<i32>(1i, -1i))), !select(vec2<bool>(true, true), vec2<bool>(true, false), !vec2<bool>(global0[_wgslsmith_index_u32(138u, 7u)], false))));
    global0 = array<bool, 7>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1124f, _wgslsmith_div_f32(-1311f, -256f))), _wgslsmith_f_op_f32(919f - _wgslsmith_f_op_f32(-1000f + -845f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-336f)))))) * _wgslsmith_f_op_f32(1237f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(283f)), 553f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(690f * 423f), _wgslsmith_div_f32(-1524f, 289f)))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1 + var_1), -165f)), vec2<f32>(_wgslsmith_f_op_f32(ceil(var_1)), var_1), !(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(var_0.a.a, true))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_1, -632f)), vec3<f32>(var_1, var_1, var_2.x), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], true, false))))) - vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-var_1), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-var_1))))));
    let var_4 = true;
    var var_5 = countOneBits(-vec4<i32>(1i, 1i, 1i, 1i));
    let var_6 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(0u, var_5.x, vec2<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-780f + var_3.x)) - -1286f)), _wgslsmith_f_op_vec4_f32(func_3(Struct_2(func_1(var_0, func_1(Struct_2(var_0.a), var_0.a, vec2<i32>(var_5.x, -7322i)).a, var_5.wz).a))).x);
}

