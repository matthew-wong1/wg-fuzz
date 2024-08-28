struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: bool,
    d: f32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 21> = array<vec3<bool>, 21>(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false));

var<private> global1: array<f32, 29>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    global0 = array<vec3<bool>, 21>();
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 1u, 1u)), ~vec3<u32>(53048u, 32057u, 4294967295u)), ~(~_wgslsmith_clamp_u32(0u, 4294967295u, 4294967295u))) == 14959u;
    var var_1 = Struct_1(29074i, countOneBits(arg_0.b) | select(-vec3<i32>(-2147483647i, -13474i, arg_0.a), ~vec3<i32>(1i, arg_1.a, arg_0.a), true), !any(select(global0[_wgslsmith_index_u32(1u, 21u)], vec3<bool>(true, false, false), vec3<bool>(true, arg_1.c, arg_0.c))), _wgslsmith_f_op_f32(f32(-1f) * -565f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.e, vec3<f32>(521f, arg_1.d, global1[_wgslsmith_index_u32(76130u, 29u)])) + arg_1.e)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-113f, _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(5103u, 29u)])), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(73453u, 29u)] - arg_1.d)))));
    var_0 = false;
    var var_2 = ~abs(countOneBits(~firstLeadingBit(vec3<u32>(1727u, 1u, 53598u))));
    return !(~_wgslsmith_mult_u32(24271u, 61u) > ~max(_wgslsmith_clamp_u32(var_2.x, 4294967295u, var_2.x), 65737u));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> vec3<bool> {
    var var_0 = select(vec4<bool>(arg_0.c, arg_0.c, true, !arg_0.c), vec4<bool>(any(select(!vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(true, false), vec2<bool>(false, arg_0.c))), !func_3(Struct_1(1i, vec3<i32>(-2147483647i, -2147483647i, 0i), false, 1767f, vec3<f32>(arg_1.x, 1145f, global1[_wgslsmith_index_u32(1u, 29u)])), arg_0), true, select(true != arg_0.c, arg_0.c, false) || false), select(select(!(!vec4<bool>(true, true, false, arg_0.c)), vec4<bool>(true, !arg_0.c, u_input.a.x >= 50505i, arg_0.b.x < -2147483647i), all(!vec4<bool>(arg_0.c, true, true, true))), vec4<bool>(select(true, arg_0.c, true), true, arg_0.c, (true & arg_0.c) && true), !select(vec4<bool>(arg_0.c, false, arg_0.c, true), vec4<bool>(arg_0.c, false, true, true), !vec4<bool>(arg_0.c, true, true, true))));
    var var_1 = _wgslsmith_dot_vec2_i32(u_input.a.wy, u_input.a.xz);
    let var_2 = arg_1.x;
    var var_3 = arg_0;
    var_1 = -(~(-32968i));
    return global0[_wgslsmith_index_u32(abs(~countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 9939u), vec3<u32>(4294967295u, 4294967295u, 4786u)))), 21u)];
}

fn func_1(arg_0: vec4<f32>, arg_1: u32) -> Struct_1 {
    global1 = array<f32, 29>();
    let var_0 = Struct_1(-2177i, vec3<i32>(-40138i, _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a.x, -u_input.a.x), _wgslsmith_clamp_i32(u_input.a.x, 1i, ~u_input.a.x)), (u_input.a.x & ~(-1i)) << (~_wgslsmith_mod_u32(arg_1, arg_1) % 32u)), any(func_2(Struct_1(~0i, abs(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)), false, -432f, _wgslsmith_f_op_vec3_f32(abs(arg_0.zyw))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1[_wgslsmith_index_u32(arg_1, 29u)], -902f, 490f), vec3<f32>(global1[_wgslsmith_index_u32(26154u, 29u)], arg_0.x, global1[_wgslsmith_index_u32(1u, 29u)])))))), arg_0.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(178f, _wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_div_f32(959f, global1[_wgslsmith_index_u32(35830u, 29u)])), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_0.yyy + arg_0.xyy), arg_0.wxz, func_2(Struct_1(10845i, vec3<i32>(11686i, u_input.a.x, u_input.a.x), false, -418f, vec3<f32>(global1[_wgslsmith_index_u32(arg_1, 29u)], -2676f, -2156f)), arg_0.zzz))))), vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1 << (arg_1 % 32u), 29u)]), -1000f, -1040f), global0[_wgslsmith_index_u32(9880u, 21u)])));
    let var_1 = -1i;
    var var_2 = true;
    var var_3 = ~((~firstTrailingBit(vec4<u32>(0u, 4294967295u, 4259u, 94579u)) >> (~vec4<u32>(48519u, arg_1, 1u, arg_1) % vec4<u32>(32u))) << (~_wgslsmith_div_vec4_u32(vec4<u32>(20597u, 0u, 35348u, arg_1), vec4<u32>(28089u, arg_1, 1u, arg_1)) % vec4<u32>(32u)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(1u, 29u)], -288f, -289f, global1[_wgslsmith_index_u32(7926u, 29u)]) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(0u, 29u)], 2011f, global1[_wgslsmith_index_u32(44571u, 29u)], -799f))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -718f) + -934f), _wgslsmith_f_op_f32(select(-708f, _wgslsmith_f_op_f32(1000f * -761f), any(vec2<bool>(false, false)))), -897f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -121f) + global1[_wgslsmith_index_u32(1u, 29u)]))), firstLeadingBit(4294967295u));
    var var_1 = var_0;
    let var_2 = var_0;
    var var_3 = var_0.c;
    var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(13327u), _wgslsmith_mult_vec2_i32(vec2<i32>(var_2.b.x ^ 43997i, _wgslsmith_sub_i32(var_1.a, var_1.a)) & (var_2.b.yy | vec2<i32>(-2147483647i, var_2.a)), ~countOneBits(u_input.a.wy) | ~_wgslsmith_div_vec2_i32(var_1.b.yy, var_0.b.zz)), firstLeadingBit(u_input.a.x));
}

