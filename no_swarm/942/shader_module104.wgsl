struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4> = array<bool, 4>(true, true, false, true);

var<private> global1: array<f32, 3>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<f32>) -> vec3<i32> {
    var var_0 = -634f;
    global0 = array<bool, 4>();
    let var_1 = true;
    global1 = array<f32, 3>();
    let var_2 = Struct_1(1205f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 3u)], 1170f))))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0.zx, arg_0.zy, vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 4u)]))), _wgslsmith_f_op_vec2_f32(ceil(arg_0.zz)))))), -(vec2<i32>(u_input.a.x, u_input.a.x) & max(firstLeadingBit(u_input.a.xy), u_input.a.xz << (u_input.c % vec2<u32>(32u)))), u_input.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(313f, _wgslsmith_f_op_f32(-arg_0.x), true)), -1000f))));
    return firstLeadingBit(vec3<i32>(var_2.c.x, u_input.a.x, ~(-_wgslsmith_mult_i32(var_2.c.x, 0i))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    let var_0 = func_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1[_wgslsmith_index_u32(69030u, 3u)], arg_1.e, global1[_wgslsmith_index_u32(u_input.c.x, 3u)]), vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 3u)], arg_1.e, -285f)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(233f, arg_1.e, -301f) + vec3<f32>(-596f, -250f, global1[_wgslsmith_index_u32(6715u, 3u)])) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(310f, 219f, global1[_wgslsmith_index_u32(0u, 3u)]))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(978f, 814f, global1[_wgslsmith_index_u32(u_input.b, 3u)]))), true)))));
    global0 = array<bool, 4>();
    let var_1 = arg_0;
    global1 = array<f32, 3>();
    var var_2 = vec3<u32>(2409u, ~arg_1.d, _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.d, u_input.c.x, 35314u, arg_1.d), countOneBits(vec4<u32>(arg_1.d, 0u, arg_1.d, arg_1.d))), 1u));
    return _wgslsmith_add_u32(~_wgslsmith_clamp_u32(abs(abs(arg_1.d)), abs(~16416u), 72330u), ~max(_wgslsmith_dot_vec2_u32(u_input.c, _wgslsmith_mod_vec2_u32(var_2.xx, u_input.c)), 2782u));
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = 0u;
    global1 = array<f32, 3>();
    return Struct_2(!(!global0[_wgslsmith_index_u32(~func_2(Struct_2(global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)], vec3<bool>(global0[_wgslsmith_index_u32(var_0, 4u)], false, false)), Struct_1(-1468f, vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 3u)], -912f), vec2<i32>(u_input.a.x, u_input.a.x), u_input.b, -2208f)), 4u)]), all(select(!vec2<bool>(global0[_wgslsmith_index_u32(33000u, 4u)], true), !(!vec2<bool>(global0[_wgslsmith_index_u32(40171u, 4u)], false)), select(global0[_wgslsmith_index_u32(firstTrailingBit(16595u), 4u)], any(vec2<bool>(global0[_wgslsmith_index_u32(1u, 4u)], true)), any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], global0[_wgslsmith_index_u32(55074u, 4u)], false, global0[_wgslsmith_index_u32(var_0, 4u)]))))), select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 4u)], var_0 == 7747u, global0[_wgslsmith_index_u32(43872u, 4u)]), select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(6904u, 4u)]), !vec3<bool>(global0[_wgslsmith_index_u32(958u, 4u)], false, global0[_wgslsmith_index_u32(var_0, 4u)]), select(vec3<bool>(true, global0[_wgslsmith_index_u32(var_0, 4u)], global0[_wgslsmith_index_u32(u_input.b, 4u)]), vec3<bool>(global0[_wgslsmith_index_u32(var_0, 4u)], global0[_wgslsmith_index_u32(var_0, 4u)], global0[_wgslsmith_index_u32(var_0, 4u)]), vec3<bool>(true, false, false))), vec3<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(var_0, 4u)], global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)], false)), all(vec4<bool>(false, global0[_wgslsmith_index_u32(var_0, 4u)], true, false)), global0[_wgslsmith_index_u32(~var_0, 4u)])), !vec3<bool>(false, true, global1[_wgslsmith_index_u32(1u, 3u)] >= arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x))) > _wgslsmith_f_op_f32(f32(-1f) * -288f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global1[_wgslsmith_index_u32(min(firstLeadingBit(u_input.c.x), _wgslsmith_div_u32(abs(u_input.b >> (45524u % 32u)), ~(~u_input.c.x))), 3u)], vec2<f32>(-1000f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 3u)])), ~_wgslsmith_sub_vec2_i32(u_input.a.xw >> (u_input.c % vec2<u32>(32u)), ~vec2<i32>(-18979i, -5776i)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(~4294967295u, u_input.b), u_input.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.b, 3u)])))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(24342u, 3u)]) + 1736f))));
    global1 = array<f32, 3>();
    let var_1 = ~countOneBits(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_mod_u32(var_0.d, var_0.d), u_input.b) | ~1u);
    global1 = array<f32, 3>();
    var var_2 = var_0.d;
    let var_3 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(730f, global1[_wgslsmith_index_u32(24132u, 3u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 3u)]), -1457f))));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-var_0.b.x), var_0.b, countOneBits(select(select(var_0.c, vec2<i32>(1i, -10109i), vec2<bool>(global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(var_1, 4u)])), _wgslsmith_add_vec2_i32(u_input.a.wx, vec2<i32>(var_0.c.x, u_input.a.x)), !var_3.c.zz)) >> (countOneBits(vec2<u32>(select(var_1, 49115u, var_3.b), _wgslsmith_mod_u32(11131u, 48442u))) % vec2<u32>(32u)), ~6934u, global1[_wgslsmith_index_u32(var_1, 3u)]);
    let x = u_input.a;
    s_output = StorageBuffer(-507f, var_0.c.x, _wgslsmith_f_op_f32(floor(-782f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(68472u, 3u)] - _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(4294967295u, 1u), 3u)]))), 1u);
}

