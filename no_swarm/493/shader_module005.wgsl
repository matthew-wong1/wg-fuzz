struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-2260f, -517f, 721f);

var<private> global1: array<i32, 20> = array<i32, 20>(2147483647i, -1i, -1563i, -24094i, -18258i, -24737i, 21600i, 2147483647i, 0i, -44280i, 19949i, 44489i, 25591i, 0i, 1i, 2147483647i, -67821i, 35905i, -39516i, -28711i);

var<private> global2: array<f32, 16> = array<f32, 16>(705f, -115f, 576f, -2380f, 202f, 523f, -646f, 217f, -1904f, -805f, -707f, -1000f, 956f, -270f, -926f, -2167f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-498f, global2[_wgslsmith_index_u32(u_input.a.x, 16u)], global0.x, global0.x) * vec4<f32>(-1194f, global0.x, global0.x, 1246f))))))));
    var_0 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), 404f, -1586f);
    let var_1 = _wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(u_input.a.x, max(u_input.a.x, ~u_input.a.x)) & u_input.a.zx);
    global1 = array<i32, 20>();
    global2 = array<f32, 16>();
    return global2[_wgslsmith_index_u32(30970u, 16u)];
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: bool, arg_3: f32) -> vec3<f32> {
    let var_0 = vec2<bool>(arg_2, all(vec2<bool>(select(arg_2, false, arg_2), false)));
    global2 = array<f32, 16>();
    let var_1 = -119f;
    var var_2 = Struct_2(Struct_1(any(vec3<bool>(false & arg_2, all(vec3<bool>(true, false, arg_2)), false)), ~_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, u_input.b.x, arg_1)), var_0, 0i);
    global2 = array<f32, 16>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), -232f, -688f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(select(global0.x, global2[_wgslsmith_index_u32(u_input.a.x, 16u)], var_0.x)), _wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(max(arg_0.x, global2[_wgslsmith_index_u32(1u, 16u)]))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-908f, -173f, global2[_wgslsmith_index_u32(u_input.a.x, 16u)]) + vec3<f32>(804f, 769f, global0.x)), vec3<f32>(global2[_wgslsmith_index_u32(59701u, 16u)], var_1, arg_0.x))), select(!vec3<bool>(true, var_2.a.a, true), !vec3<bool>(var_2.a.a, var_0.x, false), select(vec3<bool>(var_2.b.x, var_2.b.x, var_2.b.x), vec3<bool>(var_2.a.a, true, false), vec3<bool>(false, false, var_2.a.a))))), true)));
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_3 {
    var var_0 = Struct_2(Struct_1((select(arg_1, arg_1, arg_1) != arg_1) || any(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1))), select(-71888i, ~_wgslsmith_sub_i32(-1i, global1[_wgslsmith_index_u32(50472u, 20u)]), false)), !vec2<bool>(-u_input.b.x != _wgslsmith_add_i32(-1i, -1i), true), -_wgslsmith_dot_vec2_i32(u_input.c.xx, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c.x, global1[_wgslsmith_index_u32(89015u, 20u)]), u_input.b.xz, vec2<i32>(u_input.c.x, 10640i))) & -2147483647i);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(870f, global0.x, -274f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 16u)], -310f, -187f) + vec3<f32>(791f, -467f, -632f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1548f, 1109f, -960f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(533f, arg_0, 553f), vec3<f32>(-107f, -660f, global0.x))) - vec3<f32>(global0.x, 118f, global2[_wgslsmith_index_u32(1u, 16u)])) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1323f, global0.x))))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -963f, global2[_wgslsmith_index_u32(u_input.a.x, 16u)]))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3(global0.zz, var_0.a.b, arg_1, 159f))))))));
    global2 = array<f32, 16>();
    global2 = array<f32, 16>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-689f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-837f * -1756f))), 1501f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(820f * arg_0), 1389f, true))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -653f, arg_0, -1224f) - vec4<f32>(1632f, global2[_wgslsmith_index_u32(u_input.a.x, 16u)], arg_0, -418f)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(436f, var_1.x, 610f, 288f))), vec4<bool>(all(vec3<bool>(false, false, var_0.b.x)), !arg_1, true, any(vec2<bool>(var_0.a.a, false))))))));
    return Struct_3(arg_1);
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_3) -> i32 {
    global1 = array<i32, 20>();
    var var_0 = -592f;
    global1 = array<i32, 20>();
    let var_1 = func_2(_wgslsmith_f_op_f32(step(-1993f, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(11643u, 103614u, u_input.a.x), ~arg_1.xww) & u_input.a.x, 16u)])), any(!vec3<bool>(!arg_2.a, !arg_2.a, arg_2.a)));
    var var_2 = global0.xz;
    return -(~(-abs(global1[_wgslsmith_index_u32(u_input.a.x, 20u)] ^ 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 20u)] ^ -_wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], -37561i), -11841i & global1[_wgslsmith_index_u32(1u, 20u)]), min(2147483647i, -16311i) << (_wgslsmith_mult_u32(13009u, u_input.a.x) % 32u));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 16u)]), global2[_wgslsmith_index_u32(u_input.a.x, 16u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-1i))));
    let var_2 = (vec4<i32>(global1[_wgslsmith_index_u32(1u, 20u)], -1i << (0u % 32u), func_4(~u_input.a.x, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 42975u, u_input.a.x, 1u), vec4<u32>(0u, u_input.a.x, u_input.a.x, 4010u)), func_2(var_1.x, true)), _wgslsmith_mod_i32(u_input.b.x, 49000i) & 36221i) & vec4<i32>(-(i32(-1i) * -1i), u_input.c.x, 0i, -20488i)) << (_wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.a.x, 59413u >> (u_input.a.x % 32u), ~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(44610u, 4294967295u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 22740u, 1u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), vec4<u32>(1u, u_input.a.x, u_input.a.x, 20812u)) | abs(vec4<u32>(103435u, 0u, 4294967295u, 87823u)), false), vec4<u32>(~firstTrailingBit(0u), ~u_input.a.x, u_input.a.x, ~abs(4294967295u))) % vec4<u32>(32u));
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(430f, var_1.x, 129f)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -949f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -758f)), 2202f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-268f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(303f, 948f, true)) - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(775f - global0.x)))));
    let var_3 = Struct_2(Struct_1(!(-1000f <= _wgslsmith_f_op_f32(global0.x + -2553f)), -1i), !select(vec2<bool>(select(true, true, false), true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), true), -16273i);
    global2 = array<f32, 16>();
    global2 = array<f32, 16>();
    var var_4 = Struct_2(Struct_1(select(!var_3.a.a, var_3.b.x, true), var_2.x), select(select(select(!var_3.b, !var_3.b, vec2<bool>(true, false)), select(var_3.b, var_3.b, !var_3.b.x), false), vec2<bool>((20188u << (0u % 32u)) < u_input.a.x, all(vec3<bool>(true, var_3.a.a, true))), u_input.a.x == firstLeadingBit(u_input.a.x)), countOneBits(0i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-global0.x)), ~u_input.a.xz, vec3<u32>(u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a.x, 40478u) >> ((u_input.a.x ^ u_input.a.x) % 32u), (u_input.a.x ^ 1u) << (_wgslsmith_add_u32(51374u, 46870u) % 32u)), u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(1779i))), u_input.b.x);
}

