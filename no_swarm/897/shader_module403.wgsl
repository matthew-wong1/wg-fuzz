struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(1u, 18684u, 4294967295u), vec3<u32>(61765u, 0u, 34459u), vec3<u32>(0u, 3355u, 0u), vec3<u32>(41153u, 4294967295u, 0u), vec3<u32>(0u, 12911u, 4294967295u), vec3<u32>(0u, 0u, 0u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(68490u, 0u, 1u), vec3<u32>(4294967295u, 12814u, 1u), vec3<u32>(1u, 63592u, 0u), vec3<u32>(46346u, 20744u, 0u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(34955u, 63316u, 45164u), vec3<u32>(4294967295u, 31867u, 0u), vec3<u32>(1u, 0u, 23773u), vec3<u32>(39830u, 0u, 37686u), vec3<u32>(4294967295u, 43317u, 70237u), vec3<u32>(56207u, 65782u, 1u), vec3<u32>(4294967295u, 4294967295u, 55763u), vec3<u32>(0u, 73495u, 0u), vec3<u32>(23762u, 1u, 1u), vec3<u32>(4294967295u, 4294967295u, 43732u), vec3<u32>(427u, 0u, 0u), vec3<u32>(1u, 51246u, 4294967295u), vec3<u32>(4294967295u, 9869u, 14826u), vec3<u32>(75688u, 26569u, 1u), vec3<u32>(0u, 21061u, 4294967295u), vec3<u32>(0u, 26715u, 4844u));

var<private> global1: Struct_2 = Struct_2(vec4<i32>(i32(-2147483648), 2147483647i, -1030i, i32(-2147483648)));

var<private> global2: f32 = 462f;

var<private> global3: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global4: array<bool, 9> = array<bool, 9>(false, true, true, true, false, true, false, true, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<f32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1264f, arg_0.x) + arg_0.zw);
    let var_1 = abs(_wgslsmith_mod_u32(u_input.d.x, u_input.c));
    var var_2 = !select(!vec4<bool>(global4[_wgslsmith_index_u32(u_input.e | 1u, 9u)], all(vec4<bool>(global4[_wgslsmith_index_u32(70849u, 9u)], false, global3.x, global3.x)), all(vec3<bool>(global4[_wgslsmith_index_u32(u_input.b, 9u)], false, global3.x)), global3.x & false), select(select(!vec4<bool>(true, global3.x, false, global3.x), select(vec4<bool>(global4[_wgslsmith_index_u32(0u, 9u)], global4[_wgslsmith_index_u32(0u, 9u)], global4[_wgslsmith_index_u32(4294967295u, 9u)], true), vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.c, 9u)], true, global4[_wgslsmith_index_u32(0u, 9u)]), global4[_wgslsmith_index_u32(var_1, 9u)]), select(vec4<bool>(global3.x, false, global3.x, true), vec4<bool>(false, global4[_wgslsmith_index_u32(4294967295u, 9u)], global4[_wgslsmith_index_u32(76075u, 9u)], false), global3.x)), vec4<bool>(global4[_wgslsmith_index_u32(var_1, 9u)], global3.x, !global3.x, global4[_wgslsmith_index_u32(var_1, 9u)]), select(vec4<bool>(true, false, global3.x, true), !vec4<bool>(global3.x, true, global4[_wgslsmith_index_u32(0u, 9u)], global4[_wgslsmith_index_u32(var_1, 9u)]), !global3.x)), !vec4<bool>(true, select(true, global3.x, true), global4[_wgslsmith_index_u32(~23379u, 9u)], -2147483647i < global1.a.x));
    global2 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_3 = Struct_2(global1.a);
    return !(!select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, var_2.x, global4[_wgslsmith_index_u32(var_1, 9u)], global4[_wgslsmith_index_u32(u_input.c, 9u)]), vec4<bool>(global4[_wgslsmith_index_u32(6140u, 9u)], global4[_wgslsmith_index_u32(var_1, 9u)], false, global4[_wgslsmith_index_u32(u_input.d.x, 9u)])), select(vec4<bool>(var_2.x, var_2.x, global4[_wgslsmith_index_u32(u_input.c, 9u)], false), vec4<bool>(var_2.x, true, global3.x, global3.x), vec4<bool>(global3.x, true, true, true)), var_2.x | false), select(!vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 9u)], global3.x, false), !vec4<bool>(false, false, true, global3.x), vec4<bool>(global4[_wgslsmith_index_u32(10053u, 9u)], global4[_wgslsmith_index_u32(82742u, 9u)], global3.x, global3.x)), true));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(!global3.yzw, !arg_2.a.zz, ~(~arg_2.c));
    global2 = arg_0.x;
    var var_1 = Struct_2(global1.a);
    global3 = select(select(select(select(vec4<bool>(false, global3.x, global3.x, true), vec4<bool>(false, arg_2.b.x, true, arg_2.a.x), 84737u <= var_0.c), !func_3(vec4<f32>(arg_0.x, 578f, arg_0.x, arg_0.x)), vec4<bool>(true, true, !var_0.a.x, true | global4[_wgslsmith_index_u32(arg_2.c, 9u)])), select(!func_3(vec4<f32>(arg_0.x, arg_0.x, -1092f, arg_0.x)), vec4<bool>(any(arg_2.a), true, all(vec3<bool>(var_0.b.x, global4[_wgslsmith_index_u32(u_input.e, 9u)], global3.x)), any(vec4<bool>(arg_2.a.x, false, false, global4[_wgslsmith_index_u32(var_0.c, 9u)]))), vec4<bool>(select(global4[_wgslsmith_index_u32(var_0.c, 9u)], global4[_wgslsmith_index_u32(4294967295u, 9u)], false), var_0.a.x || true, all(global3.yw), true)), true), !vec4<bool>(false, all(vec2<bool>(global4[_wgslsmith_index_u32(u_input.d.x, 9u)], var_0.a.x)), any(!vec4<bool>(global4[_wgslsmith_index_u32(1u, 9u)], false, arg_2.a.x, global4[_wgslsmith_index_u32(1u, 9u)])), global3.x & true), arg_0.x > arg_0.x);
    let var_2 = arg_0.x > arg_0.x;
    return global3.xyy;
}

