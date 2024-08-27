struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<bool>(true, false, true), false);

var<private> global1: f32 = 1000f;

var<private> global2: array<vec2<bool>, 12> = array<vec2<bool>, 12>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global3: array<Struct_2, 29>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2() -> f32 {
    let var_0 = Struct_3(global0.a, -2147483647i > select(reverseBits(-2147483647i), 0i, !global0.b));
    var var_1 = !(!(!var_0.a.yz));
    global3 = array<Struct_2, 29>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-585f, -1478f, 392f, 279f) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(789f, 1102f, -140f, -1430f), vec4<f32>(-378f, 1962f, 840f, -537f)))))));
    global2 = array<vec2<bool>, 12>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-208f * _wgslsmith_f_op_f32(f32(-1f) * -879f))), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(152f - _wgslsmith_f_op_f32(-var_2.x))))) * -1247f);
}

fn func_3(arg_0: i32, arg_1: vec2<i32>) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1704f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-262f + 2130f), 249f))));
}

fn func_1(arg_0: Struct_2) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), arg_0.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -1463f), _wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_vec2_f32(-arg_0.d), _wgslsmith_f_op_vec2_f32(func_3(arg_0.e.a.x, arg_0.e.a)), Struct_1(-_wgslsmith_div_vec2_i32(arg_0.e.a, vec2<i32>(2147483647i, arg_0.e.a.x)), _wgslsmith_add_u32(abs(reverseBits(7677u)), _wgslsmith_mod_u32(~u_input.a.x, arg_0.e.c.x)), arg_0.e.c & ((arg_0.e.c << (vec2<u32>(arg_0.e.c.x, arg_0.e.b) % vec2<u32>(32u))) >> (~arg_0.e.c % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.e.d - arg_0.e.d) * _wgslsmith_div_vec4_f32(vec4<f32>(-1337f, arg_0.d.x, 723f, arg_0.a), arg_0.e.d)))));
    global2 = array<vec2<bool>, 12>();
    var_0 = global3[_wgslsmith_index_u32(1u, 29u)];
    return arg_0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 12>();
    var var_0 = true;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global3[_wgslsmith_index_u32(1u, 29u)])) - -2095f) * -1000f) - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-657f, -576f), _wgslsmith_f_op_f32(ceil(-1000f))), 1299f)), _wgslsmith_f_op_f32(432f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -915f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1067f - 699f) - -2648f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(349f - 1233f), -2334f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3(10436i, vec2<i32>(-10703i, 1i))).x, -3544f) - vec2<f32>(_wgslsmith_f_op_f32(abs(698f)), -237f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(206f + 790f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(Struct_2(895f, -522f, vec2<f32>(1311f, 694f), vec2<f32>(1148f, 101f), Struct_1(vec2<i32>(6556i, -2147483647i), 18558u, vec2<u32>(38128u, 1u), vec4<f32>(-1274f, 895f, -1428f, 1020f)))))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1931f)) * 1f), -937f))), Struct_1(~select(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(-45492i, -10810i), vec2<i32>(0i, 1i)), vec2<i32>(1i, 1i), global0.a.x), _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a.x, u_input.a.x) & vec2<u32>(u_input.a.x, 57511u), ~vec2<u32>(2269u, 296u), vec2<bool>(global0.a.x, true)), vec2<u32>(1u, 26530u)), ~(~u_input.a.zz), vec4<f32>(-230f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -649f), _wgslsmith_f_op_f32(-409f * 304f), all(vec4<bool>(global0.b, global0.b, false, false)))), _wgslsmith_f_op_f32(-1471f + _wgslsmith_f_op_f32(f32(-1f) * -1029f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1104f + -909f)))));
    global1 = 1000f;
    global2 = array<vec2<bool>, 12>();
    let var_2 = vec4<u32>(11729u | _wgslsmith_div_u32(max(84168u, _wgslsmith_div_u32(u_input.a.x, 3769u)), 22930u), ~(var_1.e.c.x >> (var_1.e.b % 32u)), _wgslsmith_mod_u32(14690u, 1u), ~var_1.e.c.x);
    var var_3 = ~vec4<i32>(abs(var_1.e.a.x ^ 57153i), abs(2147483647i), 0i, -select(-421i & var_1.e.a.x, 21822i, true));
    var_1 = Struct_2(-1000f, 1155f, vec2<f32>(_wgslsmith_f_op_f32(var_1.a - -1442f), -113f), _wgslsmith_f_op_vec2_f32(-var_1.e.d.xw), var_1.e);
    var var_4 = vec3<f32>(1429f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-var_1.a))) * _wgslsmith_f_op_f32(-var_1.a)), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(-select(var_3.yzx, _wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(var_3.x, var_3.x, var_3.x)), var_3.wxw, vec3<i32>(var_3.x, -38919i, -38465i)), all(!vec4<bool>(true, global0.b, true, true))), vec3<f32>(_wgslsmith_f_op_f32(833f - 503f), _wgslsmith_f_op_f32(692f - _wgslsmith_f_op_f32(ceil(-780f))), var_1.b), 1u, vec3<i32>(var_3.x, var_3.x, -88300i >> (var_1.e.c.x % 32u)) | -_wgslsmith_add_vec3_i32(var_3.xwz | vec3<i32>(-39085i, var_3.x, var_3.x), ~vec3<i32>(14263i, var_1.e.a.x, var_1.e.a.x)));
}

