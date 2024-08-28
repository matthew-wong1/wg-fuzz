struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: array<u32, 21> = array<u32, 21>(4788u, 0u, 4294967295u, 8339u, 4294967295u, 37216u, 1u, 26138u, 7298u, 4294967295u, 25170u, 0u, 55780u, 26473u, 0u, 4294967295u, 0u, 48584u, 54946u, 1u, 72854u);

var<private> global1: Struct_2 = Struct_2(true, vec3<u32>(37772u, 4294967295u, 4294967295u), Struct_1(i32(-2147483648), vec4<bool>(true, false, false, true)), 4294967295u, -1i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<f32>, arg_3: vec4<bool>) -> vec2<u32> {
    let var_0 = _wgslsmith_mod_vec2_i32(-abs(~firstTrailingBit(vec2<i32>(-37493i, -31399i))), abs(-vec2<i32>(14896i | global1.c.a, ~global1.e)));
    return abs(firstLeadingBit(~vec2<u32>(~u_input.a, ~global0[_wgslsmith_index_u32(1u, 21u)])));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: bool) -> bool {
    global0 = array<u32, 21>();
    let var_0 = Struct_1(_wgslsmith_div_i32(_wgslsmith_add_i32(-1i, -global1.e), global1.e >> (u_input.a % 32u)) & ~min(abs(u_input.b), global1.e), select(global1.c.b, global1.c.b, !(!select(vec4<bool>(false, false, global1.a, true), vec4<bool>(true, false, arg_2, true), arg_2))));
    var var_1 = all(!vec2<bool>(true, global1.a));
    let var_2 = _wgslsmith_f_op_f32(trunc(-170f));
    let var_3 = global1.c.b.xxw;
    return var_0.b.x;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: i32) -> u32 {
    var var_0 = select(func_3(_wgslsmith_add_vec2_u32(~func_2(vec4<f32>(501f, arg_1, 732f, arg_1), global1.d, vec3<f32>(arg_1, arg_1, arg_1), vec4<bool>(global1.c.b.x, true, global1.a, global1.c.b.x)), global1.b.yy), vec3<u32>(36063u, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], u_input.a), u_input.a) & _wgslsmith_sub_vec3_u32(global1.b, vec3<u32>(0u, u_input.a, 4294967295u)), u_input.b != -_wgslsmith_mult_i32(global1.c.a, -99501i)), !(!(!global1.a)) || (!arg_0 || ((u_input.b >= arg_2) || true)), true);
    global0 = array<u32, 21>();
    global1 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(588f, arg_1, true)))) <= -707f, ~vec3<u32>(~global0[_wgslsmith_index_u32(u_input.a, 21u)] & abs(global0[_wgslsmith_index_u32(52500u, 21u)]), 49140u, 0u), Struct_1(~u_input.b, vec4<bool>(!all(vec4<bool>(arg_0, arg_0, arg_0, false)), false, true, arg_0)), firstTrailingBit((~global0[_wgslsmith_index_u32(1u, 21u)] << (min(28308u, 28103u) % 32u)) >> (_wgslsmith_dot_vec3_u32(global1.b, countOneBits(vec3<u32>(0u, global0[_wgslsmith_index_u32(0u, 21u)], global1.d))) % 32u)), _wgslsmith_add_i32(_wgslsmith_mult_i32(-3413i, _wgslsmith_div_i32(~arg_2, global1.e)), i32(-1i) * -countOneBits(global1.e)));
    var var_1 = all(global1.c.b.wx);
    let var_2 = Struct_2(all(vec3<bool>(true, true, all(global1.c.b))), _wgslsmith_clamp_vec3_u32(global1.b, global1.b, _wgslsmith_add_vec3_u32(global1.b, ~vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.a, 21u)], global1.d))), global1.c, countOneBits(u_input.a), -1i);
    return min(func_2(vec4<f32>(_wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -417f), _wgslsmith_f_op_f32(arg_1 + arg_1), _wgslsmith_f_op_f32(min(-1192f, -1000f))), 1u, _wgslsmith_div_vec3_f32(vec3<f32>(473f, 196f, -1093f), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1023f, arg_1, -854f)))), global1.c.b).x | var_2.d, global0[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1, -789f, 193f, arg_1), vec4<f32>(arg_1, arg_1, arg_1, 313f))))), _wgslsmith_dot_vec4_u32(~(vec4<u32>(9084u, u_input.a, 36204u, 47213u) << (vec4<u32>(var_2.d, global0[_wgslsmith_index_u32(0u, 21u)], 1u, global1.d) % vec4<u32>(32u))), ~(vec4<u32>(u_input.a, 40376u, 15858u, var_2.b.x) << (vec4<u32>(25999u, 4294967295u, 3191u, 4294967295u) % vec4<u32>(32u)))), vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(836f - arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(round(375f)))), select(select(select(global1.c.b, global1.c.b, var_2.c.b), vec4<bool>(global1.c.b.x, global1.c.b.x, false, global1.c.b.x), false || var_2.a), vec4<bool>(all(vec4<bool>(true, true, false, true)), var_2.a, !arg_0, true & var_2.c.b.x), select(!var_2.c.b, !var_2.c.b, !global1.c.b.x))).x, 21u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !global1.c.b.xxw;
    global0 = array<u32, 21>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(func_1(var_0.x, -183f, ~(-23578i)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(min(max(global0[_wgslsmith_index_u32(global1.b.x, 21u)], global1.d), u_input.a), global0[_wgslsmith_index_u32(~u_input.a, 21u)]), 21u)]) << ((u_input.a >> (_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(global1.d, 67980u)), select(abs(global1.b.zy), global1.b.xz, false || global1.a)) % 32u)) % 32u), 21u)];
    var_1 = abs(~func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-102f, -146f, 982f, -718f), vec4<f32>(-832f, -2188f, 668f, 423f), !global1.c.b)), abs(global0[_wgslsmith_index_u32(~0u, 21u)]), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1342f, 160f, -1113f) + vec3<f32>(-257f, -412f, 331f)))), select(!global1.c.b, vec4<bool>(global1.c.b.x, var_0.x, false, global1.c.b.x), true)).x);
    let var_2 = Struct_2(global1.d != ~(~(global0[_wgslsmith_index_u32(u_input.a, 21u)] & global0[_wgslsmith_index_u32(1u, 21u)])), abs(global1.b), Struct_1(-_wgslsmith_sub_i32(-1i, _wgslsmith_clamp_i32(global1.e, -18204i, 1i)), select(!select(vec4<bool>(false, global1.a, var_0.x, false), global1.c.b, false), select(select(vec4<bool>(global1.c.b.x, false, global1.c.b.x, global1.c.b.x), vec4<bool>(true, false, true, false), global1.c.b), global1.c.b, !var_0.x), !select(global1.c.b, global1.c.b, var_0.x))), ~25279u, i32(-1i) * -(~(-2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(29289i);
}

