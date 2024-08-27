struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool = false;

var<private> global2: u32;

var<private> global3: array<i32, 19>;

var<private> global4: Struct_1;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global4.a))));
    global1 = arg_1.x;
    global4 = Struct_1(-1792f, u_input.a);
    var var_1 = !(!vec4<bool>(arg_1.x, arg_1.x, true && arg_1.x, !arg_1.x));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a))));
    return true;
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: vec4<u32>) -> f32 {
    let var_0 = !any(select(select(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, true, arg_0.x, arg_0.x), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), !select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(true, false, arg_0.x, arg_0.x), false), !all(vec4<bool>(false, arg_0.x, false, arg_0.x))));
    let var_1 = !(!select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, arg_0.x), false), vec4<bool>(var_0, var_0, false, var_0), true), vec4<bool>(any(arg_0), any(vec4<bool>(false, var_0, arg_0.x, arg_0.x)), all(vec2<bool>(arg_0.x, arg_0.x)), all(vec4<bool>(false, var_0, arg_0.x, true))), !select(vec4<bool>(true, false, false, var_0), vec4<bool>(false, false, var_0, arg_0.x), false)));
    let var_2 = global0.a.wx;
    global0 = Struct_2(vec4<i32>(global3[_wgslsmith_index_u32(17033u | countOneBits(firstLeadingBit(arg_2.x)), 19u)], global3[_wgslsmith_index_u32(abs(~16691u), 19u)], _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, _wgslsmith_mod_i32(global4.b, 1i)), _wgslsmith_add_vec2_i32(global0.a.zz, ~vec2<i32>(u_input.a, global3[_wgslsmith_index_u32(u_input.b.x, 19u)]))), global0.a.x));
    global3 = array<i32, 19>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-915f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1281f + -1670f)))))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = ~vec2<i32>(-2147483647i, global3[_wgslsmith_index_u32(~firstLeadingBit(~u_input.b.x), 19u)]);
    let var_1 = _wgslsmith_add_u32(firstLeadingBit(countOneBits(u_input.b.x)), u_input.b.x);
    let var_2 = Struct_2(select(vec4<i32>(global3[_wgslsmith_index_u32(u_input.b.x, 19u)], max(global0.a.x, -63574i), 1i, -1i), countOneBits(-(~global0.a)), !vec4<bool>(true, true, all(vec4<bool>(true, true, false, true)), all(vec3<bool>(false, false, true)))));
    global2 = 0u;
    let var_3 = _wgslsmith_add_i32(~(-abs(var_2.a.x)), global0.a.x);
    return Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global4.a)))), all(vec3<bool>(true, true, true)))))), 1i);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: i32) -> u32 {
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(func_3(vec3<bool>(all(vec2<bool>(false, true)), func_2(49125u, vec3<bool>(true, true, false)), true), arg_0.x, ~vec4<u32>(8171u, u_input.b.x, 36944u, arg_1.x))), 1i));
    var var_1 = func_4(var_0);
    global2 = firstLeadingBit(_wgslsmith_sub_u32(~arg_0.x, max(0u, ~0u)));
    let var_2 = Struct_2(vec4<i32>(-41951i, ~abs(1i), var_1.b, 57961i));
    global2 = u_input.b.x;
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(51876u, 24016u, 1u, u_input.b.x), vec4<u32>(u_input.b.x, 1u, u_input.b.x, 11481u)) | ~u_input.b, firstLeadingBit(~u_input.b)), ~func_1(u_input.b, vec2<u32>(20609u, u_input.b.x), _wgslsmith_dot_vec4_i32(global0.a, vec4<i32>(-2147483647i, 2147483647i, global4.b, global0.a.x))), _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.wx), ~select(51209u, u_input.b.x, false))) < 1u;
    let x = u_input.a;
    s_output = StorageBuffer(1u, func_4(func_4(func_4(func_4(Struct_1(-1000f, u_input.a))))).a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1267f, global4.a)), global0.a.wy, _wgslsmith_add_i32(global3[_wgslsmith_index_u32(43284u, 19u)], -min(-global4.b, ~global3[_wgslsmith_index_u32(u_input.b.x, 19u)])));
}

