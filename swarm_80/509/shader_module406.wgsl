struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1> = array<f32, 1>(-340f);

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, false, false, true));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> bool {
    let var_0 = arg_0;
    let var_1 = firstLeadingBit(firstLeadingBit(~(~min(vec2<i32>(1i, u_input.c), vec2<i32>(u_input.c, 11703i)))));
    let var_2 = var_0;
    var var_3 = Struct_1(select(vec4<bool>(global1.a.x, true, _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(0u, 1u)])) < _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d, 1u)]), false), select(!vec4<bool>(var_2.a.x, false, true, false), select(!var_2.a, select(arg_0.a, global1.a, vec4<bool>(false, var_2.a.x, true, arg_0.a.x)), !global1.a), vec4<bool>(global1.a.x, false, true, all(var_0.a.zx))), u_input.c < ~(-2147483647i << (arg_1.x % 32u))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1464f, 649f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-328f + global0[_wgslsmith_index_u32(arg_1.x, 1u)]) + _wgslsmith_div_f32(508f, global0[_wgslsmith_index_u32(38706u, 1u)]))))));
    return all(var_3.a.xzz);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: u32) -> f32 {
    let var_0 = func_3(arg_0, _wgslsmith_div_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 42450u, 25467u, u_input.e.x), ~vec4<u32>(49305u, 14311u, arg_2, u_input.b.x)), ~firstLeadingBit(~vec4<u32>(arg_2, 17351u, arg_2, arg_2))));
    let var_1 = ~vec2<i32>(arg_1.x, -u_input.c);
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    global1 = Struct_1(vec4<bool>(true, (arg_0.a.x & arg_0.a.x) || (4294967295u >= arg_2), true, !arg_0.a.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(22689u, 1u)] - _wgslsmith_f_op_f32(trunc(1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(1u, 1u)], _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(4294967295u, 1u)])))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> vec2<f32> {
    global0 = array<f32, 1>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(36684u, 1u)], -1233f, _wgslsmith_f_op_f32(func_2(Struct_1(vec4<bool>(global1.a.x, false, false, arg_0.a.x)), max(vec3<i32>(2147483647i, u_input.c, u_input.a), vec3<i32>(39040i, u_input.a, -1151i)), abs(u_input.e.x))), 681f))));
    global1 = arg_0;
    global0 = array<f32, 1>();
    var var_1 = abs(_wgslsmith_add_vec3_u32(u_input.e, u_input.e));
    return var_0.wz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_1(global1.a), Struct_1(vec4<bool>(global1.a.x, false, true, true)), global1.a.wx))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1106f, global0[_wgslsmith_index_u32(u_input.b.x, 1u)]), vec2<f32>(-1080f, 1473f), global1.a.x)))) + _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-572f, global0[_wgslsmith_index_u32(8054u, 1u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1708f, 853f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1833f, 957f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-230f, global0[_wgslsmith_index_u32(24745u, 1u)]), vec2<f32>(global0[_wgslsmith_index_u32(u_input.e.x, 1u)], 283f), false))))));
    let var_1 = min((_wgslsmith_mod_i32(u_input.c, -10569i) << (55166u % 32u)) << ((~(~4294967295u) | ~firstTrailingBit(4294967295u)) % 32u), ~(i32(-1i) * -26502i));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.e.x), vec2<i32>(var_1, 20379i));
}

