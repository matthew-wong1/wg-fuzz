struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-556f, -433f));

var<private> global2: array<f32, 12>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: vec3<f32>) -> i32 {
    var var_0 = false;
    return -2147483647i;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a.x, arg_0.a.x))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1863f));
    let var_0 = global2[_wgslsmith_index_u32(~32429u, 12u)];
    let var_1 = arg_1;
    var var_2 = vec3<bool>((arg_0.a.x >= _wgslsmith_f_op_f32(f32(-1f) * -2797f)) || (min(func_3(u_input.e.x, -36152i, Struct_1(var_1.a), vec3<f32>(global1.a.x, global2[_wgslsmith_index_u32(1u, 12u)], arg_0.a.x)), -10888i) > -reverseBits(u_input.b.x)), select(any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), true)), true, true), any(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false))));
    let var_3 = Struct_1(arg_1.a);
    return vec4<bool>(var_2.x, var_2.x, false, true);
}

fn func_4(arg_0: vec4<bool>, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(-871f - global1.a.x)), _wgslsmith_f_op_f32(exp2(1f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-271f, global2[_wgslsmith_index_u32(u_input.d.x, 12u)]))))))));
    var var_1 = u_input.e.wx;
    var var_2 = ~(28325u | (max(u_input.d.x, ~0u) >> (firstTrailingBit(select(u_input.d.x, u_input.c, arg_0.x)) % 32u)));
    var var_3 = select(arg_0, !vec4<bool>(!(arg_0.x & false), arg_0.x, arg_0.x, arg_0.x), true);
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(594f, -1420f), -1394f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1.a.x, -646f), vec2<f32>(2287f, arg_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, 1000f) * var_0.a)))))));
    return Struct_1(var_0.a);
}

fn func_1(arg_0: f32) -> vec3<i32> {
    let var_0 = func_4(!select(func_2(Struct_1(vec2<f32>(829f, -1165f)), Struct_1(global1.a)), vec4<bool>(true, true, true, true), false), global1.a.x);
    let var_1 = _wgslsmith_mod_vec2_u32(u_input.d.yx, u_input.d.yy);
    var var_2 = u_input.b.x;
    let var_3 = vec2<bool>(true, true);
    var var_4 = 2147483647i;
    return u_input.e.yzx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(min(u_input.b, ~(-func_1(801f))));
    global2 = array<f32, 12>();
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1095f, 962f)))), global1.a, vec2<bool>(true, select(false, true, false) & func_2(Struct_1(vec2<f32>(global1.a.x, global2[_wgslsmith_index_u32(51866u, 12u)])), Struct_1(vec2<f32>(global1.a.x, global2[_wgslsmith_index_u32(u_input.d.x, 12u)]))).x))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2[_wgslsmith_index_u32(58699u, 12u)], global2[_wgslsmith_index_u32(4294967295u, 12u)]))));
    global1 = func_4(!(!vec4<bool>(true, select(false, false, true), any(vec2<bool>(false, true)), true)), 328f);
    let var_2 = select(vec2<bool>(any(vec2<bool>(true, true)), var_0.x == var_0.x), !(!vec2<bool>(true, 2147483647i > u_input.a)), vec2<bool>((~0u >> ((1u << (u_input.c % 32u)) % 32u)) <= (countOneBits(u_input.c) >> (~14586u % 32u)), func_2(Struct_1(func_4(vec4<bool>(false, true, false, true), global1.a.x).a), var_1).x));
    let var_3 = global2[_wgslsmith_index_u32(u_input.c | u_input.c, 12u)];
    let x = u_input.a;
    s_output = StorageBuffer(~19387u);
}

