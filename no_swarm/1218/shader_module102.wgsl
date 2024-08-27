struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(false, false, false, true)));

var<private> global1: bool = true;

var<private> global2: array<bool, 20>;

var<private> global3: array<f32, 6>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    global3 = array<f32, 6>();
    global1 = true;
    global3 = array<f32, 6>();
    var var_0 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.d, 4294967295u, 0u)), vec3<u32>(~0u, _wgslsmith_add_u32(1u, u_input.a.x), 4294967295u)), ~68375u), u_input.d, 51u);
    let var_1 = ~(u_input.a.xz << (~vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)));
    return -1206f;
}

fn func_2(arg_0: i32, arg_1: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1153f) + _wgslsmith_div_f32(-299f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.d, 6u)], global3[_wgslsmith_index_u32(0u, 6u)]))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-941f, global3[_wgslsmith_index_u32(u_input.d, 6u)], 1591f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-353f, -640f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, global3[_wgslsmith_index_u32(0u, 6u)], -179f, global3[_wgslsmith_index_u32(4294967295u, 6u)])))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -481f, var_0, -238f) * vec4<f32>(-846f, global3[_wgslsmith_index_u32(u_input.a.x, 6u)], -1757f, global3[_wgslsmith_index_u32(u_input.d, 6u)])))))));
    var var_2 = min(vec3<u32>(u_input.d << (0u % 32u), countOneBits(58962u), ~81408u), ~vec3<u32>(u_input.b, 137589u, ~(~26249u)));
    let var_3 = global2[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_2.x, var_2.x), u_input.a.x) ^ ~u_input.d), 20u)];
    var var_4 = -17896i;
    return 2059f;
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(u_input.c.x, -u_input.c.x)))));
    global1 = true;
    global0 = array<Struct_1, 23>();
    let var_1 = Struct_1(vec4<bool>(any(vec4<bool>(global3[_wgslsmith_index_u32(35007u, 6u)] > -165f, true, false, global2[_wgslsmith_index_u32(u_input.a.x, 20u)])), any(arg_0.a.xxx), any(vec3<bool>(true, all(arg_0.a), true)), select(!(global2[_wgslsmith_index_u32(4294967295u, 20u)] | arg_0.a.x), global2[_wgslsmith_index_u32(~u_input.a.x << (max(1u, u_input.d) % 32u), 20u)], true)));
    let var_2 = select(select(!select(arg_0.a.yy, var_1.a.zz, true), vec2<bool>(true, var_1.a.x), select(arg_0.a.xz, !select(vec2<bool>(var_1.a.x, false), var_1.a.ww, true), !select(vec2<bool>(arg_0.a.x, arg_0.a.x), vec2<bool>(true, false), false))), var_1.a.wx, all(select(vec2<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.d, 20u)], arg_0.a.x)), u_input.d <= u_input.d), select(arg_0.a.zz, !arg_0.a.xx, select(var_1.a.wz, vec2<bool>(arg_0.a.x, false), arg_0.a.xx)), select(select(arg_0.a.ww, vec2<bool>(arg_0.a.x, var_1.a.x), var_1.a.zw), var_1.a.zx, !global2[_wgslsmith_index_u32(0u, 20u)]))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(true, any(select(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], global2[_wgslsmith_index_u32(0u, 20u)], false, false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 20u)], true, false, global2[_wgslsmith_index_u32(u_input.d, 20u)]), true), vec4<bool>(true, global2[_wgslsmith_index_u32(17311u, 20u)], false, global2[_wgslsmith_index_u32(4294967295u, 20u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], true, false, true))), global2[_wgslsmith_index_u32(u_input.d, 20u)]), select(vec3<bool>(all(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], false, global2[_wgslsmith_index_u32(u_input.a.x, 20u)], global2[_wgslsmith_index_u32(11050u, 20u)]), vec4<bool>(global2[_wgslsmith_index_u32(1u, 20u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 20u)], global2[_wgslsmith_index_u32(0u, 20u)]), global2[_wgslsmith_index_u32(u_input.d, 20u)])), all(vec2<bool>(global2[_wgslsmith_index_u32(0u, 20u)], false)), !func_1(global0[_wgslsmith_index_u32(u_input.d, 23u)], global3[_wgslsmith_index_u32(u_input.d, 6u)])), select(!(!vec3<bool>(false, false, global2[_wgslsmith_index_u32(u_input.b, 20u)])), vec3<bool>(global2[_wgslsmith_index_u32(~1u, 20u)], !global2[_wgslsmith_index_u32(1u, 20u)], true), any(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], global2[_wgslsmith_index_u32(u_input.d, 20u)], true, true))), vec3<bool>(true, true, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(u_input.a), ~vec4<u32>(u_input.d, 20278u, u_input.a.x, u_input.a.x)), 20u)])), select(vec3<bool>(all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.d, 20u)], global2[_wgslsmith_index_u32(u_input.a.x, 20u)], false)), all(vec4<bool>(true, false, global2[_wgslsmith_index_u32(u_input.b, 20u)], false)), !global2[_wgslsmith_index_u32(u_input.d, 20u)] && (global2[_wgslsmith_index_u32(4294967295u, 20u)] | true)), select(vec3<bool>(!global2[_wgslsmith_index_u32(20219u, 20u)], true, !global2[_wgslsmith_index_u32(11450u, 20u)]), !(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.d, 20u)], false, true)), select(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], global2[_wgslsmith_index_u32(49454u, 20u)], global2[_wgslsmith_index_u32(0u, 20u)]), vec3<bool>(global2[_wgslsmith_index_u32(0u, 20u)], false, global2[_wgslsmith_index_u32(u_input.b, 20u)]), true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.d, 20u)], global2[_wgslsmith_index_u32(u_input.d, 20u)], global2[_wgslsmith_index_u32(0u, 20u)]), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, 11214u), 20u)])), select(select(select(vec3<bool>(true, global2[_wgslsmith_index_u32(38999u, 20u)], global2[_wgslsmith_index_u32(32305u, 20u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], false, global2[_wgslsmith_index_u32(1u, 20u)]), vec3<bool>(true, false, global2[_wgslsmith_index_u32(4294967295u, 20u)])), vec3<bool>(false, true, global2[_wgslsmith_index_u32(u_input.b, 20u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(u_input.d, 20u)])), !(!vec3<bool>(true, global2[_wgslsmith_index_u32(129614u, 20u)], true)), true)));
    let var_1 = global0[_wgslsmith_index_u32(62392u, 23u)];
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-998f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(151602u, 6u)]), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.d, 6u)] * -1000f)))));
    let var_3 = Struct_1(!select(var_1.a, vec4<bool>(true, var_1.a.x, true, func_1(global0[_wgslsmith_index_u32(u_input.d, 23u)], -764f)), vec4<bool>(0i == u_input.c.x, true, false, !global2[_wgslsmith_index_u32(42616u, 20u)])));
    var var_4 = u_input.b;
    let var_5 = var_3;
    global2 = array<bool, 20>();
    var var_6 = ~(~33920u);
    let x = u_input.a;
    s_output = StorageBuffer(853i);
}

