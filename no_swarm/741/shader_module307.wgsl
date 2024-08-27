struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

var<private> global1: array<bool, 20>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> vec4<f32> {
    global0 = array<u32, 19>();
    let var_0 = -(~1i);
    var var_1 = u_input.b;
    global1 = array<bool, 20>();
    let var_2 = true;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(-639f, 490f))), _wgslsmith_f_op_f32(-786f * _wgslsmith_f_op_f32(f32(-1f) * -1110f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1425f + 486f) * -1293f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-178f, -934f)) + -845f)) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1406f) + -743f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(351f - -386f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -806f))), _wgslsmith_f_op_f32(f32(-1f) * -181f)));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    global1 = array<bool, 20>();
    global0 = array<u32, 19>();
    var var_0 = select(select(!(!select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, global1[_wgslsmith_index_u32(9063u, 20u)], false), vec3<bool>(false, arg_0, false))), select(!select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 20u)], arg_0, arg_0), false), vec3<bool>(global1[_wgslsmith_index_u32(~u_input.b, 20u)], arg_0 | arg_0, true), vec3<bool>(true, true, true)), global1[_wgslsmith_index_u32(~(~(global0[_wgslsmith_index_u32(u_input.a.x, 19u)] << (u_input.a.x % 32u))), 20u)]), select(select(vec3<bool>(!global1[_wgslsmith_index_u32(u_input.a.x, 20u)], any(vec2<bool>(arg_0, true)), true), !vec3<bool>(global1[_wgslsmith_index_u32(0u, 20u)], arg_0, arg_0), !vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(91735u, 19u)], 20u)], false, true)), !select(!vec3<bool>(false, false, arg_0), vec3<bool>(arg_0, global1[_wgslsmith_index_u32(u_input.c, 20u)], arg_0), vec3<bool>(arg_0, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39127u, 19u)], 20u)], false)), !select(vec3<bool>(arg_0, global1[_wgslsmith_index_u32(18685u, 20u)], false), select(vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)], 20u)], false, global1[_wgslsmith_index_u32(46577u, 20u)]), vec3<bool>(true, false, true), vec3<bool>(arg_0, arg_0, true)), select(vec3<bool>(true, false, true), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], true), global1[_wgslsmith_index_u32(72204u, 20u)]))), true);
    global0 = array<u32, 19>();
    var_0 = !vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 19u)], 20u)], !any(!vec4<bool>(true, var_0.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(114563u, 19u)], 20u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 19u)], 20u)])), !(!var_0.x));
    return select(select(!select(vec4<bool>(false, false, var_0.x, false), !vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 20u)], true, false), select(vec4<bool>(var_0.x, var_0.x, arg_0, arg_0), vec4<bool>(false, var_0.x, global1[_wgslsmith_index_u32(u_input.c, 20u)], false), true)), !vec4<bool>(arg_0, var_0.x, arg_0, global1[_wgslsmith_index_u32(49784u, 20u)]), false), !(!select(vec4<bool>(false, false, true, arg_0), !vec4<bool>(false, var_0.x, true, true), global1[_wgslsmith_index_u32(u_input.c, 20u)])), true);
}

fn func_1(arg_0: vec2<u32>, arg_1: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_2()))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, 623f, 868f) + vec4<f32>(-1935f, arg_1, -1000f, -1658f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1277f, arg_1, arg_1, -593f))), vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(2572f + arg_1), -1000f), select(select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(arg_0.x, 20u)]), vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(31569u, 20u)], true), true), vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 19u)], 20u)], global1[_wgslsmith_index_u32(35901u, 20u)], global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(62166u, 19u)], 20u)]), true))))));
    global0 = array<u32, 19>();
    var var_1 = Struct_4(select(vec4<bool>(global1[_wgslsmith_index_u32(97155u, 20u)], global1[_wgslsmith_index_u32(abs(0u), 20u)] | true, _wgslsmith_f_op_f32(-1098f - 462f) != _wgslsmith_div_f32(arg_1, var_0.x), !global1[_wgslsmith_index_u32(44687u, 20u)] | global1[_wgslsmith_index_u32(1u >> (global0[_wgslsmith_index_u32(1893u, 19u)] % 32u), 20u)]), select(vec4<bool>(true, false | global1[_wgslsmith_index_u32(4294967295u, 20u)], true, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, 1u), 20u)]), select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 20u)], global1[_wgslsmith_index_u32(arg_0.x, 20u)], false), select(vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(42173u, 20u)], global1[_wgslsmith_index_u32(32394u, 20u)]), vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(104421u, 19u)], 20u)], false, global1[_wgslsmith_index_u32(22211u, 20u)], global1[_wgslsmith_index_u32(72817u, 20u)]), vec4<bool>(global1[_wgslsmith_index_u32(15304u, 20u)], false, true, global1[_wgslsmith_index_u32(0u, 20u)])), true), select(vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 20u)], true, global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(14294u, 20u)]), func_3(false), !global1[_wgslsmith_index_u32(38038u, 20u)])), true));
    var var_2 = vec2<bool>(!var_1.a.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(u_input.b << (u_input.c % 32u), ~19808u)), 19u)], 20u)]);
    var_1 = Struct_4(var_1.a);
    return global0[_wgslsmith_index_u32(37996u, 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(firstLeadingBit(func_1(u_input.a.yw, _wgslsmith_div_f32(-1073f, 886f))), 4294967295u, u_input.a.x, abs(u_input.a.x & global0[_wgslsmith_index_u32(61749u, 19u)]) << (select(_wgslsmith_clamp_u32(20883u, global0[_wgslsmith_index_u32(u_input.b, 19u)], u_input.a.x), 24838u & global0[_wgslsmith_index_u32(1u, 19u)], func_3(global1[_wgslsmith_index_u32(5610u, 20u)]).x) % 32u));
    var var_1 = Struct_2(Struct_1(min(_wgslsmith_dot_vec4_u32(vec4<u32>(27375u, u_input.c, u_input.a.x, global0[_wgslsmith_index_u32(26233u, 19u)]), reverseBits(u_input.a)), firstTrailingBit(64893u) | 25100u), true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.x, countOneBits(0u)), 19u)], 20u)] && func_3(global0[_wgslsmith_index_u32(2399u, 19u)] < 40893u).x));
    global0 = array<u32, 19>();
    var_1 = Struct_2(Struct_1((global0[_wgslsmith_index_u32(u_input.a.x, 19u)] & ~var_0.x) & abs(reverseBits(var_1.a.a)), true, true));
    let var_2 = Struct_4(!(!vec4<bool>(false, !var_1.a.b, false, global1[_wgslsmith_index_u32(0u, 20u)])));
    let var_3 = var_1.a;
    var var_4 = vec4<bool>(!(!any(var_2.a)), true, false, any(select(vec3<bool>(any(vec3<bool>(true, var_3.c, var_3.b)), all(vec3<bool>(true, var_1.a.b, false)), var_2.a.x), var_2.a.xyz, var_2.a.yzw)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~vec2<u32>(1u, var_0.x)) ^ u_input.a.xx);
}

