struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2> = array<bool, 2>(false, false);

var<private> global1: array<bool, 19> = array<bool, 19>(true, false, true, true, false, true, true, false, false, true, false, false, true, false, true, true, false, false, true);

var<private> global2: bool = true;

var<private> global3: Struct_2;

var<private> global4: array<bool, 20> = array<bool, 20>(true, true, true, true, false, true, false, true, false, false, false, false, true, true, false, false, true, false, false, true);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = arg_2.a;
    let var_1 = vec4<f32>(var_0.e, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.e, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1609f + -655f), _wgslsmith_f_op_f32(step(-1000f, global3.a.e)))))) * _wgslsmith_f_op_f32(-723f * global3.a.e)), _wgslsmith_f_op_f32(abs(global3.a.e)));
    var var_2 = global3.c;
    global0 = array<bool, 2>();
    global4 = array<bool, 20>();
    return select(select(!(!select(vec2<bool>(global1[_wgslsmith_index_u32(arg_1.x, 19u)], global0[_wgslsmith_index_u32(8316u, 2u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(55333u, 19u)]), vec2<bool>(global4[_wgslsmith_index_u32(8692u, 20u)], global4[_wgslsmith_index_u32(arg_1.x, 20u)]))), vec2<bool>(-53042i > _wgslsmith_mult_i32(u_input.a, var_0.d.x), select(true, true, false)), select(!(!vec2<bool>(true, global0[_wgslsmith_index_u32(101565u, 2u)])), vec2<bool>(true, true), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(arg_2.b, u_input.b, 4294967295u)) != ~var_0.c.x)), vec2<bool>(true, global1[_wgslsmith_index_u32(~(~arg_1.x << (1u % 32u)), 19u)]), select(!(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(u_input.c, 19u)])), !select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(global3.a.c.x, 2u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 2u)], global0[_wgslsmith_index_u32(var_0.b, 2u)]), vec2<bool>(false, global4[_wgslsmith_index_u32(global3.b, 20u)])), select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(global3.b, 2u)]), vec2<bool>(global4[_wgslsmith_index_u32(arg_1.x, 20u)], global0[_wgslsmith_index_u32(u_input.b, 2u)]), vec2<bool>(global1[_wgslsmith_index_u32(var_0.b, 19u)], global1[_wgslsmith_index_u32(global3.b, 19u)])), select(vec2<bool>(global0[_wgslsmith_index_u32(arg_2.a.c.x, 2u)], false), vec2<bool>(true, true), global0[_wgslsmith_index_u32(arg_1.x, 2u)])), all(select(!vec3<bool>(true, global0[_wgslsmith_index_u32(81871u, 2u)], global0[_wgslsmith_index_u32(var_0.b, 2u)]), select(vec3<bool>(false, global0[_wgslsmith_index_u32(43164u, 2u)], false), vec3<bool>(global1[_wgslsmith_index_u32(41500u, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(arg_1.x, 19u)]), vec3<bool>(global1[_wgslsmith_index_u32(arg_2.a.c.x, 19u)], global4[_wgslsmith_index_u32(38602u, 20u)], false)), any(vec4<bool>(true, false, true, global4[_wgslsmith_index_u32(arg_1.x, 20u)]))))));
}