fn func_1(arg_0: vec2<f32>) -> i32 {
    var var_0 = !select(vec3<bool>(true, global3.x, any(func_2(vec2<f32>(arg_0.x, 1000f), vec4<i32>(-8664i, global1.a.x, global1.a.x, -5248i), Struct_1(vec3<bool>(global4[_wgslsmith_index_u32(u_input.e, 9u)], true, global4[_wgslsmith_index_u32(u_input.a.x, 9u)]), vec2<bool>(global3.x, global4[_wgslsmith_index_u32(u_input.c, 9u)]), u_input.a.x)))), func_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1177f, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1106f, -181f, arg_0.x, -176f))))).yww, func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(420f, 429f, arg_0.x, -331f), vec4<f32>(1360f, -985f, 890f, arg_0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-405f, arg_0.x, 1448f, -390f)))).zyz);
    let var_1 = u_input.c;
    global0 = array<vec3<u32>, 28>();
    global1 = Struct_2(global1.a);
    var var_2 = abs(global1.a.xyy);
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.d.xz;
    var_0 = vec2<u32>(~var_0.x, ~39996u);
    global4 = array<bool, 9>();
    let var_1 = -43028i;
    var var_2 = Struct_2(vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, var_1, 2147483647i, var_1), vec4<i32>(-33541i, 0i, 48466i, 2147483647i)) >> (~min(1u, 40860u) % 32u), -select(func_1(vec2<f32>(916f, -776f)), -18448i, true), reverseBits(-35247i) | global1.a.x, 0i));
    global1 = Struct_2(global1.a);
    global1 = Struct_2(var_2.a | global1.a);
    let var_3 = Struct_1(!(!global3.zxw), global3.yz, var_0.x);
    var var_4 = select(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1661f, -1091f, 1344f, 1000f) - vec4<f32>(285f, 147f, 150f, -519f)))), vec4<bool>(true || any(global3.xww), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(631f))) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(173f, 307f)), 1276f, true)), false), true);
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>((global1.a.x | var_2.a.x) & var_2.a.x, ~(-global1.a.x), 64902i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1194f, 1960f, -434f, -897f) + vec4<f32>(680f, -832f, -193f, -522f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1120f, 1414f, 1785f, -645f), vec4<f32>(104f, 1000f, 2035f, -248f)), var_3.a.x)), vec4<f32>(1234f, -1346f, 327f, _wgslsmith_f_op_f32(ceil(-673f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2435f + 515f) + 846f) + -1259f)));
}

