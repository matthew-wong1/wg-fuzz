struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: bool,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 6>;

var<private> global1: array<f32, 14>;

var<private> global2: array<vec3<bool>, 21> = array<vec3<bool>, 21>(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true));

var<private> global3: vec2<u32> = vec2<u32>(114475u, 1u);

var<private> global4: array<i32, 8> = array<i32, 8>(2147483647i, 42873i, -55390i, -385i, -20559i, -21957i, 1946i, -1i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> u32 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(-828f - _wgslsmith_f_op_f32(step(-1314f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 14u)], _wgslsmith_div_f32(-642f, arg_1.e.x)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0.x, 14u)] + 868f))))));
    global4 = array<i32, 8>();
    let var_2 = Struct_1(vec3<bool>(any(select(select(vec2<bool>(arg_1.a.x, arg_1.d), arg_1.a.xz, arg_1.a.yx), select(vec2<bool>(true, true), arg_1.a.yz, arg_1.a.x), select(arg_1.a.xy, arg_1.a.zy, true))), any(vec4<bool>(arg_1.a.x, true, !arg_1.a.x, true)), all(vec2<bool>(false, false)) && (_wgslsmith_f_op_f32(round(arg_1.c.x)) <= -437f)), ~select(~_wgslsmith_mod_vec3_u32(vec3<u32>(66583u, 1u, 0u), vec3<u32>(global3.x, arg_0.x, 41841u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 5355u, arg_0.x), arg_0) & ~arg_0, all(vec4<bool>(true, false, arg_1.a.x, false))), arg_1.c, false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_1.e))))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.e.x)));
    return 10018u;
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_1(!global2[_wgslsmith_index_u32(func_3(~countOneBits(vec3<u32>(global3.x, u_input.b, u_input.b)), Struct_1(!global2[_wgslsmith_index_u32(1u, 21u)], _wgslsmith_div_vec3_u32(vec3<u32>(0u, global3.x, 24340u), vec3<u32>(u_input.b, 62741u, global3.x)), vec3<f32>(-291f, 1086f, 1507f), false, vec4<f32>(arg_0.x, arg_0.x, 177f, 1143f))), 21u)], countOneBits(~vec3<u32>(u_input.b, min(14816u, u_input.b), global3.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(7933u, 14u)], arg_0.x, 805f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, global1[_wgslsmith_index_u32(0u, 14u)], arg_0.x), vec3<f32>(arg_0.x, 1210f, 765f), true)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1[_wgslsmith_index_u32(global3.x, 14u)], 1201f, global1[_wgslsmith_index_u32(global3.x, 14u)])))))), all(vec4<bool>(true, all(vec4<bool>(false, true, true, false)), true, true)) | !(!(global4[_wgslsmith_index_u32(1u, 8u)] >= -2147483647i)), vec4<f32>(425f, global1[_wgslsmith_index_u32(global3.x, 14u)], -793f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, u_input.b), 14u)])), 583f, !all(vec4<bool>(false, false, false, false))))));
    let var_1 = select(min((vec3<i32>(1i, 1i, 1i) & -vec3<i32>(-56266i, global4[_wgslsmith_index_u32(1u, 8u)], global4[_wgslsmith_index_u32(61394u, 8u)])) >> (var_0.b % vec3<u32>(32u)), vec3<i32>(29905i, _wgslsmith_add_i32(50788i << (var_0.b.x % 32u), max(1i, global4[_wgslsmith_index_u32(0u, 8u)])), _wgslsmith_div_i32(u_input.a, 0i << (0u % 32u)))), vec3<i32>(25217i, -50871i, 0i), vec3<bool>(var_0.d, var_0.a.x, !var_0.a.x));
    let var_2 = vec3<bool>(var_0.a.x, true, false);
    global3 = abs(~_wgslsmith_add_vec2_u32(countOneBits(select(vec2<u32>(43213u, var_0.b.x), vec2<u32>(5730u, 1u), var_2.x)), ~firstLeadingBit(vec2<u32>(0u, 22937u))));
    let var_3 = select(var_1.yx, var_1.xx, all(var_2.xy));
    return Struct_1(vec3<bool>(any(!var_0.a.zy) & true, true, (4294967295u == max(global3.x, 4294967295u)) && false), (var_0.b & ~_wgslsmith_mult_vec3_u32(vec3<u32>(global3.x, var_0.b.x, var_0.b.x), var_0.b)) & var_0.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(var_0.e.x + _wgslsmith_f_op_f32(step(-479f, global1[_wgslsmith_index_u32(23739u, 14u)]))), var_0.c.x)), false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.e - vec4<f32>(arg_0.x, 543f, global1[_wgslsmith_index_u32(43913u, 14u)], -1650f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 14u)], 202f, -524f, arg_0.x) - vec4<f32>(arg_0.x, global1[_wgslsmith_index_u32(var_0.b.x, 14u)], var_0.c.x, var_0.c.x))))));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = func_2(vec2<f32>(-259f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(global3.x, 14u)], 847f))) * global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, u_input.b) ^ _wgslsmith_mult_u32(46447u, arg_0), 14u)])));
    return Struct_1(vec3<bool>(false, var_0.d, !any(!vec4<bool>(var_0.d, false, true, var_0.d))), ~_wgslsmith_mod_vec3_u32(firstTrailingBit(func_2(var_0.c.yy).b), ~var_0.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(301f, 275f), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, u_input.b), 14u)])), var_0.c.x, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(44008u, 14u)] + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(47867u, 14u)] * global1[_wgslsmith_index_u32(global3.x, 14u)])))), var_0.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.e + _wgslsmith_f_op_vec4_f32(abs(var_0.e)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.e, var_0.e))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~_wgslsmith_mod_u32(0u, global3.x));
    global0 = array<vec4<i32>, 6>();
    var var_1 = max(~(-(global4[_wgslsmith_index_u32(1u, 8u)] & -1i)), _wgslsmith_div_i32(~(global4[_wgslsmith_index_u32(func_2(vec2<f32>(286f, -275f)).b.x, 8u)] & 3500i), firstLeadingBit(~global4[_wgslsmith_index_u32(62988u, 8u)] | (global4[_wgslsmith_index_u32(var_0.b.x, 8u)] ^ u_input.a))));
    let var_2 = !(!vec4<bool>(true, false, func_1(u_input.b).e.x >= 665f, (false || var_0.d) == true));
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c.x), global1[_wgslsmith_index_u32(~u_input.b, 14u)])));
}