fn func_2(arg_0: bool) -> vec2<i32> {
    global0 = array<bool, 2>();
    var var_0 = vec4<i32>(global3.c.x, ~abs(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 37053i, -12504i, 25822i), vec4<i32>(global3.a.d.x, 0i, 10308i, u_input.a))), u_input.a, 2147483647i);
    var var_1 = select(select(!vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 2u)] || true), !select(vec2<bool>(global0[_wgslsmith_index_u32(global3.a.b, 2u)], true), select(vec2<bool>(global1[_wgslsmith_index_u32(global3.b, 19u)], global1[_wgslsmith_index_u32(18367u, 19u)]), vec2<bool>(true, true), global4[_wgslsmith_index_u32(u_input.c, 20u)]), func_3(vec3<i32>(-1i, -59718i, 1i), vec4<u32>(u_input.c, 1u, global3.a.b, 1u), Struct_2(global3.a, u_input.b, vec2<i32>(-2147483647i, 4156i)))), vec2<bool>(false, true)), vec2<bool>(true, all(!(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 19u)], global4[_wgslsmith_index_u32(1u, 20u)])))), vec2<bool>(false, !(!(global3.a.b <= 1u))));
    global1 = array<bool, 19>();
    let var_2 = global3.a;
    return -var_0.wy;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec4<f32>) -> bool {
    var var_0 = Struct_2(global3.a, 0u, vec2<i32>(-12309i, _wgslsmith_div_i32(~(arg_1.x & u_input.a), ~32772i)));
    var var_1 = ~_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.a.b, 0u, 5674u, 1u), vec4<u32>(85130u, 1u, 19854u, global3.b) | vec4<u32>(arg_0.a.b, arg_0.b, arg_0.a.b, 15173u)), 1u), 1u);
    let var_2 = global3.a;
    global1 = array<bool, 19>();
    var_0 = Struct_2(arg_0.a, arg_0.a.c.x, func_2(all(vec2<bool>(!global1[_wgslsmith_index_u32(var_2.c.x, 19u)], global1[_wgslsmith_index_u32(1u, 19u)]))));
    return false;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool, arg_3: Struct_1) -> u32 {
    global0 = array<bool, 2>();
    var var_0 = true;
    let var_1 = Struct_2(arg_0, ~62781u, ~_wgslsmith_div_vec2_i32(-vec2<i32>(0i, 9102i), ~(arg_0.d.xy & vec2<i32>(2147483647i, global3.c.x))));
    let var_2 = select(!select(vec4<bool>(arg_3.c.x != arg_0.b, all(arg_1), true, global4[_wgslsmith_index_u32(var_1.b, 20u)] && arg_1.x), vec4<bool>(true, any(arg_1.xz), global1[_wgslsmith_index_u32(~1u, 19u)], all(vec3<bool>(false, false, global0[_wgslsmith_index_u32(arg_0.c.x, 2u)]))), func_3(var_1.a.d, _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, arg_3.b, 4294967295u), vec4<u32>(4294967295u, 35367u, var_1.b, 1u)), var_1).x), select(!vec4<bool>(!global1[_wgslsmith_index_u32(43446u, 19u)], all(vec2<bool>(global4[_wgslsmith_index_u32(11439u, 20u)], false)), false, !global1[_wgslsmith_index_u32(7573u, 19u)]), !select(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(arg_0.c.x, 2u)], true), !vec4<bool>(arg_1.x, true, false, true), select(vec4<bool>(global1[_wgslsmith_index_u32(arg_0.b, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)], true, false), vec4<bool>(true, global1[_wgslsmith_index_u32(var_1.b, 19u)], true, false), false)), !vec4<bool>(global0[_wgslsmith_index_u32(arg_0.b >> (arg_3.c.x % 32u), 2u)], any(arg_1.xx), false, true)), true);
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3.e + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.e)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_3.e, arg_3.e)), -456f)), any(vec2<bool>(func_1(var_1, vec4<i32>(-1i, global3.c.x, u_input.a, arg_0.d.x), vec4<f32>(var_1.a.e, 786f, -298f, -511f)), !global1[_wgslsmith_index_u32(1u, 19u)])) && !global1[_wgslsmith_index_u32(~firstTrailingBit(4294967295u), 19u)]));
    return select(select(arg_3.b, _wgslsmith_add_u32(57803u, arg_0.c.x), any(vec2<bool>(var_2.x, true))), ~(~arg_0.c.x), ~_wgslsmith_mod_u32(countOneBits(12647u), 4294967295u) <= (global3.a.b & ~u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = vec4<f32>(global3.a.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -494f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.e)))), _wgslsmith_f_op_f32(floor(-931f)), _wgslsmith_f_op_f32(-global3.a.e));
    let var_2 = vec4<i32>(global3.a.d.x ^ 4771i, -1i & reverseBits(u_input.a), (global3.c.x | ~reverseBits(1i)) >> (func_4(Struct_1(0i, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.a.c.x, 43439u, 452u, 1u), vec4<u32>(0u, global3.b, 4294967295u, 25816u)), ~global3.a.c, ~vec3<i32>(-5122i, -13021i, global3.a.d.x), global3.a.e), !vec3<bool>(false, global4[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(u_input.b, 19u)]), func_1(Struct_2(global3.a, u_input.c, global3.a.d.xy), vec4<i32>(global3.a.d.x, 52495i, u_input.a, 1i), vec4<f32>(var_1.x, -103f, -226f, var_1.x)) & global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, 1u), 2u)], Struct_1(~u_input.a, u_input.b & u_input.b, vec2<u32>(u_input.c, 0u), vec3<i32>(global3.c.x, global3.a.a, global3.c.x), _wgslsmith_f_op_f32(-var_1.x))) % 32u), _wgslsmith_div_i32(-19912i, global3.c.x));
    global2 = true;
    let var_3 = global3.a.c;
    let var_4 = ~vec4<u32>(1u, 22701u, var_3.x, global3.a.b);
    global2 = select(!any(!select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 19u)], true, var_0), vec3<bool>(true, global1[_wgslsmith_index_u32(var_3.x, 19u)], var_0), vec3<bool>(var_0, false, global1[_wgslsmith_index_u32(var_3.x, 19u)]))), any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), !vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 2u)])), vec2<bool>(true, true), (var_2.x > -2285i) & (-31209i > u_input.a))), true);
    let var_5 = var_1.www;
    let var_6 = Struct_1(-(~1i), var_4.x, ~(~_wgslsmith_div_vec2_u32(firstTrailingBit(global3.a.c), firstTrailingBit(global3.a.c))), _wgslsmith_mod_vec3_i32(var_2.yzz, var_2.xzy), _wgslsmith_f_op_f32(abs(var_5.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-25723i, ~vec2<u32>(u_input.c, abs(1u)), select(~reverseBits(var_6.c), ~(~vec2<u32>(u_input.b, global3.a.b) << ((vec2<u32>(var_4.x, var_3.x) & var_4.xz) % vec2<u32>(32u))), vec2<bool>(true, !select(true, global4[_wgslsmith_index_u32(0u, 20u)], var_0))));
}

