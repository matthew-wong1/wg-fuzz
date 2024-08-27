struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

var<private> global1: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false));

var<private> global2: array<vec3<u32>, 23> = array<vec3<u32>, 23>(vec3<u32>(1u, 37119u, 1u), vec3<u32>(1719u, 0u, 1u), vec3<u32>(1u, 3689u, 4294967295u), vec3<u32>(4294967295u, 49812u, 16789u), vec3<u32>(49500u, 0u, 4294967295u), vec3<u32>(6025u, 1u, 89014u), vec3<u32>(1u, 24517u, 85044u), vec3<u32>(0u, 1u, 21695u), vec3<u32>(38076u, 9691u, 8956u), vec3<u32>(0u, 12528u, 35652u), vec3<u32>(52188u, 4294967295u, 4294967295u), vec3<u32>(19112u, 0u, 56799u), vec3<u32>(34987u, 30021u, 49333u), vec3<u32>(9202u, 61989u, 8584u), vec3<u32>(0u, 19413u, 106866u), vec3<u32>(17773u, 1u, 1u), vec3<u32>(7897u, 57441u, 1u), vec3<u32>(122798u, 24176u, 4294967295u), vec3<u32>(0u, 32064u, 4294967295u), vec3<u32>(55544u, 1u, 24265u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(0u, 12987u, 1u), vec3<u32>(4264u, 0u, 36406u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec3<f32> {
    global1 = array<vec4<bool>, 11>();
    let var_0 = true;
    var var_1 = vec4<bool>(all(global1[_wgslsmith_index_u32(23771u, 11u)]), false || (false == any(!vec4<bool>(var_0, true, var_0, false))), true, any(select(!global1[_wgslsmith_index_u32(0u, 11u)], select(select(global1[_wgslsmith_index_u32(60708u, 11u)], global1[_wgslsmith_index_u32(u_input.b.x, 11u)], vec4<bool>(true, false, true, var_0)), global1[_wgslsmith_index_u32(~u_input.b.x, 11u)], any(vec3<bool>(var_0, true, false))), true)));
    let var_2 = !var_0;
    var var_3 = Struct_2(var_1.wy, _wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.c), u_input.d.xz), Struct_1((u_input.d.x & -u_input.c.x) ^ 2147483647i));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(301f, global0[_wgslsmith_index_u32(18847u, 9u)], 711f) + vec3<f32>(-566f, global0[_wgslsmith_index_u32(70212u, 9u)], global0[_wgslsmith_index_u32(u_input.b.x, 9u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 9u)], 747f, global0[_wgslsmith_index_u32(u_input.b.x, 9u)]) + vec3<f32>(-621f, -328f, global0[_wgslsmith_index_u32(25634u, 9u)]))), vec3<f32>(global0[_wgslsmith_index_u32(~u_input.b.x, 9u)], -378f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 9u)] * global0[_wgslsmith_index_u32(24668u, 9u)]))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, global0[_wgslsmith_index_u32(4294967295u, 9u)], _wgslsmith_f_op_f32(f32(-1f) * -383f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1634f, global0[_wgslsmith_index_u32(22507u, 9u)], global0[_wgslsmith_index_u32(u_input.b.x, 9u)]))) + vec3<f32>(-419f, _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(12689u, 9u)])), -672f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(12222u, 9u)], 1315f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 9u)], global0[_wgslsmith_index_u32(u_input.b.x, 9u)], global0[_wgslsmith_index_u32(60729u, 9u)]), vec3<f32>(global0[_wgslsmith_index_u32(1u, 9u)], -461f, global0[_wgslsmith_index_u32(0u, 9u)]))))), vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 9u)]), 1f, global0[_wgslsmith_index_u32(~29314u, 9u)]))));
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    global1 = array<vec4<bool>, 11>();
    var var_0 = Struct_1(u_input.d.x);
    let var_1 = Struct_1(-11006i);
    var var_2 = _wgslsmith_f_op_vec3_f32(func_3());
    var var_3 = var_0.a;
    return 0u;
}

