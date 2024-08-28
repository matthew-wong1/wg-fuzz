struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

var<private> global1: bool;

var<private> global2: vec3<u32> = vec3<u32>(1u, 137595u, 762u);

var<private> global3: array<Struct_2, 20>;

var<private> global4: array<bool, 13> = array<bool, 13>(false, true, false, false, false, false, true, true, false, false, false, false, false);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> f32 {
    var var_0 = vec2<bool>(true, !all(vec4<bool>(any(vec4<bool>(global4[_wgslsmith_index_u32(arg_2, 13u)], global4[_wgslsmith_index_u32(1u, 13u)], global4[_wgslsmith_index_u32(73556u, 13u)], false)), arg_1.c < 336f, true, global4[_wgslsmith_index_u32(arg_2, 13u)])));
    var_0 = !select(vec2<bool>(select(global4[_wgslsmith_index_u32(1552u, 13u)] & false, all(vec4<bool>(false, var_0.x, global4[_wgslsmith_index_u32(36461u, 13u)], global4[_wgslsmith_index_u32(global2.x, 13u)])), global4[_wgslsmith_index_u32(min(1u, 4013u), 13u)]), true), select(select(vec2<bool>(true, true), vec2<bool>(var_0.x, global4[_wgslsmith_index_u32(u_input.e.x, 13u)]), true), !(!vec2<bool>(var_0.x, var_0.x)), !select(vec2<bool>(global4[_wgslsmith_index_u32(arg_2, 13u)], true), vec2<bool>(global4[_wgslsmith_index_u32(1u, 13u)], false), true)), !select(vec2<bool>(true, true), !vec2<bool>(global4[_wgslsmith_index_u32(0u, 13u)], var_0.x), var_0.x));
    global1 = true;
    var var_1 = global3[_wgslsmith_index_u32(0u, 20u)];
    global3 = array<Struct_2, 20>();
    return 1744f;
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: f32) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, ~_wgslsmith_sub_u32(u_input.e.x, u_input.e.x) ^ 1u), 2u)];
    var var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, var_0.b.a), vec2<i32>(_wgslsmith_clamp_i32(-18796i, _wgslsmith_dot_vec2_i32(~u_input.d.zw, vec2<i32>(u_input.d.x, arg_0)), 1i), firstTrailingBit(_wgslsmith_dot_vec3_i32(~u_input.d.xxx, u_input.d.xwx))), vec2<i32>(_wgslsmith_sub_i32(var_0.b.a, i32(-1i) * -arg_2.d.a), 25124i));
    let var_2 = _wgslsmith_f_op_f32(func_3(0i, Struct_1(arg_2.d.a, var_0.d.b, 612f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.b.d))), u_input.b));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, -15266i, 3732i, -19568i), vec4<i32>(arg_0, u_input.c, arg_2.d.a, u_input.d.x)) & _wgslsmith_dot_vec3_i32(vec3<i32>(-28203i, var_1.x, 15035i), vec3<i32>(-82109i, arg_0, -1i)), Struct_1(arg_2.d.b, 0i, _wgslsmith_f_op_f32(max(1004f, var_0.b.d.x)), arg_1), _wgslsmith_mod_u32(~global2.x, 43864u))), -207f, arg_2.b.d.x) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(446f, 1f, _wgslsmith_f_op_f32(round(-1450f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.c, arg_1.x, arg_2.d.c))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.b.c, -137f)), arg_3))));
    global1 = any(select(select(vec4<bool>(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.x, u_input.a), 13u)], true, arg_0 != u_input.c, false), select(select(vec4<bool>(arg_2.a, arg_2.c.x, false, global4[_wgslsmith_index_u32(65941u, 13u)]), vec4<bool>(var_0.c.x, var_0.c.x, arg_2.c.x, false), vec4<bool>(arg_2.a, arg_2.c.x, false, true)), !vec4<bool>(false, global4[_wgslsmith_index_u32(68691u, 13u)], true, true), var_0.a), select(select(vec4<bool>(var_0.a, arg_2.a, true, true), vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.b, 13u)], global4[_wgslsmith_index_u32(0u, 13u)], var_0.c.x), vec4<bool>(false, true, true, true)), !vec4<bool>(true, var_0.a, global4[_wgslsmith_index_u32(u_input.e.x, 13u)], false), true)), !vec4<bool>(false, !global4[_wgslsmith_index_u32(global2.x, 13u)], false, 81043u < global2.x), var_0.a));
    return global2.x;
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = !global4[_wgslsmith_index_u32(41039u, 13u)];
    let var_1 = _wgslsmith_div_u32(0u, _wgslsmith_add_u32(1u, firstTrailingBit(~(~global2.x))));
    var var_2 = global0[_wgslsmith_index_u32(~(~func_4(firstTrailingBit(1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1289f, 1000f) - vec2<f32>(955f, -695f))), global0[_wgslsmith_index_u32(4294967295u, 2u)], _wgslsmith_f_op_f32(func_3(-52937i, Struct_1(1i, u_input.d.x, 621f, vec2<f32>(-376f, -336f)), u_input.b)))), 2u)];
    global0 = array<Struct_2, 2>();
    var var_3 = var_1 << (~(~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(45835u, 0u)), min(global2.xy, global2.xx))) % 32u);
    return true;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2) -> bool {
    let var_0 = abs(u_input.e.x);
    global3 = array<Struct_2, 20>();
    global0 = array<Struct_2, 2>();
    var var_1 = firstLeadingBit(select(max(~(~u_input.e.www), u_input.e.www >> (~vec3<u32>(0u, 111255u, var_0) % vec3<u32>(32u))), u_input.e.wzz, select(!select(vec3<bool>(false, true, true), vec3<bool>(true, arg_1.c.x, arg_1.c.x), vec3<bool>(true, true, false)), vec3<bool>(true, true, func_2(11772u)), global4[_wgslsmith_index_u32(32089u, 13u)])));
    let var_2 = global3[_wgslsmith_index_u32(~61480u, 20u)];
    return all(vec2<bool>(arg_1.a, global4[_wgslsmith_index_u32(max(~_wgslsmith_dot_vec4_u32(u_input.e, u_input.e), global2.x), 13u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(1u, 20u)];
    global1 = !(!func_1(reverseBits(u_input.d.zx), Struct_2(var_0.a, var_0.b, var_0.c, var_0.b))) && var_0.a;
    global1 = false;
    var var_1 = vec4<f32>(497f, _wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, var_0.b.b), u_input.d.yw)), vec2<i32>(1i, ~u_input.d.x)), Struct_1(max(u_input.c, var_0.d.a), var_0.d.b, var_0.d.d.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.d.x, var_0.d.d.x) * _wgslsmith_div_vec2_f32(vec2<f32>(-1393f, var_0.b.d.x), vec2<f32>(172f, var_0.b.d.x)))), ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 34005u, u_input.a, 0u), u_input.e), u_input.e))), -102f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(firstLeadingBit(_wgslsmith_mult_i32(17466i, -60291i)), Struct_1(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, 4368i, 2147483647i), u_input.d.yzz), 1047f, _wgslsmith_f_op_vec2_f32(step(var_0.b.d, var_0.d.d))), _wgslsmith_mult_u32(~10168u, 1u))))));
    let var_2 = global3[_wgslsmith_index_u32(firstTrailingBit(u_input.e.x), 20u)];
    let var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(5176u, select(227u, ~(~global2.x), global4[_wgslsmith_index_u32(u_input.e.x, 13u)])), 2u)];
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.d.x, var_0.b.c, var_0.b.d.x, _wgslsmith_div_f32(-572f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.d.x)))));
    global1 = !(!var_0.c.x || all(!(!vec2<bool>(var_3.c.x, global4[_wgslsmith_index_u32(global2.x, 13u)]))));
    global1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.a, var_0.b.d, vec4<u32>(1u, _wgslsmith_div_u32(u_input.e.x, reverseBits(global2.x)), func_4(var_3.d.b, var_1.wy, Struct_2(true, Struct_1(u_input.d.x, -2147483647i, var_2.b.d.x, var_0.b.d), var_2.c, var_0.d), -789f), 1u) << (vec4<u32>(u_input.b, _wgslsmith_add_u32(4294967295u ^ global2.x, firstLeadingBit(global2.x)), ~1u, 1u) % vec4<u32>(32u)));
}

