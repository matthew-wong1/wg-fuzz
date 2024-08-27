struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<i32>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: vec4<bool>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -107f;

var<private> global1: array<Struct_3, 24>;

var<private> global2: u32 = 122319u;

var<private> global3: array<f32, 14> = array<f32, 14>(-1000f, 341f, 329f, 1286f, -1000f, 1909f, 1192f, -765f, 1000f, -1000f, -989f, 1218f, -2087f, 1074f);

var<private> global4: array<vec3<u32>, 13>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    let var_0 = -(reverseBits(_wgslsmith_sub_i32(1i, u_input.e << (u_input.b.x % 32u))) & u_input.e);
    let var_1 = ~_wgslsmith_add_u32(u_input.b.x, u_input.b.x);
    var var_2 = vec2<i32>(_wgslsmith_mod_i32(countOneBits(_wgslsmith_div_i32(var_0 ^ u_input.c, max(40164i, -4775i))), _wgslsmith_add_i32(countOneBits(u_input.e), ~_wgslsmith_sub_i32(var_0, 0i))), -27100i);
    let var_3 = Struct_2(global4[_wgslsmith_index_u32(u_input.b.x, 13u)], Struct_1(37103i, select(u_input.b.x, 19890u, u_input.b.x >= 3091u)), vec3<i32>(-1i, -27824i, _wgslsmith_dot_vec4_i32(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, u_input.d, 0i, var_2.x), vec4<i32>(10774i, 908i, u_input.d, 2147483647i), vec4<i32>(var_2.x, 2147483647i, var_0, -714i)), vec4<i32>(var_0, 11274i, u_input.e, var_2.x), vec4<bool>(true, true, true, true)), firstTrailingBit(vec4<i32>(8171i, u_input.a, var_2.x, -28394i)))), vec2<u32>(~(var_1 << (min(var_1, u_input.b.x) % 32u)), 4294967295u >> ((1u ^ _wgslsmith_add_u32(u_input.b.x, var_1)) % 32u)), true);
    let var_4 = select(~var_3.a, ~vec3<u32>(var_3.b.b, ~countOneBits(u_input.b.x), _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b.x, var_1), 4294967295u)), false);
    return false;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2) -> i32 {
    var var_0 = Struct_4(u_input.a, !vec2<bool>(func_3(), any(vec4<bool>(true, arg_1.e, true, arg_1.e))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.b, min(~vec4<u32>(4294967295u, arg_0.x, u_input.b.x, arg_0.x), ~vec4<u32>(89518u, 65221u, 13280u, u_input.b.x))), countOneBits(vec4<u32>(u_input.b.x, arg_1.a.x, 0u, 4294967295u)) ^ vec4<u32>(abs(arg_1.a.x), arg_0.x << (u_input.b.x % 32u), _wgslsmith_mod_u32(arg_0.x, arg_0.x), 4294967295u), u_input.b), _wgslsmith_add_vec3_u32(abs(~(global4[_wgslsmith_index_u32(arg_0.x, 13u)] & u_input.b.zyw)), ~min(vec3<u32>(29970u, 1u, u_input.b.x), global4[_wgslsmith_index_u32(countOneBits(arg_0.x), 13u)])));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 14u)] - global3[_wgslsmith_index_u32(20048u, 14u)]));
    let var_1 = ~(~select(~arg_0.x, max(select(u_input.b.x, arg_1.d.x, var_0.b.x), 1u), true | any(vec3<bool>(false, var_0.b.x, false))));
    global1 = array<Struct_3, 24>();
    let var_2 = vec4<bool>(var_0.b.x && (global3[_wgslsmith_index_u32(~(~8721u), 14u)] == global3[_wgslsmith_index_u32(abs(30443u), 14u)]), !(!(!var_0.b.x) & true), false, arg_1.e);
    return 28536i;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = abs(-32224i);
    var var_1 = !select(!vec2<bool>(!arg_0.e, 4294967295u > u_input.b.x), select(!vec2<bool>(false, arg_0.e), !select(arg_1.c.yw, arg_1.c.xz, false), arg_0.e), arg_1.a);
    let var_2 = all(vec2<bool>(true, true));
    global0 = arg_1.b;
    var var_3 = _wgslsmith_mult_u32(~4294967295u, ~u_input.b.x) & 6691u;
    return arg_0.b;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = u_input.e;
    global3 = array<f32, 14>();
    global1 = array<Struct_3, 24>();
    var var_1 = vec3<i32>(var_0, -select(var_0, -18593i, u_input.b.x >= u_input.b.x), 2147483647i) ^ ~reverseBits(firstTrailingBit(vec3<i32>(arg_1.x, 66233i, arg_1.x)));
    let var_2 = u_input.b.zw;
    return func_4(Struct_2(countOneBits(_wgslsmith_add_vec3_u32(u_input.b.xyw ^ u_input.b.xzy, vec3<u32>(u_input.b.x, 26731u, 54266u))), Struct_1(_wgslsmith_add_i32(~arg_1.x, 0i), abs(~var_2.x)), vec3<i32>(-2147483647i, func_2(u_input.b.xw << (u_input.b.xz % vec2<u32>(32u)), Struct_2(vec3<u32>(var_2.x, 1u, var_2.x), Struct_1(var_1.x, var_2.x), vec3<i32>(-5877i, 2147483647i, -33537i), vec2<u32>(var_2.x, 4294967295u), arg_2.x)), -u_input.d), u_input.b.zy, arg_2.x), global1[_wgslsmith_index_u32(var_2.x, 24u)], _wgslsmith_mult_vec3_u32(global4[_wgslsmith_index_u32(1u, 13u)], global4[_wgslsmith_index_u32(~u_input.b.x, 13u)]));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_1 {
    global2 = ~arg_0.d.x;
    global4 = array<vec3<u32>, 13>();
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)) - global3[_wgslsmith_index_u32(arg_0.a.x, 14u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_1.zz), arg_1.zy)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global3[_wgslsmith_index_u32(78007u, 14u)], 997f), vec2<f32>(-267f, -991f))))));
    let var_1 = arg_0.e;
    global3 = array<f32, 14>();
    return func_4(arg_0, Struct_3(select(vec2<bool>(arg_0.e, arg_0.e), !select(vec2<bool>(true, true), vec2<bool>(arg_0.e, var_1), vec2<bool>(false, var_1)), vec2<bool>(false | var_1, false)), global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(arg_0.d >> (vec2<u32>(1u, 0u) % vec2<u32>(32u)), u_input.b.wz), 14u)], vec4<bool>(var_1, all(vec4<bool>(var_1, true, false, arg_0.e)), !var_1, (u_input.b.x << (arg_0.b.b % 32u)) == arg_0.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-400f))), -(~(vec4<i32>(-54033i, -70589i, -35382i, arg_0.c.x) | vec4<i32>(6629i, u_input.e, -2147483647i, u_input.d)))), vec3<u32>(max(~countOneBits(37770u), arg_0.d.x), max(67957u, 4294967295u), ~max(u_input.b.x, _wgslsmith_clamp_u32(4294967295u, arg_0.d.x, 21452u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a, -2147483647i), -(_wgslsmith_add_i32(46438i, u_input.c) | u_input.e)), -(abs(-1i) & u_input.c), _wgslsmith_div_i32(-u_input.e, 21331i));
    var var_1 = func_5(Struct_2(vec3<u32>(1u, 1u, 1u) >> (global4[_wgslsmith_index_u32(1u, 13u)] % vec3<u32>(32u)), func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1888f, 1957f, 684f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1624f, global3[_wgslsmith_index_u32(4294967295u, 14u)], global3[_wgslsmith_index_u32(u_input.b.x, 14u)]))), vec2<i32>(-1i, -u_input.c), vec2<bool>(false, true)), vec3<i32>(-countOneBits(u_input.c), ~(-1i), 1i), ~_wgslsmith_mult_vec2_u32(u_input.b.ww, u_input.b.yx), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(0u & u_input.b.x, 14u)], _wgslsmith_f_op_f32(sign(1354f)), -1362f))));
    global4 = array<vec3<u32>, 13>();
    var var_2 = var_0.yy;
    global1 = array<Struct_3, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(-503f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(165f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-467f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 14u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1393f * _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(u_input.b.x, 14u)])))) - 2164f), ~var_2.x, u_input.b & vec4<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(u_input.b | vec4<u32>(var_1.b, 35660u, u_input.b.x, u_input.b.x), u_input.b), reverseBits(u_input.b.x), 4294967295u));
}