fn func_4(arg_0: u32) -> Struct_3 {
    global1 = array<vec4<bool>, 11>();
    var var_0 = true;
    var_0 = false & all(vec4<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), false, !all(vec2<bool>(false, true)), 4294967295u <= (u_input.b.x ^ 1u)));
    var var_1 = u_input.a.x;
    var var_2 = 11289u;
    return Struct_3(_wgslsmith_f_op_f32(1592f + -755f));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_4(func_2(abs(~vec4<u32>(u_input.b.x, 0u, 1u, u_input.b.x))));
    let var_1 = arg_3;
    let var_2 = vec3<f32>(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(ceil(var_0.a))), -405f, -791f);
    var var_3 = arg_3;
    var_3 = Struct_1(reverseBits(-16677i));
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec3<f32>) -> vec3<bool> {
    global2 = array<vec3<u32>, 23>();
    var var_0 = vec2<bool>(any(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true))), all(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(false, true, true))));
    var var_1 = min(countOneBits(arg_1), u_input.b.x);
    global0 = array<f32, 9>();
    global0 = array<f32, 9>();
    return select(vec3<bool>(false, !all(!vec3<bool>(var_0.x, true, var_0.x)), !any(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, var_0.x, false), true))), select(vec3<bool>(true, !all(global1[_wgslsmith_index_u32(13352u, 11u)]), true), vec3<bool>(any(vec4<bool>(false, var_0.x, false, var_0.x)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 9u)]) < -437f, any(vec4<bool>(true, var_0.x, var_0.x, var_0.x))), all(vec2<bool>(arg_0.a == -9540i, !var_0.x))), select(select(vec3<bool>(false, true, true), !vec3<bool>(var_0.x, false, var_0.x), !vec3<bool>(true, false, var_0.x)), vec3<bool>(all(!vec2<bool>(false, var_0.x)), _wgslsmith_clamp_i32(arg_0.a, 1i, 0i) <= -2147483647i, true), var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<u32>, 23>();
    let var_0 = countOneBits(-28718i);
    global2 = array<vec3<u32>, 23>();
    var var_1 = !(!all(func_5(func_1(vec4<f32>(295f, -391f, global0[_wgslsmith_index_u32(u_input.b.x, 9u)], global0[_wgslsmith_index_u32(50038u, 9u)]), Struct_3(global0[_wgslsmith_index_u32(4294967295u, 9u)]), Struct_1(var_0), Struct_1(1i)), 4294967295u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-599f, global0[_wgslsmith_index_u32(28848u, 9u)], global0[_wgslsmith_index_u32(u_input.b.x, 9u)])))));
    global2 = array<vec3<u32>, 23>();
    var var_2 = func_4(50725u);
    var_1 = true;
    var var_3 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(216f, -145f, 328f, var_2.a))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(409f, 252f, var_2.a, global0[_wgslsmith_index_u32(53924u, 9u)]) + vec4<f32>(var_2.a, -342f, global0[_wgslsmith_index_u32(u_input.b.x, 9u)], -424f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(533f, var_2.a, 1000f, global0[_wgslsmith_index_u32(u_input.b.x, 9u)]) + vec4<f32>(-503f, global0[_wgslsmith_index_u32(u_input.b.x, 9u)], -1004f, var_2.a))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(561f, global0[_wgslsmith_index_u32(29423u, 9u)], -936f, 529f) + vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 9u)], 1831f, 1062f, 726f)), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 9u)], 193f, var_2.a, -263f), select(vec4<bool>(true, true, true, true), global1[_wgslsmith_index_u32(u_input.b.x, 11u)], global1[_wgslsmith_index_u32(u_input.b.x, 11u)]))))), func_4(_wgslsmith_clamp_u32(u_input.b.x, 4294967295u, 42325u)), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.b.x, 9u)])), -1000f, _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.b.x, 9u)])), _wgslsmith_f_op_f32(-var_2.a)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 9u)], var_2.a, var_2.a, 235f))))), func_4(~u_input.b.x), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.a, 459f, -284f, var_2.a)))), Struct_3(_wgslsmith_f_op_f32(round(var_2.a))), Struct_1(-23632i), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, -1173f, 2165f, 1797f) - vec4<f32>(2150f, var_2.a, global0[_wgslsmith_index_u32(u_input.b.x, 9u)], global0[_wgslsmith_index_u32(u_input.b.x, 9u)])), func_4(9511u), Struct_1(u_input.c.x), func_1(vec4<f32>(356f, var_2.a, var_2.a, -475f), Struct_3(var_2.a), Struct_1(-13872i), Struct_1(-2147483647i)))), func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1313f, global0[_wgslsmith_index_u32(u_input.b.x, 9u)], global0[_wgslsmith_index_u32(u_input.b.x, 9u)], -803f)) - vec4<f32>(-1320f, global0[_wgslsmith_index_u32(u_input.b.x, 9u)], 1729f, global0[_wgslsmith_index_u32(u_input.b.x, 9u)])), func_4(~4294967295u), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-18730i, 5721i, -26713i, 2147483647i), vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, var_0))), Struct_1(abs(u_input.a.x)))), Struct_1(_wgslsmith_mod_i32(2147483647i, -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-322f, var_2.a, 746f), vec3<f32>(-1849f, var_2.a, var_2.a))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1382f, var_2.a, -367f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(534f, global0[_wgslsmith_index_u32(3722u, 9u)])), global0[_wgslsmith_index_u32(min(4294967295u, 1u), 9u)], 156f))));
}

