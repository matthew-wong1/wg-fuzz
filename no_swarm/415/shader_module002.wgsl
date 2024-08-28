struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

var<private> global1: array<vec2<bool>, 11> = array<vec2<bool>, 11>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global2: vec4<f32>;

var<private> global3: Struct_1 = Struct_1(vec3<bool>(true, true, true), vec4<f32>(134f, -807f, -784f, 199f));

var<private> global4: array<i32, 2> = array<i32, 2>(24066i, -16007i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: f32, arg_3: vec4<bool>) -> vec4<f32> {
    let var_0 = Struct_2(Struct_1(arg_3.xww, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1375f, -949f, 269f, global3.b.x) - vec4<f32>(-1512f, -730f, -1000f, -1344f)))))));
    global2 = _wgslsmith_f_op_vec4_f32(var_0.a.b + global3.b);
    var var_1 = Struct_1(!vec3<bool>(any(!vec4<bool>(arg_0, arg_3.x, true, global3.a.x)), !var_0.a.a.x, any(vec2<bool>(arg_3.x, true))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.b) * _wgslsmith_f_op_vec4_f32(-arg_1)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(742f, arg_1.x, 1611f, arg_2)), global3.b))))));
    var var_2 = var_0.a;
    var_2 = Struct_1(var_1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -1000f, var_1.b.x, 1128f) - global3.b)), vec4<f32>(_wgslsmith_f_op_f32(ceil(-314f)), _wgslsmith_f_op_f32(-269f * arg_1.x), -935f, _wgslsmith_f_op_f32(sign(-199f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_2.b - arg_1), _wgslsmith_f_op_vec4_f32(-var_0.a.b))))));
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-global3.b)));
}

fn func_2() -> Struct_1 {
    var var_0 = global3.a.zy;
    global3 = Struct_1(vec3<bool>(true, any(!(!vec2<bool>(global3.a.x, true))), true), _wgslsmith_f_op_vec4_f32(func_3(!(_wgslsmith_f_op_f32(max(367f, global3.b.x)) > -1378f), vec4<f32>(-695f, global2.x, -444f, global3.b.x), _wgslsmith_f_op_f32(global3.b.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.x)))), vec4<bool>(!(global4[_wgslsmith_index_u32(u_input.a, 2u)] < 11842i), !(!global3.a.x), true, true))));
    var var_1 = var_0.x & !(!(_wgslsmith_f_op_vec4_f32(func_3(false, vec4<f32>(-417f, global3.b.x, -1323f, -651f), 1767f, vec4<bool>(global3.a.x, false, false, var_0.x))).x != _wgslsmith_f_op_f32(593f * -1000f)));
    var var_2 = Struct_1(global3.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), 1000f, -1161f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-750f + global3.b.x) - -1215f)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(global3.b + global3.b)))))));
    var_1 = false;
    return Struct_1(vec3<bool>(any(select(select(vec4<bool>(true, true, var_0.x, global3.a.x), vec4<bool>(global3.a.x, true, true, false), vec4<bool>(true, var_0.x, false, false)), vec4<bool>(true, var_2.a.x, var_0.x, var_2.a.x), !vec4<bool>(true, var_2.a.x, true, false))), all(!select(vec3<bool>(false, false, global3.a.x), var_2.a, vec3<bool>(global3.a.x, var_0.x, false))), !all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, var_2.a.x, global3.a.x, false), vec4<bool>(global3.a.x, global3.a.x, false, global3.a.x)))), var_2.b);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: u32) -> Struct_1 {
    let var_0 = ~6877u;
    let var_1 = ~58828i;
    global4 = array<i32, 2>();
    global3 = func_2();
    global1 = array<vec2<bool>, 11>();
    return Struct_1(vec3<bool>(!all(!global3.a), true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 595f)), _wgslsmith_f_op_f32(106f - global3.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(563f))))) * global3.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec2<i32>(-(min(global4[_wgslsmith_index_u32(u_input.a, 2u)], -1i) & _wgslsmith_sub_i32(1i, 2147483647i)), 1i);
    global3 = func_1(global3.a.x, global3.b.x, ~_wgslsmith_sub_u32(u_input.a, _wgslsmith_div_u32(4294967295u, u_input.a ^ 4294967295u)));
    var var_1 = global2.x;
    var var_2 = Struct_2(func_1((_wgslsmith_f_op_f32(trunc(368f)) >= -739f) == any(vec4<bool>(global3.a.x, global3.a.x, global3.a.x, true)), _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(660f * -1298f)), max(~_wgslsmith_sub_u32(u_input.a, 0u), u_input.a)));
    global3 = Struct_1(!(!vec3<bool>(var_2.a.a.x, true, !var_2.a.a.x)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.a.b.x, 264f, 130f, _wgslsmith_f_op_f32(-893f - 135f)), _wgslsmith_f_op_vec4_f32(trunc(global3.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec4<u32>(u_input.a, 26u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 27881u, u_input.a, u_input.a), ~vec4<u32>(62932u, 0u, 4294967295u, u_input.a)) ^ _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a, u_input.a), _wgslsmith_mod_u32(1u, 1u)), select(3059u >> ((u_input.a << (24506u % 32u)) % 32u), ~u_input.a | u_input.a, any(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), 11u)]))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -182f), global2.x));
}

