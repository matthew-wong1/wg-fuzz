struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21>;

var<private> global1: array<bool, 11> = array<bool, 11>(false, false, false, true, false, true, false, true, false, true, false);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    let var_0 = Struct_4(Struct_3(5019u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 205f)), Struct_3(~u_input.c.x));
    return -1i;
}

fn func_2(arg_0: bool) -> vec3<bool> {
    global0 = array<u32, 21>();
    let var_0 = 1000f;
    let var_1 = Struct_2(-(u_input.d.yww << (reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(0u, 21u)], 43742u, global0[_wgslsmith_index_u32(2397u, 21u)]), vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(8388u, 21u)], 0u))) % vec3<u32>(32u))), Struct_1(global0[_wgslsmith_index_u32(~(global0[_wgslsmith_index_u32(33912u, 21u)] ^ 11450u), 21u)] ^ ~global0[_wgslsmith_index_u32(4294967295u, 21u)], max(vec4<i32>(~0i, u_input.a, u_input.a << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32442u, 21u)], 21u)] % 32u), u_input.a), u_input.d), countOneBits(-(~(-1i)))), Struct_1(u_input.c.x, vec4<i32>(func_3(), ~(~40508i), u_input.a, countOneBits(u_input.d.x & u_input.d.x)), countOneBits(~u_input.a)));
    return !select(!select(!vec3<bool>(arg_0, true, arg_0), select(vec3<bool>(global1[_wgslsmith_index_u32(74850u, 11u)], arg_0, true), vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 11u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.c.a, 21u)], 11u)], true), global1[_wgslsmith_index_u32(var_1.c.a, 11u)]), all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 11u)], true, false))), select(select(select(vec3<bool>(false, true, true), vec3<bool>(global1[_wgslsmith_index_u32(var_1.b.a, 11u)], arg_0, true), true), !vec3<bool>(global1[_wgslsmith_index_u32(78848u, 11u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 11u)], arg_0), true), select(vec3<bool>(false, global1[_wgslsmith_index_u32(1376u, 11u)], true), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 11u)], false, true), vec3<bool>(true, false, arg_0), arg_0), var_0 <= 340f), !select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 11u)], false), vec3<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 11u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 11u)], arg_0, global1[_wgslsmith_index_u32(62251u, 11u)]))), !any(vec3<bool>(arg_0, arg_0, false)));
}

fn func_4(arg_0: bool) -> u32 {
    global1 = array<bool, 11>();
    let var_0 = Struct_2(u_input.d.yww, Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32((0u << (u_input.b % 32u)) | 1u, 21u)], ~8178u), 21u)], u_input.d, 2145i), Struct_1(_wgslsmith_mult_u32(~u_input.c.x & (57512u << (global0[_wgslsmith_index_u32(5223u, 21u)] % 32u)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~u_input.c, firstTrailingBit(vec4<u32>(u_input.c.x, 46887u, global0[_wgslsmith_index_u32(u_input.c.x, 21u)], 4294967295u))), 21u)]), vec4<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-14260i, u_input.d.x, -69982i), u_input.d.yyx), -1i, -2147483647i), -28944i));
    var var_1 = u_input.c.yz;
    global1 = array<bool, 11>();
    global1 = array<bool, 11>();
    return global0[_wgslsmith_index_u32(~(4294967295u >> (global0[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(1u, _wgslsmith_div_u32(1u, global0[_wgslsmith_index_u32(1u, 21u)])), _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(global0[_wgslsmith_index_u32(1u, 21u)], var_1.x, var_0.b.a, 0u) ^ u_input.c)), 21u)] % 32u)), 21u)];
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<f32>) -> bool {
    global1 = array<bool, 11>();
    var var_0 = u_input.d.yxz;
    let var_1 = select(~_wgslsmith_dot_vec4_u32(select(~vec4<u32>(1u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 4294967295u), vec4<u32>(u_input.c.x, 16524u, 10849u, 4294967295u), any(vec3<bool>(false, false, global1[_wgslsmith_index_u32(59183u, 11u)]))), ~vec4<u32>(20339u, 53655u, u_input.b, u_input.b)), ~func_4(all(func_2(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 11u)]))), var_0.x != _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -439i), abs(var_0.yy)), firstLeadingBit(~(-1i))));
    var_0 = u_input.d.www;
    var var_2 = Struct_2(_wgslsmith_add_vec3_i32(u_input.d.yzx, u_input.d.wzw | u_input.d.zzx), Struct_1(~4294967295u, u_input.d, abs(1i)), Struct_1(~select(var_1, 60995u, global1[_wgslsmith_index_u32(9998u, 11u)]) << (0u % 32u), -(~abs(u_input.d)), ~_wgslsmith_mod_i32(-37872i, _wgslsmith_sub_i32(-9893i, u_input.d.x))));
    return global1[_wgslsmith_index_u32(~var_1, 11u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(u_input.c), ~vec4<u32>(54354u, u_input.b, u_input.b, 2898u)), u_input.b), u_input.d, u_input.d.x);
    global0 = array<u32, 21>();
    global1 = array<bool, 11>();
    let var_1 = !vec2<bool>(global1[_wgslsmith_index_u32(max(reverseBits(~var_0.a), 1u), 11u)], func_1(vec3<f32>(_wgslsmith_f_op_f32(abs(1753f)), _wgslsmith_f_op_f32(select(-1355f, -783f, false)), _wgslsmith_f_op_f32(f32(-1f) * -320f)), vec2<f32>(_wgslsmith_f_op_f32(ceil(-2562f)), _wgslsmith_f_op_f32(-778f - 1000f))));
    var var_2 = vec2<f32>(-579f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -820f), _wgslsmith_f_op_f32(847f - -208f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1355f), -1056f)))));
    global1 = array<bool, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(14561i, -1i, 1i, _wgslsmith_sub_i32(_wgslsmith_add_i32(30849i, var_0.c), ~var_0.c)), u_input.c.wx, 0u);
}

