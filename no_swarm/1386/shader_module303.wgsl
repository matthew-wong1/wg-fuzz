struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec2<f32>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2> = array<f32, 2>(110f, -330f);

var<private> global1: array<u32, 31> = array<u32, 31>(1u, 4294967295u, 4294967295u, 4294967295u, 17507u, 3055u, 1u, 15263u, 26241u, 0u, 4294967295u, 0u, 1u, 12996u, 0u, 4294967295u, 56688u, 1579u, 61127u, 82093u, 10462u, 4294967295u, 32850u, 39318u, 0u, 63674u, 41339u, 1u, 4294967295u, 57898u, 4294967295u);

var<private> global2: Struct_1;

var<private> global3: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<u32>) -> f32 {
    var var_0 = Struct_1(all(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, ~(~u_input.b.x)), 8u)]), vec2<bool>(arg_0.x, all(vec4<bool>(!global2.e.x, global2.a && arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1, global2.c.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global2.c)) + vec2<f32>(584f, global0[_wgslsmith_index_u32(u_input.b.x, 2u)]))))), any(arg_0.zy), select(!(!(!vec3<bool>(arg_0.x, false, global2.e.x))), select(arg_0, arg_0, 27422u < _wgslsmith_mult_u32(u_input.b.x, 35107u)), global2.a));
    var_0 = Struct_1(!(arg_1 >= 242f), select(vec2<bool>(global2.e.x, var_0.d), select(arg_0.zz, arg_0.xy, vec2<bool>(global1[_wgslsmith_index_u32(50746u, 31u)] < arg_2.x, u_input.c.x >= -21729i)), var_0.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global2.c))), any(select(select(!global2.e, select(vec3<bool>(arg_0.x, true, var_0.d), vec3<bool>(var_0.e.x, global2.a, global2.e.x), vec3<bool>(arg_0.x, false, global2.b.x)), select(arg_0, vec3<bool>(var_0.e.x, global2.b.x, true), vec3<bool>(false, arg_0.x, true))), global3[_wgslsmith_index_u32(u_input.b.x, 8u)], global2.e)), !(!select(vec3<bool>(var_0.b.x, global2.b.x, global2.d), vec3<bool>(arg_0.x, false, global2.a), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, 0u), 8u)])));
    let var_1 = Struct_2(Struct_1(true, global2.b, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -497f) + -697f), _wgslsmith_f_op_f32(-1839f + _wgslsmith_f_op_f32(685f * 616f))), true, select(select(vec3<bool>(var_0.b.x, false, arg_0.x), var_0.e, var_0.e), select(var_0.e, !var_0.e, true), global3[_wgslsmith_index_u32(u_input.b.x, 8u)])), ~(~1u & select(arg_2.x, _wgslsmith_clamp_u32(6041u, 1u, arg_2.x), true)));
    var var_2 = Struct_3(22637i);
    var var_3 = true;
    return _wgslsmith_f_op_f32(trunc(495f));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_3) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -732f)), global0[_wgslsmith_index_u32(4294967295u, 2u)])) - -2513f);
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: i32, arg_3: Struct_3) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2.c.x), global0[_wgslsmith_index_u32(28394u, 2u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.x, global2.c.x))), vec2<f32>(_wgslsmith_f_op_f32(func_2(vec3<bool>(global2.b.x, global2.e.x, global2.e.x), -424f, firstLeadingBit(arg_0.yz))), 1045f)) - global2.c);
    let var_1 = 0i > max(-1i | _wgslsmith_dot_vec2_i32(-u_input.c, abs(vec2<i32>(arg_3.a, 10326i))), 1i);
    global2 = Struct_1(global2.e.x, !vec2<bool>(global2.a, true), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(select(1470f, _wgslsmith_f_op_f32(func_3(vec3<bool>(false, false, true), 32570u, arg_3)), true)), -1282f))), global2.e.x, vec3<bool>(!(20961u != u_input.b.x), !(global1[_wgslsmith_index_u32(1u, 31u)] == _wgslsmith_mod_u32(0u, global1[_wgslsmith_index_u32(0u, 31u)])), false));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1407f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(354f, _wgslsmith_f_op_f32(-global2.c.x)))), -430f), vec3<f32>(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(5528u, 29258u, _wgslsmith_div_u32(global1[_wgslsmith_index_u32(arg_0.x, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)])), 2u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-849f - global2.c.x), var_0.x, any(vec4<bool>(true, var_1, var_1, var_1))))), 996f)));
    var var_3 = arg_3;
    return countOneBits(vec4<u32>(reverseBits(~0u), _wgslsmith_mod_u32(arg_0.x, 0u), global1[_wgslsmith_index_u32(41117u, 31u)], 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(select(~(~firstLeadingBit(vec4<u32>(u_input.b.x, global1[_wgslsmith_index_u32(4294967295u, 31u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 31u)], 31u)]))), vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 31u)], 31u)], 45863u, u_input.b.x, global1[_wgslsmith_index_u32(26325u, 31u)]), func_1(u_input.b, 952f, u_input.a.x, Struct_3(17358i))), _wgslsmith_sub_u32(~u_input.b.x, 36303u >> (u_input.b.x % 32u)), ~20666u, ~select(u_input.b.x, 0u, global2.e.x)), !(!select(vec4<bool>(global2.b.x, false, false, false), vec4<bool>(false, false, false, global2.e.x), vec4<bool>(true, global2.a, global2.e.x, global2.d)))));
    var_0 = reverseBits(vec4<u32>(var_0.x, 4294967295u, 50655u, 4294967295u) | (vec4<u32>(u_input.b.x, var_0.x ^ 31495u, 4183u, 45668u) >> (_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(82661u, 89779u, var_0.x, 23912u), vec4<u32>(21754u, 4294967295u, var_0.x, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, global1[_wgslsmith_index_u32(var_0.x, 31u)], 1u, 4294967295u), vec4<u32>(1u, u_input.b.x, 5634u, 4294967295u))) % vec4<u32>(32u))));
    let var_1 = vec4<bool>(global2.a, all(global2.b), !(_wgslsmith_div_f32(-147f, _wgslsmith_f_op_f32(func_2(global2.e, -1000f, vec2<u32>(56553u, 1u)))) > 423f), false);
    var var_2 = select(all(select(var_1, select(var_1, vec4<bool>(global2.e.x, false, true, var_1.x), var_1), select(select(vec4<bool>(var_1.x, global2.e.x, false, var_1.x), vec4<bool>(var_1.x, global2.d, global2.a, true), vec4<bool>(var_1.x, false, true, var_1.x)), vec4<bool>(false, true, false, global2.e.x), var_1))), global2.d, global2.b.x);
    var var_3 = !any(!vec3<bool>(global2.e.x && true, true, var_1.x));
    global3 = array<vec3<bool>, 8>();
    global0 = array<f32, 2>();
    global3 = array<vec3<bool>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(select(~vec4<i32>(u_input.a.x, 1398i, 0i, 22437i), vec4<i32>(u_input.c.x, 0i, 1i, 82042i), vec4<bool>(false, true, var_1.x, global2.d))), firstTrailingBit(((vec4<u32>(u_input.b.x, 4294967295u, var_0.x, u_input.b.x) >> (vec4<u32>(u_input.b.x, 14169u, var_0.x, 2606u) % vec4<u32>(32u))) & vec4<u32>(0u, 4294967295u, 0u, 51920u)) ^ (vec4<u32>(u_input.b.x, 0u, u_input.b.x, global1[_wgslsmith_index_u32(4294967295u, 31u)]) << (vec4<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], u_input.b.x, global1[_wgslsmith_index_u32(0u, 31u)], 40014u) % vec4<u32>(32u)))));
}

