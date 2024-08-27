struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<u32>,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: Struct_1 = Struct_1(false, vec3<bool>(false, false, true), vec2<u32>(1u, 0u), 4294967295u, vec4<f32>(979f, -872f, 104f, 3826f));

var<private> global2: array<vec3<bool>, 32> = array<vec3<bool>, 32>(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false));

var<private> global3: u32;

var<private> global4: array<Struct_1, 8>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec2<bool>) -> vec2<f32> {
    let var_0 = _wgslsmith_add_vec3_u32(u_input.a.wyy, vec3<u32>(~(~(~u_input.a.x)), 1u, firstTrailingBit(u_input.c)));
    global1 = global4[_wgslsmith_index_u32(select(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_0.zy, max(var_0.yz, u_input.a.zy) | vec2<u32>(global1.c.x, 51863u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(global1.d, 1u) | u_input.d, var_0.xy << (var_0.yx % vec2<u32>(32u)))), 31491u, select(any(select(select(vec4<bool>(arg_0.x, false, true, global1.a), vec4<bool>(true, global1.a, false, true), vec4<bool>(global1.a, false, arg_0.x, true)), vec4<bool>(global1.b.x, false, global1.b.x, true), vec4<bool>(true, global1.b.x, false, global1.b.x))), true, global1.b.x)), 8u)];
    let var_1 = _wgslsmith_mod_u32(var_0.x, global1.c.x);
    var var_2 = 87656u << (max(_wgslsmith_div_u32(31159u, global1.c.x), ~1u) % 32u);
    let var_3 = ~select(u_input.a, firstTrailingBit(abs(countOneBits(u_input.a))), any(vec4<bool>(false, !arg_0.x, global1.b.x & true, !arg_0.x)));
    return global1.e.zz;
}

fn func_2(arg_0: vec3<u32>) -> bool {
    global4 = array<Struct_1, 8>();
    let var_0 = arg_0.x >> (arg_0.x % 32u);
    global3 = ~(~(~(3007u ^ arg_0.x)));
    var var_1 = global0[_wgslsmith_index_u32(4294967295u, 14u)];
    let var_2 = vec3<i32>(~1i, -5852i, _wgslsmith_clamp_i32(~1i, -24313i, u_input.b.x));
    return false;
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: bool, arg_3: vec2<i32>) -> Struct_1 {
    global1 = Struct_1(arg_2, select(!(!vec3<bool>(true, true, global1.a)), select(vec3<bool>(global1.b.x, func_2(vec3<u32>(global1.d, 1u, u_input.c)), arg_2), vec3<bool>(all(vec3<bool>(false, global1.b.x, arg_2)), true, arg_2), vec3<bool>(true, true, true)), select(!select(vec3<bool>(true, arg_2, false), vec3<bool>(arg_2, true, true), global2[_wgslsmith_index_u32(4294967295u, 32u)]), !select(vec3<bool>(arg_2, global1.b.x, arg_2), global2[_wgslsmith_index_u32(global1.c.x, 32u)], arg_2), func_2(u_input.a.www | u_input.a.wxz))), global1.c, select(_wgslsmith_dot_vec3_u32(select(~vec3<u32>(1u, u_input.c, global1.c.x), ~vec3<u32>(1u, 14394u, 62449u), global2[_wgslsmith_index_u32(1u, 32u)]), ~u_input.a.yyx), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 0u, 11676u) | vec3<u32>(0u, 1u, 1u), vec3<u32>(1u, global1.d, global1.c.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, global1.c.x, 40278u, 105u), vec4<u32>(global1.d, 1u, 0u, 7696u)), u_input.a)), all(!vec4<bool>(global1.a, false, true, true))), global1.e);
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(global1.e.x + _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_vec2_f32(func_1(!select(vec2<bool>(false, false), vec2<bool>(arg_2, arg_2), true))).x) + global1.e.wx);
    let var_1 = Struct_1(arg_2 | (_wgslsmith_f_op_f32(global1.e.x + _wgslsmith_f_op_f32(-1356f * arg_1)) == arg_1), vec3<bool>(true, !(!select(arg_2, arg_2, false)), arg_2 && true), vec2<u32>(~_wgslsmith_mod_u32(4294967295u, u_input.c ^ 63543u), ~_wgslsmith_sub_u32(0u, global1.d) & abs(_wgslsmith_sub_u32(70126u, u_input.a.x))), global1.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.e) * vec4<f32>(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-1000f * arg_0))), _wgslsmith_f_op_f32(f32(-1f) * -1750f), _wgslsmith_f_op_f32(min(arg_0, 342f)), global1.e.x)));
    global2 = array<vec3<bool>, 32>();
    return global4[_wgslsmith_index_u32(~0u, 8u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.c;
    let var_1 = global1.e.x;
    global2 = array<vec3<bool>, 32>();
    var_0 = u_input.a.xw;
    global3 = min(1u, var_0.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(round(global1.e.x)), -707f), vec2<f32>(-480f, 557f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(global1.b.yz)) + _wgslsmith_f_op_vec2_f32(-global1.e.zy)))) + _wgslsmith_div_vec2_f32(global1.e.yx, vec2<f32>(-1074f, global1.e.x)));
    let var_3 = global0[_wgslsmith_index_u32(u_input.a.x, 14u)];
    global1 = func_3(155f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(178f, 838f)), 1314f)))), func_2(vec3<u32>(global1.d, max(3268u, var_0.x), max(global1.c.x, _wgslsmith_sub_u32(global1.d, var_3.d)))), u_input.b.xx);
    var var_4 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_3.c.x, func_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(608f, _wgslsmith_f_op_f32(trunc(569f))) - _wgslsmith_f_op_f32(-var_3.e.x)), -1330f, true, _wgslsmith_sub_vec2_i32((u_input.b.xx ^ vec2<i32>(6783i, 3088i)) & u_input.b.xz, vec2<i32>(~(-18117i), u_input.b.x))).d), 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_4.e, _wgslsmith_f_op_vec4_f32(trunc(var_4.e))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3.e - vec4<f32>(global1.e.x, global1.e.x, 364f, var_4.e.x))))), ~_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(~u_input.b.wyy, abs(u_input.b.wyw)), u_input.b.wzy), vec4<f32>(_wgslsmith_f_op_f32(-global1.e.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_4.e.x * _wgslsmith_div_f32(130f, -872f)), global1.e.x, true != (global1.b.x != false))), _wgslsmith_f_op_f32(-627f + global1.e.x), var_2.x), ~1u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e.x)), var_2.x));
}

